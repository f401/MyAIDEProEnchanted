.class public interface abstract Lcom/sun/tools/javac/parser/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# virtual methods
.method public abstract deprecatedFlag()Z
.end method

.method public abstract docComment()Ljava/lang/String;
.end method

.method public abstract endPos()I
.end method

.method public abstract errPos()I
.end method

.method public abstract errPos(I)V
.end method

.method public abstract getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;
.end method

.method public abstract getRawCharacters()[C
.end method

.method public abstract getRawCharacters(II)[C
.end method

.method public abstract name()Lcom/sun/tools/javac/util/Name;
.end method

.method public abstract nextToken()V
.end method

.method public abstract pos()I
.end method

.method public abstract prevEndPos()I
.end method

.method public abstract radix()I
.end method

.method public abstract resetDeprecatedFlag()V
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract token()Lcom/sun/tools/javac/parser/Token;
.end method

.method public abstract token(Lcom/sun/tools/javac/parser/Token;)V
.end method
