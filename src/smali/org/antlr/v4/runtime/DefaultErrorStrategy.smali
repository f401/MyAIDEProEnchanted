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
    .locals 1

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
    .locals 1

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->errorRecoveryMode:Z

    return-void
.end method

.method protected consumeUntil(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/misc/IntervalSet;)V
    .locals 3

    const/4 v2, 0x1

    .line 761
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 762
    invoke-virtual {p2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 766
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected endErrorCondition(Lorg/antlr/v4/runtime/Parser;)V
    .locals 1

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->errorRecoveryMode:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorIndex:I

    return-void
.end method

.method protected escapeWSAndQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 643
    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 644
    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 645
    const-string v1, "\t"

    const-string v2, "\\t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorRecoverySet(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 6

    const/4 v5, 0x0

    .line 742
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 743
    iget-object v0, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 744
    new-instance v3, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v1, v5, [I

    invoke-direct {v3, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 745
    iget v0, v1, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    if-ltz v0, :cond_0

    .line 747
    iget-object v0, v2, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget v4, v1, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 748
    invoke-virtual {v0, v5}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 749
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 750
    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 751
    iget-object v0, v1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    move-object v1, v0

    goto :goto_0

    .line 753
    :cond_0
    const/4 v0, -0x2

    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->remove(I)V

    return-object v3
.end method

.method protected getExpectedTokens(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 1

    .line 607
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method protected getMissingSymbol(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .locals 9

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 584
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    .line 585
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getExpectedTokens(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getMinElement()I

    move-result v2

    :goto_0
    if-ne v2, v5, :cond_1

    .line 591
    const-string v3, "<missing EOF>"

    .line 594
    :goto_1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 595
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v6

    if-ne v6, v5, :cond_2

    if-eqz v0, :cond_2

    move-object v6, v0

    .line 598
    :goto_2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v0

    new-instance v1, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v7

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v8

    invoke-interface {v8}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v7

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v8

    move v6, v5

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v4

    .line 588
    goto :goto_0

    .line 592
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<missing "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v6, v1

    goto :goto_2
.end method

.method protected getSymbolText(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 1

    .line 633
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSymbolType(Lorg/antlr/v4/runtime/Token;)I
    .locals 1

    .line 637
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    return v0
.end method

.method protected getTokenErrorDisplay(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 619
    const-string v0, "<no token>"

    .line 629
    :goto_0
    return-object v0

    .line 620
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getSymbolText(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getSymbolType(Lorg/antlr/v4/runtime/Token;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 623
    const-string v0, "<EOF>"

    .line 629
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->escapeWSAndQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getSymbolType(Lorg/antlr/v4/runtime/Token;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->errorRecoveryMode:Z

    return v0
.end method

.method public recover(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V
    .locals 2

    .line 164
    iget v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorIndex:I

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 176
    :cond_0
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorIndex:I

    .line 177
    iget-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-nez v0, :cond_1

    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 178
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->lastErrorStates:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    .line 179
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getErrorRecoverySet(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 180
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->consumeUntil(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    return-void
.end method

.method public recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->singleTokenDeletion(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 477
    :goto_0
    return-object v0

    .line 476
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->singleTokenInsertion(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->getMissingSymbol(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    if-nez v0, :cond_2

    .line 483
    new-instance v0, Lorg/antlr/v4/runtime/InputMismatchException;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/InputMismatchException;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    .line 488
    :goto_1
    throw v0

    .line 485
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/InputMismatchException;

    iget v1, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensState:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {v0, p1, v1, v2}, Lorg/antlr/v4/runtime/InputMismatchException;-><init>(Lorg/antlr/v4/runtime/Parser;ILorg/antlr/v4/runtime/ParserRuleContext;)V

    goto :goto_1
.end method

.method public reportError(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V
    .locals 3

    .line 130
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->beginErrorCondition(Lorg/antlr/v4/runtime/Parser;)V

    .line 135
    instance-of v0, p2, Lorg/antlr/v4/runtime/NoViableAltException;

    if-eqz v0, :cond_1

    .line 136
    check-cast p2, Lorg/antlr/v4/runtime/NoViableAltException;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportNoViableAlternative(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/NoViableAltException;)V

    goto :goto_0

    .line 138
    :cond_1
    instance-of v0, p2, Lorg/antlr/v4/runtime/InputMismatchException;

    if-eqz v0, :cond_2

    .line 139
    check-cast p2, Lorg/antlr/v4/runtime/InputMismatchException;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportInputMismatch(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/InputMismatchException;)V

    goto :goto_0

    .line 141
    :cond_2
    instance-of v0, p2, Lorg/antlr/v4/runtime/FailedPredicateException;

    if-eqz v0, :cond_3

    .line 142
    check-cast p2, Lorg/antlr/v4/runtime/FailedPredicateException;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportFailedPredicate(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/FailedPredicateException;)V

    goto :goto_0

    .line 145
    :cond_3
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

    goto :goto_0
.end method

.method protected reportFailedPredicate(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/FailedPredicateException;)V
    .locals 3

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
    .locals 3

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
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->endErrorCondition(Lorg/antlr/v4/runtime/Parser;)V

    return-void
.end method

.method protected reportMissingToken(Lorg/antlr/v4/runtime/Parser;)V
    .locals 4

    .line 398
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 402
    :cond_0
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

    goto :goto_0
.end method

.method protected reportNoViableAlternative(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/NoViableAltException;)V
    .locals 3

    .line 300
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/NoViableAltException;->getStartToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, "<EOF>"

    .line 309
    :goto_0
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

    .line 304
    :cond_0
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/NoViableAltException;->getStartToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/NoViableAltException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_1
    const-string v0, "<unknown input>"

    goto :goto_0
.end method

.method protected reportUnwantedToken(Lorg/antlr/v4/runtime/Parser;)V
    .locals 5

    .line 366
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
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

    goto :goto_0
.end method

.method public reset(Lorg/antlr/v4/runtime/Parser;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->endErrorCondition(Lorg/antlr/v4/runtime/Parser;)V

    return-void
.end method

.method protected singleTokenDeletion(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;
    .locals 2

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

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportUnwantedToken(Lorg/antlr/v4/runtime/Parser;)V

    .line 555
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 557
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 558
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportMatch(Lorg/antlr/v4/runtime/Parser;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected singleTokenInsertion(Lorg/antlr/v4/runtime/Parser;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 509
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v3

    .line 513
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 514
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 515
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 516
    iget-object v5, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v0, v4, v5}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->reportMissingToken(Lorg/antlr/v4/runtime/Parser;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public sync(Lorg/antlr/v4/runtime/Parser;)V
    .locals 3
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

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
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

    if-eqz v1, :cond_2

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensState:I

    goto :goto_0

    .line 250
    :cond_2
    const/4 v1, -0x2

    invoke-virtual {v2, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    iget-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 255
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->nextTokensState:I

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
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

    goto :goto_0

    .line 266
    :cond_4
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;->singleTokenDeletion(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lorg/antlr/v4/runtime/InputMismatchException;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/InputMismatchException;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
