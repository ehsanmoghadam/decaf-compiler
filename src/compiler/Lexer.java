package compiler;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class Lexer {

    private final File inputFile;

    public Lexer(File inputFile){
        this.inputFile = inputFile;
    }

    public List<String> handle_define() throws Exception {
        Scanner scanner = new Scanner(this.inputFile);
        List<String> lines = new ArrayList<>();
        while (scanner.hasNextLine()) {
            lines.add(scanner.nextLine());
        }

        List<Define> defines = new ArrayList<>();
        Iterator<String> iterator = lines.iterator();
        while (iterator.hasNext()) {
            String line = iterator.next();
            line = line.trim();
            if (line.startsWith("define")) {
                line = line.replace("define", "");
                line = line.trim();
                if (!line.contains(" "))
                    continue;
                String first = line.substring(0, line.indexOf(" "));
                line = line.replaceFirst(first, "");
                line = line.trim();
                String second = line;
                defines.add(new Define(first, second));
                iterator.remove();
            }
            else if (!line.startsWith("import")){
                break;
            }
        }

        for (Define define : defines) {
            for (int i = 0; i < lines.size(); i++) {
                List<Integer> beginIndices = new ArrayList<>();
                if (lines.get(i).contains(define.getFirst())) {
                    int k = 0;
                    for (int j = 0; j < lines.get(i).length(); j++) {
                        if (j - k == define.getFirst().length() - 1) {
                            if (lines.get(i).substring(k, j + 1).equals(define.getFirst())) {
                                if (k > 0 &&
                                        j < lines.get(i).length() - 1&&
                                        !Character.isAlphabetic(lines.get(i).charAt(k - 1))&&
                                        !Character.isAlphabetic(lines.get(i).charAt(j + 1))) {
                                    beginIndices.add(k);
                                } else if (k == 0 && j < lines.get(i).length() - 1 &&
                                        !Character.isAlphabetic(lines.get(i).charAt(j + 1))) {
                                    beginIndices.add(k);
                                } else if (k > 0 && j == lines.get(i).length() - 1 &&
                                        !Character.isAlphabetic(lines.get(i).charAt(k - 1))){
                                    beginIndices.add(k);
                                }else if (k==0 &&j == lines.get(i).length() - 1){
                                    beginIndices.add(k);
                                }
                            }
                            k++;
                        }
                    }
                }
                lines.set(i,replace(beginIndices,lines.get(i),define.getFirst(),define.getSecond()));
            }
        }

        return lines;
    }


    public List<String> lexicalAnalysis() throws Exception{
        Scanner scanner = new Scanner(this.inputFile);
        List<String> lines = new ArrayList<>();
        while (scanner.hasNextLine()) {
            lines.add(scanner.nextLine());
        }
        // get all lines from test file code.

        List<Define> defines = new ArrayList<>();
        Iterator<String> iterator = lines.iterator();
        while (iterator.hasNext()) {
            String line = iterator.next();
            line = line.trim();
            if (line.startsWith("define")) {
                line = line.replace("define", "");
                line = line.trim();
                String first = line.substring(0, line.indexOf(" "));
                line = line.replaceFirst(first, "");
                line = line.trim();
                String second = line;
                defines.add(new Define(first, second));
                iterator.remove();
            }
        }
        //get all defines and delete their lines.


        String[] signs = {"+", "-", "*", "/", "%", "<", "=", ">", " ", "!", "'", "\"", "&", "|", ";", ",", ".", "[", "]", "(", ")", "{", "}"};
//        for (Define define : defines) {
//            for (int i = 0 ; i < lines.size(); i++) {
//                while (lines.get(i).contains(define.getFirst())) {
//                    String finalLine = lines.get(i);
//                    if ((finalLine.indexOf(define.getFirst()) > 0 &&
//                            Arrays.stream(signs)
//                                    .anyMatch(sing -> sing.equals(Character.toString(finalLine.charAt(finalLine.indexOf(define.getFirst()) - 1)))))||
//                            finalLine.indexOf(define.getFirst())==0) {
//                        if((finalLine.indexOf(define.getFirst())+define.getFirst().length()< finalLine.length()&&
//                                Arrays.stream(signs)
//                                        .anyMatch(sing -> sing.equals(Character.toString(finalLine.charAt(finalLine.indexOf(define.getFirst())+define.getFirst().length())))))||
//                                finalLine.indexOf(define.getFirst())+define.getFirst().length()==finalLine.length()){
//                            lines.set(i, finalLine.replace(define.getFirst(),define.getSecond()));
//                        }
//                    }
//                }
//            }
//        }

        for (Define define : defines) {
            for (int i = 0; i < lines.size(); i++) {
                List<Integer> beginIndices = new ArrayList<>();
                if (lines.get(i).contains(define.getFirst())) {
                    int k = 0;
                    for (int j = 0; j < lines.get(i).length(); j++) {
                        if (j - k == define.getFirst().length() - 1) {
                            if (lines.get(i).substring(k, j + 1).equals(define.getFirst())) {
                                if (k > 0 &&
                                        j < lines.get(i).length() - 1&&
                                        !Character.isAlphabetic(lines.get(i).charAt(k - 1))&&
                                        !Character.isAlphabetic(lines.get(i).charAt(j + 1))) {
                                    beginIndices.add(k);
                                } else if (k == 0 && j < lines.get(i).length() - 1 &&
                                        !Character.isAlphabetic(lines.get(i).charAt(j + 1))) {
                                    beginIndices.add(k);
                                } else if (k > 0 && j == lines.get(i).length() - 1 &&
                                        !Character.isAlphabetic(lines.get(i).charAt(k - 1))){
                                    beginIndices.add(k);
                                }else if (k==0 &&j == lines.get(i).length() - 1){
                                    beginIndices.add(k);
                                }
                            }
                            k++;
                        }
                    }
                }
                lines.set(i,replace(beginIndices,lines.get(i),define.getFirst(),define.getSecond()));
            }
        }


        List<Tokenizer> tokensList = new CompilerScanner().getTokensList(lines.toArray(String[]::new));


        List<String> result = new ArrayList<>();
        tokensList.forEach(tokenizer -> {
            String type = tokenizer.getType() == TokenType.keyword || tokenizer.getType() == TokenType.operator ? "" : (tokenizer.getType().toString() + " ");
            result.add(type + tokenizer.getToken());
        });
        return result;
    }

    public static String replace(List<Integer> beginIndices , String old , String repOld , String rep){
        if ( beginIndices.size()==0){
            return old;
        }
        String newStr = old;
        for (int i = beginIndices.size() - 1 ; i >=0 ; i--) {
            String left = newStr.substring(0,beginIndices.get(i));
            String right  = newStr.substring(beginIndices.get(i) + repOld.length());
            newStr = left + rep + right;
        }
        return newStr;
    }




    public static void main(String[] args) throws Exception {
        if (args.length < 4) {
            System.out.println("Usage: java Main -i <input> -o <output>");
            return;
        }
        String inputFileName = null;
        String outputFileName = null;
        if (args != null) {
            for (int i = 0; i < args.length; i++) {
                if (args[i].equals("-i")) {
                    inputFileName = args[i + 1];
                }
                if (args[i].equals("-o")) {
                    outputFileName = args[i + 1];
                }
            }
        }
        String outputPath = "out/" + outputFileName;
        createFile(outputPath);

        // Read the input file and write to the output file.

        String inputPath = "tests/" + inputFileName;

        File file = new File(inputPath);
        Scanner scanner = new Scanner(file);
        List<String> lines = new ArrayList<>();
        while (scanner.hasNextLine()) {
            lines.add(scanner.nextLine());
        }
        // get all lines from test file code.

        List<Define> defines = new ArrayList<>();
        Iterator<String> iterator = lines.iterator();
        while (iterator.hasNext()) {
            String line = iterator.next();
            line = line.trim();
            if (line.startsWith("define")) {
                line = line.replace("define", "");
                line = line.trim();
                String first = line.substring(0, line.indexOf(" "));
                line = line.replace(first, "");
                line = line.trim();
                String second = line;
                defines.add(new Define(first, second));
                iterator.remove();
            }
        }
        //get all defines and delete their lines.


        String[] signs = {"+", "-", "*", "/", "%", "<", "=", ">", " ", "!", "'", "\"", "&", "|", ";", ",", ".", "[", "]", "(", ")", "{", "}"};
        for (Define define : defines) {
            for (int i = 0 ; i < lines.size(); i++) {
                while (lines.get(i).contains(define.getFirst())) {
                    String finalLine = lines.get(i);
                    if ((finalLine.indexOf(define.getFirst()) > 0 &&
                            Arrays.stream(signs)
                                    .anyMatch(sing -> sing.equals(Character.toString(finalLine.charAt(finalLine.indexOf(define.getFirst()) - 1)))))||
                            finalLine.indexOf(define.getFirst())==0) {
                        if((finalLine.indexOf(define.getFirst())+define.getFirst().length()< finalLine.length()&&
                                Arrays.stream(signs)
                                        .anyMatch(sing -> sing.equals(Character.toString(finalLine.charAt(finalLine.indexOf(define.getFirst())+define.getFirst().length())))))||
                                finalLine.indexOf(define.getFirst())+define.getFirst().length()==finalLine.length()){
                            lines.set(i, finalLine.replace(define.getFirst(),define.getSecond()));
                        }
                    }
                }
            }
        }





        List<Tokenizer> tokensList = new CompilerScanner().getTokensList(lines.toArray(String[]::new));


        List<String> result = new ArrayList<>();
        tokensList.forEach(tokenizer -> {
            String type = tokenizer.getType() == TokenType.keyword || tokenizer.getType() == TokenType.operator ? "" : (tokenizer.getType().toString() + " ");
            result.add(type + tokenizer.getToken());
        });

        writeContentToFile(outputPath, result.toArray(String[]::new));
    }

    private static boolean createFile(String path) {
        File file = new File(path);
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static void writeContentToFile(String path, String[] lines) {
        try (FileWriter writer = new FileWriter(new File(path))) {
            String content = String.join("\n", lines);
            writer.write(content);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
