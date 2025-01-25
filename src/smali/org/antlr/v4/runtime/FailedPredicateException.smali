.class public Lorg/antlr/v4/runtime/FailedPredicateException;
.super Lorg/antlr/v4/runtime/RecognitionException;
.source "FailedPredicateException.java"


# instance fields
.field private final predicate:Ljava/lang/String;

.field private final predicateIndex:I

.field private final ruleIndex:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;)V
    .registers 3

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/FailedPredicateException;-><init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V
    .registers 4

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/FailedPredicateException;-><init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 36
    invoke-static {p2, p3}, Lorg/antlr/v4/runtime/FailedPredicateException;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    iget-object v1, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {p0, p3, p1, v0, v1}, Lorg/antlr/v4/runtime/RecognitionException;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/IntStream;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 37
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object p3

    check-cast p3, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object p3

    check-cast p3, Lorg/antlr/v4/runtime/atn/AbstractPredicateTransition;

    .line 40
    instance-of v1, p3, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    if-eqz v1, :cond_37

    .line 41
    check-cast p3, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    iget v0, p3, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    iput v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->ruleIndex:I

    .line 42
    iget p3, p3, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    iput p3, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicateIndex:I

    goto :goto_3b

    .line 45
    :cond_37
    iput v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->ruleIndex:I

    .line 46
    iput v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicateIndex:I

    .line 49
    :goto_3b
    iput-object p2, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicate:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/FailedPredicateException;->setOffendingToken(Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method private static formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_3

    return-object p1

    .line 72
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "failed predicate: {%s}?"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPredIndex()I
    .registers 2

    .line 58
    iget v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicateIndex:I

    return v0
.end method

.method public getPredicate()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->predicate:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleIndex()I
    .registers 2

    .line 54
    iget v0, p0, Lorg/antlr/v4/runtime/FailedPredicateException;->ruleIndex:I

    return v0
.end method
