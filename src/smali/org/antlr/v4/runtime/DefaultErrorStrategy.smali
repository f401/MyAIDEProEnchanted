.class public Lorg/antlr/v4/runtime/DefaultErrorStrategy;
.super Ljava/lang/Object;
.source "DefaultErrorStrategy.java"

# interfaces
.implements Lorg/antlr/v4/runtime/ANTLRErrorStrategy;


# instance fields
.field protected errorRecoveryMode:Z

.field protected lastErrorIndex:I

.field protected lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

.field protected nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

.field protected nextTokensState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->errorRecoveryMode:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorIndex:I

    return-void
.end method


# virtual methods
.method protected beginErrorCondition(Lorg/antlr/v4/runtime/Parser;)V
    .registers 2

    .line 72
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->errorRecoveryMode:Z

    return-void
.end method

.method protected consumeUntil(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/misc/IntervalSet;)V
    .registers 6

    .line 761
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    :goto_9
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    .line 762
    invoke-virtual {p2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 765
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 766
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    goto :goto_9

    :cond_1e
    return-void
.end method

.method protected endErrorCondition(Lorg/antlr/v4/runtime/Parser;)V
    .registers 2

    .line 90
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->errorRecoveryMode:Z

    .line 91
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 92
    const/4 p1, -0x1

    iput p1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorIndex:I

    return-void
.end method

.method protected escapeWSAndQuote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 643
    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 644
    const-string v0, "\r"

    const-string v1, "\\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 645
    const-string v0, "\t"

    const-string v1, "\\t"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getErrorRecoverySet(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 7

    .line 742
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 743
    iget-object p1, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 744
    new-instance v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {v1, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    :goto_12
    if-eqz p1, :cond_34

    .line 745
    iget v3, p1, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    if-ltz v3, :cond_34

    .line 747
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget v4, p1, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 748
    invoke-virtual {v3, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 749
    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v3

    .line 750
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 751
    iget-object p1, p1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    goto :goto_12

    .line 753
    :cond_34
    const/4 p1, -0x2

    invoke-virtual {v1, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->remove(I)V

    return-object v1
.end method

.method protected getExpectedTokens(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 2

    .line 607
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method protected getMissingSymbol(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .registers 13

    .line 584
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 585
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getExpectedTokens(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    .line 587
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v2

    if-nez v2, :cond_14

    .line 588
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getMinElement()I

    move-result v1

    move v4, v1

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_16
    const/4 v1, -0x1

    if-ne v4, v1, :cond_1d

    .line 591
    const-string v2, "<missing EOF>"

    move-object v5, v2

    goto :goto_39

    .line 592
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<missing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v3

    invoke-interface {v3, v4}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 594
    :goto_39
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    .line 595
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v3, v1, :cond_4a

    if-eqz v2, :cond_4a

    move-object v0, v2

    .line 598
    :cond_4a
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v2

    new-instance v3, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object p1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v1

    invoke-direct {v3, p1, v1}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v9

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v10

    invoke-interface/range {v2 .. v10}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    return-object p1
.end method

.method protected getSymbolText(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .registers 2

    .line 633
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSymbolType(Lorg/antlr/v4/runtime/Token;)I
    .registers 2

    .line 637
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result p1

    return p1
.end method

.method protected getTokenErrorDisplay(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    .line 619
    const-string p1, "<no token>"

    return-object p1

    .line 620
    :cond_5
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getSymbolText(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 622
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getSymbolType(Lorg/antlr/v4/runtime/Token;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 623
    const-string v0, "<EOF>"

    goto :goto_2c

    .line 626
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getSymbolType(Lorg/antlr/v4/runtime/Token;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->escapeWSAndQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z
    .registers 2

    .line 80
    iget-boolean p1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->errorRecoveryMode:Z

    return p1
.end method

.method public recover(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V
    .registers 4

    .line 164
    iget p2, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorIndex:I

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    if-ne p2, v0, :cond_1d

    iget-object p2, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz p2, :cond_1d

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 174
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 176
    :cond_1d
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object p2

    invoke-interface {p2}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result p2

    iput p2, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorIndex:I

    .line 177
    iget-object p2, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-nez p2, :cond_35

    new-instance p2, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    iput-object p2, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 178
    :cond_35
    iget-object p2, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    .line 179
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getErrorRecoverySet(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p2

    .line 180
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->consumeUntil(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    return-void
.end method

.method public recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->singleTokenDeletion(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 471
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    return-object v0

    .line 476
    :cond_a
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->singleTokenInsertion(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 477
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getMissingSymbol(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    return-object p1

    .line 482
    :cond_15
    iget-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    if-nez v0, :cond_1f

    .line 483
    new-instance v0, Lorg/antlr/v4/runtime/InputMismatchException;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/InputMismatchException;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    goto :goto_28

    .line 485
    :cond_1f
    new-instance v0, Lorg/antlr/v4/runtime/InputMismatchException;

    iget v1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensState:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {v0, p1, v1, v2}, Lorg/antlr/v4/runtime/InputMismatchException;-><init>(Lorg/antlr/v4/runtime/Parser;ILorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 488
    :goto_28
    throw v0
.end method

.method public reportError(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V
    .registers 6

    .line 130
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 134
    :cond_7
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->beginErrorCondition(Lorg/antlr/v4/runtime/Parser;)V

    .line 135
    instance-of v0, p2, Lorg/antlr/v4/runtime/NoViableAltException;

    if-eqz v0, :cond_14

    .line 136
    check-cast p2, Lorg/antlr/v4/runtime/NoViableAltException;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportNoViableAlternative(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/NoViableAltException;)V

    goto :goto_4e

    .line 138
    :cond_14
    instance-of v0, p2, Lorg/antlr/v4/runtime/InputMismatchException;

    if-eqz v0, :cond_1e

    .line 139
    check-cast p2, Lorg/antlr/v4/runtime/InputMismatchException;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportInputMismatch(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/InputMismatchException;)V

    goto :goto_4e

    .line 141
    :cond_1e
    instance-of v0, p2, Lorg/antlr/v4/runtime/FailedPredicateException;

    if-eqz v0, :cond_28

    .line 142
    check-cast p2, Lorg/antlr/v4/runtime/FailedPredicateException;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportFailedPredicate(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/FailedPredicateException;)V

    goto :goto_4e

    .line 145
    :cond_28
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown recognition error type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    :goto_4e
    return-void
.end method

.method protected reportFailedPredicate(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/FailedPredicateException;)V
    .registers 6

    .line 342
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rule "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/FailedPredicateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/FailedPredicateException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    return-void
.end method

.method protected reportInputMismatch(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/InputMismatchException;)V
    .registers 6

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched input "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/InputMismatchException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getTokenErrorDisplay(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/InputMismatchException;->getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/InputMismatchException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    return-void
.end method

.method public reportMatch(Lorg/antlr/v4/runtime/Parser;)V
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->endErrorCondition(Lorg/antlr/v4/runtime/Parser;)V

    return-void
.end method

.method protected reportMissingToken(Lorg/antlr/v4/runtime/Parser;)V
    .registers 6

    .line 398
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 402
    :cond_7
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->beginErrorCondition(Lorg/antlr/v4/runtime/Parser;)V

    .line 404
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 405
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getExpectedTokens(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "missing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getTokenErrorDisplay(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    return-void
.end method

.method protected reportNoViableAlternative(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/NoViableAltException;)V
    .registers 6

    .line 300
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 303
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/NoViableAltException;->getStartToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    const-string v0, "<EOF>"

    goto :goto_23

    .line 304
    :cond_14
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/NoViableAltException;->getStartToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/NoViableAltException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 307
    :cond_21
    const-string v0, "<unknown input>"

    .line 309
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no viable alternative at input "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->escapeWSAndQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/NoViableAltException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    return-void
.end method

.method protected reportUnwantedToken(Lorg/antlr/v4/runtime/Parser;)V
    .registers 7

    .line 366
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 370
    :cond_7
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->beginErrorCondition(Lorg/antlr/v4/runtime/Parser;)V

    .line 372
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 373
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getTokenErrorDisplay(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getExpectedTokens(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "extraneous input "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expecting "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    return-void
.end method

.method public reset(Lorg/antlr/v4/runtime/Parser;)V
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->endErrorCondition(Lorg/antlr/v4/runtime/Parser;)V

    return-void
.end method

.method protected singleTokenDeletion(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .registers 4

    .line 545
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    .line 546
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getExpectedTokens(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    .line 547
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 548
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportUnwantedToken(Lorg/antlr/v4/runtime/Parser;)V

    .line 555
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 557
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 558
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportMatch(Lorg/antlr/v4/runtime/Parser;)V

    return-object v0

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method protected singleTokenInsertion(Lorg/antlr/v4/runtime/Parser;)Z
    .registers 8

    .line 509
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    .line 513
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 514
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 515
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 516
    iget-object v5, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v4, v2, v5}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    .line 518
    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 519
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportMissingToken(Lorg/antlr/v4/runtime/Parser;)V

    return v1

    :cond_3c
    return v3
.end method

.method public sync(Lorg/antlr/v4/runtime/Parser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation

    .line 231
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

    .line 234
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-void

    .line 238
    :cond_1b
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v1

    .line 239
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v1

    .line 242
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    .line 243
    invoke-virtual {v2, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 245
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 246
    const/4 p1, -0x1

    iput p1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensState:I

    return-void

    .line 250
    :cond_39
    const/4 v1, -0x2

    invoke-virtual {v2, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 251
    iget-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    if-nez v0, :cond_50

    .line 254
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 255
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensState:I

    :cond_50
    return-void

    .line 260
    :cond_51
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_75

    const/4 v1, 0x4

    if-eq v0, v1, :cond_75

    const/4 v1, 0x5

    if-eq v0, v1, :cond_75

    packed-switch v0, :pswitch_data_82

    goto :goto_74

    .line 275
    :pswitch_62  #0x9, 0xb
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportUnwantedToken(Lorg/antlr/v4/runtime/Parser;)V

    .line 276
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 277
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getErrorRecoverySet(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->or(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 279
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->consumeUntil(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    :goto_74
    return-void

    .line 266
    :cond_75
    :pswitch_75  #0xa
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->singleTokenDeletion(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    if-eqz v0, :cond_7c

    return-void

    .line 270
    :cond_7c
    new-instance v0, Lorg/antlr/v4/runtime/InputMismatchException;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/InputMismatchException;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    throw v0

    :pswitch_data_82
    .packed-switch 0x9
        :pswitch_62  #00000009
        :pswitch_75  #0000000a
        :pswitch_62  #0000000b
    .end packed-switch
.end method
