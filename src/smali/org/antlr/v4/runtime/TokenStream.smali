.class public interface abstract Lorg/antlr/v4/runtime/TokenStream;
.super Ljava/lang/Object;
.source "TokenStream.java"

# interfaces
.implements Lorg/antlr/v4/runtime/IntStream;


# virtual methods
.method public abstract LT(I)Lorg/antlr/v4/runtime/Token;
.end method

.method public abstract get(I)Lorg/antlr/v4/runtime/Token;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getText(Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
.end method

.method public abstract getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
.end method

.method public abstract getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
.end method

.method public abstract getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
.end method
