.class public Lcom/google/googlejavaformat/java/javac/parser/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Lcom/google/googlejavaformat/java/javac/parser/Lexer;


# instance fields
.field private prevToken:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

.field private savedTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;",
            ">;"
        }
    .end annotation
.end field

.field private token:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

.field private tokenizer:Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

.field private tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;


# direct methods
.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->tokenizer:Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

    .line 87
    iget-object v0, p1, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    .line 88
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->DUMMY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->prevToken:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    .line 89
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .registers 4

    .line 78
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

    invoke-direct {v0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V
    .registers 5

    .line 82
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;)V

    .line 83
    return-void
.end method

.method private ensureLookahead(I)V
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v0, p1, :cond_16

    .line 107
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->tokenizer:Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->readToken()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 109
    :cond_16
    return-void
.end method


# virtual methods
.method public errPos()I
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->tokenizer:Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->errPos()I

    move-result v0

    return v0
.end method

.method public errPos(I)V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->tokenizer:Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

    invoke-virtual {v0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->errPos(I)V

    .line 141
    return-void
.end method

.method public getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->tokenizer:Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->prevToken:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    .line 117
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 118
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    .line 122
    :goto_17
    return-void

    .line 120
    :cond_18
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->tokenizer:Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->readToken()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    goto :goto_17
.end method

.method public prevToken()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->prevToken:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    return-object v0
.end method

.method public split()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->split(Lcom/google/googlejavaformat/java/javac/parser/Tokens;)[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->prevToken:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    .line 127
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    .line 128
    return-object v0
.end method

.method public token()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
    .registers 2

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token(I)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    move-result-object v0

    return-object v0
.end method

.method public token(I)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
    .registers 4

    .line 96
    if-nez p1, :cond_5

    .line 97
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    .line 100
    :goto_4
    return-object v0

    .line 99
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->ensureLookahead(I)V

    .line 100
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    goto :goto_4
.end method
