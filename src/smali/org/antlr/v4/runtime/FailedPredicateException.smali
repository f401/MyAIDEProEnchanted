.class public Lorg/antlr/v4/runtime/FailedPredicateException;
.super Lorg/antlr/v4/runtime/RecognitionException;
.source "FailedPredicateException.java"


# instance fields
.field private final predicate:Ljava/lang/String;

.field private final predicateIndex:I

.field private final ruleIndex:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/FailedPredicateException;-><init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/FailedPredicateException;-><init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    .line 36
    invoke-static {p2, p3}, Lorg/antlr/v4/runtime/FailedPredicateException;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v1

    iget-object v2, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/antlr/v4/runtime/RecognitionException;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/IntStream;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 37
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 39
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/AbstractPredicateTransition;

    .line 40
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    iget v1, v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    iput v1, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->ruleIndex:I

    .line 42
    iget v0, v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    iput v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicateIndex:I

    .line 49
    :goto_0
    iput-object p2, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicate:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/FailedPredicateException;->setOffendingToken(Lorg/antlr/v4/runtime/Token;)V

    return-void

    .line 45
    :cond_0
    iput v3, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->ruleIndex:I

    .line 46
    iput v3, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicateIndex:I

    goto :goto_0
.end method

.method private static formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    .line 72
    :goto_0
    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "failed predicate: {%s}?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getPredIndex()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicateIndex:I

    return v0
.end method

.method public getPredicate()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicate:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleIndex()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->ruleIndex:I

    return v0
.end method
