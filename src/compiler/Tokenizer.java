package compiler;

enum TokenType {
    operator, keyword, T_BOOLEANLITERAL, T_ID, T_STRINGLITERAL, T_INTLITERAL, T_DOUBLELITERAL
}


public class Tokenizer {
    private String token;
    private TokenType type;
    public Tokenizer(String token, TokenType type) {
        this.token = token;
        this.type = type;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public TokenType getType() {
        return type;
    }

    public void setType(TokenType type) {
        this.type = type;
    }
}