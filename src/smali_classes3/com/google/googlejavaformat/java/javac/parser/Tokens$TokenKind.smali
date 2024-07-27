.class public final enum Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;
.super Ljava/lang/Enum;
.source "Tokens.java"

# interfaces
.implements Lcom/sun/tools/javac/api/Formattable;
.implements Lcom/sun/tools/javac/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;",
        ">;",
        "Lcom/sun/tools/javac/api/Formattable;",
        "Lcom/sun/tools/javac/util/Filter",
        "<",
        "Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum ABSTRACT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum AMP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum AMPAMP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum AMPEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum ARROW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum ASSERT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum BANG:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum BANGEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum BAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum BARBAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum BAREQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum BOOLEAN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum BREAK:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum BYTE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CARET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CARETEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CASE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CATCH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CHAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CHARLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CLASS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum COLCOL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum COLON:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum COMMA:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CONST:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CONTINUE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum CUSTOM:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum DO:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum DOT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum DOUBLE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum DOUBLELITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum ELLIPSIS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum ELSE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum ENUM:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum EOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum EQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum EQEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum ERROR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum EXTENDS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum FALSE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum FINAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum FINALLY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum FLOAT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum FLOATLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum FOR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum GOTO:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum GT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum GTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum GTGT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum GTGTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum GTGTGT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum GTGTGTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum IDENTIFIER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum IF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum IMPLEMENTS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum IMPORT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum INSTANCEOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum INT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum INTERFACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum INTLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LONG:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LONGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LTLT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum LTLTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum MONKEYS_AT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum NATIVE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum NEW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum NULL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PACKAGE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PERCENT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PERCENTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PLUS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PLUSEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PLUSPLUS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PRIVATE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PROTECTED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum PUBLIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum QUES:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum RBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum RBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum RETURN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum RPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SEMI:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SHORT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SLASH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SLASHEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum STAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum STAREQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum STATIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum STRICTFP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum STRINGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SUB:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SUBEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SUBSUB:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SUPER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SWITCH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum SYNCHRONIZED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum THIS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum THROW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum THROWS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum TILDE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum TRANSIENT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum TRUE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum TRY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum UNDERSCORE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum VOID:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum VOLATILE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field public static final enum WHILE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;


# instance fields
.field public final name:Ljava/lang/String;

.field public final tag:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "EOF"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 117
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ERROR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 118
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "IDENTIFIER"

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 119
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "ABSTRACT"

    const-string v2, "abstract"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ABSTRACT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 120
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "ASSERT"

    const-string v2, "assert"

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ASSERT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 121
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x5

    const-string v3, "boolean"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BOOLEAN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 122
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "BREAK"

    const/4 v2, 0x6

    const-string v3, "break"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BREAK:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 123
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "BYTE"

    const/4 v2, 0x7

    const-string v3, "byte"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BYTE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 124
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CASE"

    const/16 v2, 0x8

    const-string v3, "case"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CASE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 125
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CATCH"

    const/16 v2, 0x9

    const-string v3, "catch"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CATCH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 126
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CHAR"

    const/16 v2, 0xa

    const-string v3, "char"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CHAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 127
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CLASS"

    const/16 v2, 0xb

    const-string v3, "class"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CLASS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 128
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CONST"

    const/16 v2, 0xc

    const-string v3, "const"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CONST:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 129
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CONTINUE"

    const/16 v2, 0xd

    const-string v3, "continue"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CONTINUE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 130
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "DEFAULT"

    const/16 v2, 0xe

    const-string v3, "default"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 131
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "DO"

    const/16 v2, 0xf

    const-string v3, "do"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DO:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 132
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "DOUBLE"

    const/16 v2, 0x10

    const-string v3, "double"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOUBLE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 133
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "ELSE"

    const/16 v2, 0x11

    const-string v3, "else"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ELSE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 134
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "ENUM"

    const/16 v2, 0x12

    const-string v3, "enum"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ENUM:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 135
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "EXTENDS"

    const/16 v2, 0x13

    const-string v3, "extends"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EXTENDS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 136
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "FINAL"

    const/16 v2, 0x14

    const-string v3, "final"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FINAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 137
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "FINALLY"

    const/16 v2, 0x15

    const-string v3, "finally"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FINALLY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 138
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "FLOAT"

    const/16 v2, 0x16

    const-string v3, "float"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FLOAT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 139
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "FOR"

    const/16 v2, 0x17

    const-string v3, "for"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FOR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 140
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "GOTO"

    const/16 v2, 0x18

    const-string v3, "goto"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GOTO:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 141
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "IF"

    const/16 v2, 0x19

    const-string v3, "if"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 142
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "IMPLEMENTS"

    const/16 v2, 0x1a

    const-string v3, "implements"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IMPLEMENTS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 143
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "IMPORT"

    const/16 v2, 0x1b

    const-string v3, "import"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IMPORT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 144
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "INSTANCEOF"

    const/16 v2, 0x1c

    const-string v3, "instanceof"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INSTANCEOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 145
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "INT"

    const/16 v2, 0x1d

    const-string v3, "int"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 146
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "INTERFACE"

    const/16 v2, 0x1e

    const-string v3, "interface"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INTERFACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 147
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LONG"

    const/16 v2, 0x1f

    const-string v3, "long"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LONG:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 148
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "NATIVE"

    const/16 v2, 0x20

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->NATIVE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 149
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "NEW"

    const/16 v2, 0x21

    const-string v3, "new"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->NEW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 150
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PACKAGE"

    const/16 v2, 0x22

    const-string v3, "package"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PACKAGE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 151
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PRIVATE"

    const/16 v2, 0x23

    const-string v3, "private"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PRIVATE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 152
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PROTECTED"

    const/16 v2, 0x24

    const-string v3, "protected"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PROTECTED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 153
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PUBLIC"

    const/16 v2, 0x25

    const-string v3, "public"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PUBLIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 154
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "RETURN"

    const/16 v2, 0x26

    const-string v3, "return"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RETURN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 155
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SHORT"

    const/16 v2, 0x27

    const-string v3, "short"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SHORT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 156
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "STATIC"

    const/16 v2, 0x28

    const-string v3, "static"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STATIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 157
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "STRICTFP"

    const/16 v2, 0x29

    const-string v3, "strictfp"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRICTFP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 158
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SUPER"

    const/16 v2, 0x2a

    const-string v3, "super"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SUPER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 159
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SWITCH"

    const/16 v2, 0x2b

    const-string v3, "switch"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SWITCH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 160
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SYNCHRONIZED"

    const/16 v2, 0x2c

    const-string v3, "synchronized"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SYNCHRONIZED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 161
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "THIS"

    const/16 v2, 0x2d

    const-string v3, "this"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->THIS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 162
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "THROW"

    const/16 v2, 0x2e

    const-string v3, "throw"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->THROW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 163
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "THROWS"

    const/16 v2, 0x2f

    const-string v3, "throws"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->THROWS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 164
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "TRANSIENT"

    const/16 v2, 0x30

    const-string v3, "transient"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TRANSIENT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 165
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "TRY"

    const/16 v2, 0x31

    const-string v3, "try"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TRY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 166
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "VOID"

    const/16 v2, 0x32

    const-string v3, "void"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->VOID:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 167
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "VOLATILE"

    const/16 v2, 0x33

    const-string v3, "volatile"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->VOLATILE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 168
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "WHILE"

    const/16 v2, 0x34

    const-string v3, "while"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->WHILE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 169
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "INTLITERAL"

    const/16 v2, 0x35

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INTLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 170
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LONGLITERAL"

    const/16 v2, 0x36

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LONGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 171
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "FLOATLITERAL"

    const/16 v2, 0x37

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FLOATLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 172
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "DOUBLELITERAL"

    const/16 v2, 0x38

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOUBLELITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 173
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CHARLITERAL"

    const/16 v2, 0x39

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CHARLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 174
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "STRINGLITERAL"

    const/16 v2, 0x3a

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->STRING:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 175
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "TRUE"

    const/16 v2, 0x3b

    const-string v3, "true"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TRUE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 176
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "FALSE"

    const/16 v2, 0x3c

    const-string v3, "false"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FALSE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 177
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "NULL"

    const/16 v2, 0x3d

    const-string v3, "null"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->NULL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 178
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "UNDERSCORE"

    const/16 v2, 0x3e

    const-string v3, "_"

    sget-object v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->UNDERSCORE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 179
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "ARROW"

    const/16 v2, 0x3f

    const-string v3, "->"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ARROW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 180
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "COLCOL"

    const/16 v2, 0x40

    const-string v3, "::"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->COLCOL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 181
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LPAREN"

    const/16 v2, 0x41

    const-string v3, "("

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 182
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "RPAREN"

    const/16 v2, 0x42

    const-string v3, ")"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 183
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LBRACE"

    const/16 v2, 0x43

    const-string v3, "{"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 184
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "RBRACE"

    const/16 v2, 0x44

    const-string v3, "}"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 185
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LBRACKET"

    const/16 v2, 0x45

    const-string v3, "["

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 186
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "RBRACKET"

    const/16 v2, 0x46

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 187
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SEMI"

    const/16 v2, 0x47

    const-string v3, ";"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SEMI:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 188
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "COMMA"

    const/16 v2, 0x48

    const-string v3, ","

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->COMMA:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 189
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "DOT"

    const/16 v2, 0x49

    const-string v3, "."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 190
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "ELLIPSIS"

    const/16 v2, 0x4a

    const-string v3, "..."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ELLIPSIS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 191
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "EQ"

    const/16 v2, 0x4b

    const-string v3, "="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 192
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "GT"

    const/16 v2, 0x4c

    const-string v3, ">"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 193
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LT"

    const/16 v2, 0x4d

    const-string v3, "<"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 194
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "BANG"

    const/16 v2, 0x4e

    const-string v3, "!"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BANG:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 195
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "TILDE"

    const/16 v2, 0x4f

    const-string v3, "~"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TILDE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 196
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "QUES"

    const/16 v2, 0x50

    const-string v3, "?"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->QUES:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 197
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "COLON"

    const/16 v2, 0x51

    const-string v3, ":"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->COLON:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 198
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "EQEQ"

    const/16 v2, 0x52

    const-string v3, "=="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EQEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 199
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LTEQ"

    const/16 v2, 0x53

    const-string v3, "<="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 200
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "GTEQ"

    const/16 v2, 0x54

    const-string v3, ">="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 201
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "BANGEQ"

    const/16 v2, 0x55

    const-string v3, "!="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BANGEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 202
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "AMPAMP"

    const/16 v2, 0x56

    const-string v3, "&&"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->AMPAMP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 203
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "BARBAR"

    const/16 v2, 0x57

    const-string v3, "||"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BARBAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 204
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PLUSPLUS"

    const/16 v2, 0x58

    const-string v3, "++"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PLUSPLUS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 205
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SUBSUB"

    const/16 v2, 0x59

    const-string v3, "--"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SUBSUB:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 206
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PLUS"

    const/16 v2, 0x5a

    const-string v3, "+"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PLUS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 207
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SUB"

    const/16 v2, 0x5b

    const-string v3, "-"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SUB:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 208
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "STAR"

    const/16 v2, 0x5c

    const-string v3, "*"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 209
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SLASH"

    const/16 v2, 0x5d

    const-string v3, "/"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SLASH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 210
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "AMP"

    const/16 v2, 0x5e

    const-string v3, "&"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->AMP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 211
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "BAR"

    const/16 v2, 0x5f

    const-string v3, "|"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 212
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CARET"

    const/16 v2, 0x60

    const-string v3, "^"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CARET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 213
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PERCENT"

    const/16 v2, 0x61

    const-string v3, "%"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PERCENT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 214
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LTLT"

    const/16 v2, 0x62

    const-string v3, "<<"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LTLT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 215
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "GTGT"

    const/16 v2, 0x63

    const-string v3, ">>"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTGT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 216
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "GTGTGT"

    const/16 v2, 0x64

    const-string v3, ">>>"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTGTGT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 217
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PLUSEQ"

    const/16 v2, 0x65

    const-string v3, "+="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PLUSEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 218
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SUBEQ"

    const/16 v2, 0x66

    const-string v3, "-="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SUBEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 219
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "STAREQ"

    const/16 v2, 0x67

    const-string v3, "*="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STAREQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 220
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "SLASHEQ"

    const/16 v2, 0x68

    const-string v3, "/="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SLASHEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 221
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "AMPEQ"

    const/16 v2, 0x69

    const-string v3, "&="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->AMPEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 222
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "BAREQ"

    const/16 v2, 0x6a

    const-string v3, "|="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BAREQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 223
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CARETEQ"

    const/16 v2, 0x6b

    const-string v3, "^="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CARETEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 224
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "PERCENTEQ"

    const/16 v2, 0x6c

    const-string v3, "%="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PERCENTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 225
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "LTLTEQ"

    const/16 v2, 0x6d

    const-string v3, "<<="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LTLTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 226
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "GTGTEQ"

    const/16 v2, 0x6e

    const-string v3, ">>="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTGTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 227
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "GTGTGTEQ"

    const/16 v2, 0x6f

    const-string v3, ">>>="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTGTGTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 228
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "MONKEYS_AT"

    const/16 v2, 0x70

    const-string v3, "@"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 229
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const-string v1, "CUSTOM"

    const/16 v2, 0x71

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CUSTOM:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 115
    const/16 v1, 0x72

    new-array v1, v1, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ERROR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ABSTRACT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ASSERT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BOOLEAN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BREAK:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BYTE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CASE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CATCH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CHAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CLASS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CONST:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CONTINUE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DO:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOUBLE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ELSE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ENUM:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EXTENDS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FINAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FINALLY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FLOAT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FOR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GOTO:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IMPLEMENTS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IMPORT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INSTANCEOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INTERFACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LONG:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->NATIVE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->NEW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PACKAGE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PRIVATE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PROTECTED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PUBLIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RETURN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SHORT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STATIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRICTFP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SUPER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SWITCH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SYNCHRONIZED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->THIS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->THROW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->THROWS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TRANSIENT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TRY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->VOID:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->VOLATILE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->WHILE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INTLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x36

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LONGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FLOATLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x38

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOUBLELITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CHARLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TRUE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FALSE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->NULL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->UNDERSCORE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ARROW:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x40

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->COLCOL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x42

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x44

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x46

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SEMI:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x48

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->COMMA:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ELLIPSIS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BANG:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TILDE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x50

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->QUES:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->COLON:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x52

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EQEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x54

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BANGEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x56

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->AMPAMP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BARBAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x58

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PLUSPLUS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SUBSUB:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PLUS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SUB:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SLASH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->AMP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BAR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x60

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CARET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x61

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PERCENT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x62

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LTLT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x63

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTGT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x64

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTGTGT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x65

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PLUSEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x66

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SUBEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x67

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STAREQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x68

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SLASHEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x69

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->AMPEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->BAREQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CARETEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PERCENTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LTLTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTGTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->GTGTGTEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x70

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v1, v2

    const/16 v2, 0x71

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->$VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    .line 236
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;",
            ")V"
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    .line 244
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V

    .line 240
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;",
            ")V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput-object p3, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    .line 248
    iput-object p4, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->tag:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    .line 249
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;
    .registers 2

    .line 115
    const-class v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;
    .registers 1

    .line 115
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->$VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    return-object v0
.end method


# virtual methods
.method public accepts(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)Z
    .registers 3

    .line 289
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .registers 3

    .line 115
    check-cast p1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->accepts(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)Z

    move-result v0

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .registers 2

    .line 280
    const-string v0, "Token"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 252
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 273
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :pswitch_1
    const-string v0, "token.end-of-input"

    goto :goto_0

    .line 268
    :pswitch_2
    const-string v0, "token.bad-symbol"

    goto :goto_0

    .line 266
    :pswitch_3
    const-string v0, "token.double"

    goto :goto_0

    .line 264
    :pswitch_4
    const-string v0, "token.float"

    goto :goto_0

    .line 262
    :pswitch_5
    const-string v0, "token.long-integer"

    goto :goto_0

    .line 260
    :pswitch_6
    const-string v0, "token.integer"

    goto :goto_0

    .line 258
    :pswitch_7
    const-string v0, "token.string"

    goto :goto_0

    .line 256
    :pswitch_8
    const-string v0, "token.character"

    goto :goto_0

    .line 254
    :pswitch_9
    const-string v0, "token.identifier"

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString(Ljava/util/Locale;Lcom/sun/tools/javac/api/Messages;)Ljava/lang/String;
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compiler.misc."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0, v1}, Lcom/sun/tools/javac/api/Messages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
