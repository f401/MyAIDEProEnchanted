.class public interface abstract Lorg/antlr/v4/runtime/TokenSource;
.super Ljava/lang/Object;
.source "TokenSource.java"


# virtual methods
.method public abstract getCharPositionInLine()I
.end method

.method public abstract getInputStream()Lorg/antlr/v4/runtime/CharStream;
.end method

.method public abstract getLine()I
.end method

.method public abstract getSourceName()Ljava/lang/String;
.end method

.method public abstract getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract nextToken()Lorg/antlr/v4/runtime/Token;
.end method

.method public abstract setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;)V"
        }
    .end annotation
.end method
