.class public interface abstract Lcom/google/googlejavaformat/java/javac/parser/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# virtual methods
.method public abstract errPos()I
.end method

.method public abstract errPos(I)V
.end method

.method public abstract getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;
.end method

.method public abstract nextToken()V
.end method

.method public abstract prevToken()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
.end method

.method public abstract split()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
.end method

.method public abstract token()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
.end method

.method public abstract token(I)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
.end method
