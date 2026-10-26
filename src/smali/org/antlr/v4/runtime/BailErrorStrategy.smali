.class public Lorg/antlr/v4/runtime/BailErrorStrategy;
.super Lorg/antlr/v4/runtime/DefaultErrorStrategy;
.source "BailErrorStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 48
    iput-object p2, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->exception:Lorg/antlr/v4/runtime/RecognitionException;

    .line 47
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/misc/ParseCancellationException;

    invoke-direct {v0, p2}, Lorg/antlr/v4/runtime/misc/ParseCancellationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation

    .line 61
    new-instance v1, Lorg/antlr/v4/runtime/InputMismatchException;

    invoke-direct {v1, p1}, Lorg/antlr/v4/runtime/InputMismatchException;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    .line 62
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 63
    iput-object v1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->exception:Lorg/antlr/v4/runtime/RecognitionException;

    .line 62
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/misc/ParseCancellationException;

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/ParseCancellationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sync(Lorg/antlr/v4/runtime/Parser;)V
    .locals 0

    return-void
.end method
