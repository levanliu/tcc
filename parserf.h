#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "lexerf.h"

#ifndef PARSER_H_
#define PARSER_H_

typedef struct Node{
  char *value;
  TokenType type;
  struct Node *right;
  struct Node *left;
} Node;

Node *parser(Token *tokens);
void print_tree(Node *node, int indent, char *identifier);
Node *init_node(Node *node, char *value, TokenType type);
void print_error(char *error_type, size_t line_number);

#endif
