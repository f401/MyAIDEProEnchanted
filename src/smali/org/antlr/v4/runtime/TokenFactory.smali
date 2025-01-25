.class public interface abstract Lorg/antlr/v4/runtime/TokenFactory;
.super Ljava/lang/Object;
.source "TokenFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Symbol::",
        "Lorg/antlr/v4/runtime/Token;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(ILjava/lang/String;)Lorg/antlr/v4/runtime/Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TSymbol;"
        }
    .end annotation
.end method

.method public abstract create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/Pair<",
            "Lorg/antlr/v4/runtime/TokenSource;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ">;I",
            "Ljava/lang/String;",
            "IIIII)TSymbol;"
        }
    .end annotation
.end method
