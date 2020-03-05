typedef enum {
  TK_RESERVED,
  TK_NUM,
  TK_EOF,
} TokenKind;

typedef struct Token Token;

struct Token {
  TokenKind kind;
  Token* next;
  int val;
  char *str;
  int len;
};

Token *token;

typedef enum {
  ND_ADD,
  ND_SUB,
  ND_MUL,
  ND_DIV,
  ND_EQ,
  ND_NUM
} NodeKind;

typedef struct Node Node;

struct Node {
  NodeKind kind;
  Node *lhs;
  Node *rhs;
  int val;
};

char* user_input;

Node *expr();
Node *equality();
Node *add();
Node *mul();
Node *unary();
Node *primary();

void error_at(char *loc, char *fmt, ...);
Token *tokenize();
void gen(Node *node);
