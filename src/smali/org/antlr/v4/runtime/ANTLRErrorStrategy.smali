.class public interface abstract Lorg/antlr/v4/runtime/ANTLRErrorStrategy;
.super Ljava/lang/Object;
.source "ANTLRErrorStrategy.java"


# virtual methods
.method public abstract inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z
.end method

.method public abstract recover(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation
.end method

.method public abstract recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation
.end method

.method public abstract reportError(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V
.end method

.method public abstract reportMatch(Lorg/antlr/v4/runtime/Parser;)V
.end method

.method public abstract reset(Lorg/antlr/v4/runtime/Parser;)V
.end method

.method public abstract sync(Lorg/antlr/v4/runtime/Parser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation
.end method
