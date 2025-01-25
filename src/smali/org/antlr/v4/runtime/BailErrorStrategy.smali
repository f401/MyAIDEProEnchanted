.class public Lorg/antlr/v4/runtime/BailErrorStrategy;
.super Lorg/antlr/v4/runtime/DefaultErrorStrategy;
.source "BailErrorStrategy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V
    .registers 3

    .line 47
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_d

    .line 48
    iput-object p2, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->exception:Lorg/antlr/v4/runtime/RecognitionException;

    .line 47
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object p1

    goto :goto_4

    .line 51
    :cond_d
    new-instance p1, Lorg/antlr/v4/runtime/misc/ParseCancellationException;

    invoke-direct {p1, p2}, Lorg/antlr/v4/runtime/misc/ParseCancellationException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_14

    :goto_13
    throw p1

    :goto_14
    goto :goto_13
.end method

.method public recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/antlr/v4/runtime/InputMismatchException;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/InputMismatchException;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    .line 62
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object p1

    :goto_9
    if-eqz p1, :cond_12

    .line 63
    iput-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->exception:Lorg/antlr/v4/runtime/RecognitionException;

    .line 62
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object p1

    goto :goto_9

    .line 66
    :cond_12
    new-instance p1, Lorg/antlr/v4/runtime/misc/ParseCancellationException;

    invoke-direct {p1, v0}, Lorg/antlr/v4/runtime/misc/ParseCancellationException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_19

    :goto_18
    throw p1

    :goto_19
    goto :goto_18
.end method

.method public sync(Lorg/antlr/v4/runtime/Parser;)V
    .registers 2

    return-void
.end method
