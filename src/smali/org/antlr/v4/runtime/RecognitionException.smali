.class public Lorg/antlr/v4/runtime/RecognitionException;
.super Ljava/lang/RuntimeException;
.source "RecognitionException.java"


# instance fields
.field private final ctx:Lorg/antlr/v4/runtime/RuleContext;

.field private final input:Lorg/antlr/v4/runtime/IntStream;

.field private offendingState:I

.field private offendingToken:Lorg/antlr/v4/runtime/Token;

.field private final recognizer:Lorg/antlr/v4/runtime/Recognizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/IntStream;Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Lorg/antlr/v4/runtime/IntStream;",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 p1, -0x1

    iput p1, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingState:I

    .line 50
    iput-object p2, p0, Lorg/antlr/v4/runtime/RecognitionException;->recognizer:Lorg/antlr/v4/runtime/Recognizer;

    .line 51
    iput-object p3, p0, Lorg/antlr/v4/runtime/RecognitionException;->input:Lorg/antlr/v4/runtime/IntStream;

    .line 52
    iput-object p4, p0, Lorg/antlr/v4/runtime/RecognitionException;->ctx:Lorg/antlr/v4/runtime/RuleContext;

    if-eqz p2, :cond_14

    .line 53
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/Recognizer;->getState()I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingState:I

    :cond_14
    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/IntStream;Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Lorg/antlr/v4/runtime/IntStream;",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingState:I

    .line 38
    iput-object p1, p0, Lorg/antlr/v4/runtime/RecognitionException;->recognizer:Lorg/antlr/v4/runtime/Recognizer;

    .line 39
    iput-object p2, p0, Lorg/antlr/v4/runtime/RecognitionException;->input:Lorg/antlr/v4/runtime/IntStream;

    .line 40
    iput-object p3, p0, Lorg/antlr/v4/runtime/RecognitionException;->ctx:Lorg/antlr/v4/runtime/RuleContext;

    if-eqz p1, :cond_14

    .line 41
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Recognizer;->getState()I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingState:I

    :cond_14
    return-void
.end method


# virtual methods
.method public getCtx()Lorg/antlr/v4/runtime/RuleContext;
    .registers 2

    .line 100
    iget-object v0, p0, Lorg/antlr/v4/runtime/RecognitionException;->ctx:Lorg/antlr/v4/runtime/RuleContext;

    return-object v0
.end method

.method public getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 4

    .line 84
    iget-object v0, p0, Lorg/antlr/v4/runtime/RecognitionException;->recognizer:Lorg/antlr/v4/runtime/Recognizer;

    if-eqz v0, :cond_11

    .line 85
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Recognizer;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v0

    iget v1, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingState:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/RecognitionException;->ctx:Lorg/antlr/v4/runtime/RuleContext;

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/ATN;->getExpectedTokens(ILorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/IntStream;
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/antlr/v4/runtime/RecognitionException;->input:Lorg/antlr/v4/runtime/IntStream;

    return-object v0
.end method

.method public getOffendingState()I
    .registers 2

    .line 66
    iget v0, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingState:I

    return v0
.end method

.method public getOffendingToken()Lorg/antlr/v4/runtime/Token;
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingToken:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getRecognizer()Lorg/antlr/v4/runtime/Recognizer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/antlr/v4/runtime/RecognitionException;->recognizer:Lorg/antlr/v4/runtime/Recognizer;

    return-object v0
.end method

.method protected final setOffendingState(I)V
    .registers 2

    .line 70
    iput p1, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingState:I

    return-void
.end method

.method protected final setOffendingToken(Lorg/antlr/v4/runtime/Token;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lorg/antlr/v4/runtime/RecognitionException;->offendingToken:Lorg/antlr/v4/runtime/Token;

    return-void
.end method
