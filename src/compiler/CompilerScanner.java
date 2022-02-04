package compiler;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CompilerScanner {
    private List<Tokenizer> tokensList;

    private static String[] keywords = {
            "__func__", "__line__", "bool", "break", "btoi", "class", "continue", "define", "double", "dtoi", "else", "for",
            "if", "import", "int", "itob", "itod", "new", "NewArray", "null", "Print", "private", "public", "ReadInteger",
            "ReadLine", "return", "string", "this", "void", "while"
    };
    private static String[] singleOperators = {
            "+", "*", "/", "%", "<", ">", "=", "!", ";", ",", "[", "]", "(", ")", "{", "}", "-", ".",
    };
    private static String[] multipleOperators = {
            "<=", ">=", "+=", "-=", "*=", "/=", "==", "!=", "&&", "||"
    };

    public CompilerScanner() {
        tokensList = new ArrayList<Tokenizer>();
    }

    private void addNewWordToOutPut(String word, TokenType typeInterface) {
        Tokenizer tokenizer = new Tokenizer(word, typeInterface);
        tokensList.add(tokenizer);
    }

    private TokenType getPrimitiveType(String word) {
        if (Arrays.asList(keywords).contains(word))
            return TokenType.keyword;
        if (word.matches("\".*\""))
            return TokenType.T_STRINGLITERAL;
        if (word.matches("(^(0x|0X).*)|(-?\\d+)"))
            return TokenType.T_INTLITERAL;
        if (word.matches("-?\\d+\\.\\d*([Ee]([+\\-])?\\d+)?")) {
            return TokenType.T_DOUBLELITERAL;
        }
        switch (word) {
            case "true":
                return TokenType.T_BOOLEANLITERAL;
            case "false":
                return TokenType.T_BOOLEANLITERAL;
            case "\"":
                return TokenType.operator;
            default:
                return TokenType.T_ID;
        }
    }

    public List<Tokenizer> getTokensList(String[] lines) {
        boolean hasMultiComment = false;
        for (String line : lines) {
            String currentWord = "";
            boolean hasQuotation = false;
            for (int charIndex = 0; charIndex < line.length(); charIndex++) {
                String currentChar = Character.toString(line.charAt(charIndex));
                // handle comment below
                if (hasMultiComment) {
                    if (currentChar.equals("*") && charIndex < line.length() - 1 && line.charAt(charIndex + 1) == '/') {
                        hasMultiComment = false;
                        charIndex++;
                        continue;
                    } else {
                        continue;
                    }
                }
                if (!hasQuotation && currentChar.equals("/")) {
                    if (charIndex < line.length() - 1 && line.charAt(charIndex + 1) == '/') break;
                    if (charIndex < line.length() - 1 && line.charAt(charIndex + 1) == '*') {
                        hasMultiComment = true;
                        continue;
                    }
                }
                //handle quotation below
                if (currentChar.equals("\"")) {
                    if (charIndex != 0 && line.charAt(charIndex - 1) == '\\')
                        currentWord = currentWord.concat(currentChar);
                    else if (hasQuotation) {
                        addNewWordToOutPut(currentWord + currentChar, getPrimitiveType(currentWord + currentChar));
                        hasQuotation = false;
                        currentWord = "";
                    } else {
                        if (line.matches(".*\".*\".*")) {
                            if (!hasQuotation && currentWord.length() > 0 && line.matches(".+\".*\".*")) {
                                addNewWordToOutPut(currentWord, getPrimitiveType(currentWord));
                                currentWord = "";
                            }
                            hasQuotation = !hasQuotation;
                            currentWord = currentWord.concat(currentChar);
                        } else {
                            if (currentWord.length() > 0) {
                                addNewWordToOutPut(currentWord, getPrimitiveType(currentWord));
                                currentWord = "";
                            }
                            addNewWordToOutPut(currentChar, getPrimitiveType(currentChar));
                        }
                    }
                } else if (currentWord.length() > 0 && currentWord.matches("\\d+") && currentChar.equals(".")) {
                    currentWord = currentWord.concat(currentChar);
                }
                // handle all white-space
                else if (currentChar.matches("\\s+") && !hasQuotation) {
                    if (currentWord.length() > 0) {
                        addNewWordToOutPut(currentWord, getPrimitiveType(currentWord));
                        currentWord = "";
                    }
                }
                //handle multiple operators
                else if (!hasQuotation && charIndex < line.length() - 1 && Arrays.asList(multipleOperators).contains(currentChar + line.charAt(charIndex + 1))) {
                    if (currentWord.length() > 0) {
                        addNewWordToOutPut(currentWord, getPrimitiveType(currentWord));
                        currentWord = "";
                    }
                    addNewWordToOutPut(currentChar + line.charAt(++charIndex), TokenType.operator);
                }
                // handle single operators
                else if (Arrays.asList(singleOperators).contains(currentChar) && !hasQuotation) {
                    if (charIndex != 0 && (currentChar.matches("[+\\-]")) && (line.charAt(charIndex - 1) == 'E' || line.charAt(charIndex - 1) == 'e')) {
                        // scientific symbol double
                        if (currentWord.matches("[Ee]")) {
                            addNewWordToOutPut(currentWord, getPrimitiveType(currentWord));
                            addNewWordToOutPut(currentChar, getPrimitiveType(currentChar));
                            currentWord = "";
                        } else {
                            currentWord = currentWord.concat(currentChar);
                        }
                    } else {
                        if (currentWord.length() > 0) {
                            addNewWordToOutPut(currentWord, getPrimitiveType(currentWord));
                            currentWord = "";
                        }
                        addNewWordToOutPut(currentChar, TokenType.operator);
                    }
                }
                // handle other character
                else {
                    if (currentWord.matches("0[Xx](\\d|[a-fA-F])+") && currentChar.matches("\\d|[a-fA-F]")) {
                    } else if (currentWord.matches("([1-9]+\\d*)|(0[Xx](\\d|[a-fA-F])+)|(\\d+\\.\\d*([Ee]([+\\-])?\\d+))") && currentChar.matches("\\D")) {
                        addNewWordToOutPut(currentWord, getPrimitiveType(currentWord));
                        currentWord = "";
                    } else if (currentWord.matches("0[Xx]") && !currentChar.matches("\\d|[a-fA-f]")) {
                        addNewWordToOutPut("0", getPrimitiveType("0"));
                        currentWord = currentWord.substring(1);
                    }
                    currentWord = currentWord.concat(currentChar);
                }
            }
            if (currentWord.length() > 0)
                addNewWordToOutPut(currentWord, getPrimitiveType(currentWord));

        }
        return tokensList;
    }
}