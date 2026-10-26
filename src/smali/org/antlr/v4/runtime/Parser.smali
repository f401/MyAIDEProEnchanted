.class public abstract Lorg/antlr/v4/runtime/Parser;
.super Lorg/antlr/v4/runtime/Recognizer;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/Parser$TraceListener;,
        Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/Recognizer",
        "<",
        "Lorg/antlr/v4/runtime/Token;",
        "Lorg/antlr/v4/runtime/atn/ParserATNSimulator;",
        ">;"
    }
.end annotation


# static fields
.field private static final bypassAltsAtnCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _buildParseTrees:Z

.field protected _ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

.field protected _errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

.field protected _input:Lorg/antlr/v4/runtime/TokenStream;

.field protected _parseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTreeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final _precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

.field protected _syntaxErrors:I

.field private _tracer:Lorg/antlr/v4/runtime/Parser$TraceListener;

.field protected matchedEOF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/Parser;->bypassAltsAtnCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Lorg/antlr/v4/runtime/Recognizer;-><init>()V

    .line 99
    new-instance v0, Lorg/antlr/v4/runtime/DefaultErrorStrategy;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/DefaultErrorStrategy;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    .line 111
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntegerStack;->push(I)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    .line 158
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/Parser;->setInputStream(Lorg/antlr/v4/runtime/IntStream;)V

    return-void
.end method


# virtual methods
.method protected addContextToParseTree()V
    .locals 2

    .line 614
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v0, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_0

    .line 617
    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addChild(Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/RuleContext;

    :cond_0
    return-void
.end method

.method public addParseListener(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 351
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 348
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compileParseTreePattern(Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;
    .locals 2

    .line 473
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v0

    .line 475
    instance-of v1, v0, Lorg/antlr/v4/runtime/Lexer;

    if-eqz v1, :cond_0

    .line 476
    check-cast v0, Lorg/antlr/v4/runtime/Lexer;

    .line 477
    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/Parser;->compileParseTreePattern(Ljava/lang/String;ILorg/antlr/v4/runtime/Lexer;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    move-result-object v0

    return-object v0

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parser can\'t discover a lexer to use"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compileParseTreePattern(Ljava/lang/String;ILorg/antlr/v4/runtime/Lexer;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;
    .locals 1

    .line 490
    new-instance v0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;

    invoke-direct {v0, p3, p0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/Parser;)V

    .line 491
    invoke-virtual {v0, p1, p2}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->compile(Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    move-result-object v0

    return-object v0
.end method

.method public consume()Lorg/antlr/v4/runtime/Token;
    .locals 4

    .line 569
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    .line 570
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 571
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->consume()V

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 574
    :goto_0
    iget-boolean v2, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    .line 575
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/Parser;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v0, v1}, Lorg/antlr/v4/runtime/Parser;->createErrorNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->addErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v2

    .line 577
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 578
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTreeListener;

    .line 579
    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V

    goto :goto_1

    .line 573
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 584
    :cond_3
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v0, v1}, Lorg/antlr/v4/runtime/Parser;->createTerminalNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->addChild(Lorg/antlr/v4/runtime/tree/TerminalNode;)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v2

    .line 585
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 586
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTreeListener;

    .line 587
    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public createErrorNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;
    .locals 1

    .line 610
    new-instance v0, Lorg/antlr/v4/runtime/tree/ErrorNodeImpl;

    invoke-direct {v0, p2}, Lorg/antlr/v4/runtime/tree/ErrorNodeImpl;-><init>(Lorg/antlr/v4/runtime/Token;)V

    return-object v0
.end method

.method public createTerminalNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    .line 601
    new-instance v0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;

    invoke-direct {v0, p2}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;-><init>(Lorg/antlr/v4/runtime/Token;)V

    return-object v0
.end method

.method public dumpDFA()V
    .locals 6

    const/4 v2, 0x0

    .line 879
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    monitor-enter v4

    move v1, v2

    move v3, v2

    .line 881
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 882
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object v0, v0, v3

    .line 883
    iget-object v2, v0, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    .line 884
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 885
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decision "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/antlr/v4/runtime/dfa/DFA;->decision:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 886
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/dfa/DFA;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v1, v0

    move v3, v2

    goto :goto_0

    .line 890
    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public enterOuterAlt(Lorg/antlr/v4/runtime/ParserRuleContext;I)V
    .locals 1

    .line 648
    invoke-virtual {p1, p2}, Lorg/antlr/v4/runtime/ParserRuleContext;->setAltNumber(I)V

    .line 651
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eq v0, p1, :cond_0

    .line 652
    iget-object v0, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->removeLastChild()V

    .line 655
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addChild(Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/RuleContext;

    .line 658
    :cond_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    return-void
.end method

.method public enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 681
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v0

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v0, v0, p2

    iget v0, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/antlr/v4/runtime/Parser;->enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V

    return-void
.end method

.method public enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V
    .locals 2

    .line 685
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/Parser;->setState(I)V

    .line 686
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0, p4}, Lorg/antlr/v4/runtime/misc/IntegerStack;->push(I)V

    .line 687
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 688
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    .line 689
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->triggerEnterRuleEvent()V

    :cond_0
    return-void
.end method

.method public enterRule(Lorg/antlr/v4/runtime/ParserRuleContext;II)V
    .locals 2

    .line 626
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/Parser;->setState(I)V

    .line 627
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 628
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    .line 629
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->addContextToParseTree()V

    .line 630
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->triggerEnterRuleEvent()V

    :cond_1
    return-void
.end method

.method public exitRule()V
    .locals 3

    .line 634
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/Parser;->matchedEOF:Z

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    .line 642
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->triggerExitRuleEvent()V

    .line 643
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v0, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->invokingState:I

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Parser;->setState(I)V

    .line 644
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v0, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    goto :goto_0
.end method

.method public getATNWithBypassAlts()Lorg/antlr/v4/runtime/atn/ATN;
    .locals 4

    .line 443
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getSerializedATN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 448
    sget-object v2, Lorg/antlr/v4/runtime/Parser;->bypassAltsAtnCache:Ljava/util/Map;

    monitor-enter v2

    .line 449
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATN;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;-><init>()V

    .line 452
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->setGenerateRuleBypassTransitions(Z)V

    .line 453
    new-instance v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v3, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>(Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserialize([C)Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v0

    .line 454
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 458
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 445
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The current parser does not support an ATN with bypass alternatives."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuildParseTree()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    return v0
.end method

.method public getContext()Lorg/antlr/v4/runtime/ParserRuleContext;
    .locals 1

    .line 749
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    return-object v0
.end method

.method public getCurrentToken()Lorg/antlr/v4/runtime/Token;
    .locals 2

    .line 527
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    return-object v0
.end method

.method public getDFAStrings()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    monitor-enter v2

    .line 868
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 869
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 870
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object v0, v0, v1

    .line 871
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/dfa/DFA;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 873
    :cond_0
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v0

    .line 874
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getErrorHandler()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;
    .locals 1

    .line 496
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    return-object v0
.end method

.method public getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 3

    .line 822
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/ATN;->getExpectedTokens(ILorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedTokensWithinCurrentRule()Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 3

    .line 827
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 828
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 829
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInputStream()Lorg/antlr/v4/runtime/IntStream;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/TokenStream;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    return-object v0
.end method

.method public getInvokingContext(I)Lorg/antlr/v4/runtime/ParserRuleContext;
    .locals 2

    .line 740
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    :goto_0
    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 743
    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNumberOfSyntaxErrors()I
    .locals 1

    .line 420
    iget v0, p0, Lorg/antlr/v4/runtime/Parser;->_syntaxErrors:I

    return v0
.end method

.method public getParseInfo()Lorg/antlr/v4/runtime/atn/ParseInfo;
    .locals 2

    .line 899
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    .line 900
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    if-eqz v1, :cond_0

    .line 901
    new-instance v1, Lorg/antlr/v4/runtime/atn/ParseInfo;

    check-cast v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/atn/ParseInfo;-><init>(Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParseListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTreeListener;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getPrecedence()I
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 672
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->peek()I

    move-result v0

    goto :goto_0
.end method

.method public getRuleContext()Lorg/antlr/v4/runtime/ParserRuleContext;
    .locals 1

    .line 839
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    return-object v0
.end method

.method public getRuleIndex(Ljava/lang/String;)I
    .locals 1

    .line 834
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getRuleIndexMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRuleInvocationStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Parser;->getRuleInvocationStack(Lorg/antlr/v4/runtime/RuleContext;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRuleInvocationStack(Lorg/antlr/v4/runtime/RuleContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 853
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v0

    .line 854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    .line 857
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result v2

    if-gez v2, :cond_0

    .line 858
    const-string v2, "n/a"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :goto_1
    iget-object p1, p1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    goto :goto_0

    .line 859
    :cond_0
    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 860
    :cond_1
    return-object v1
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 894
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v0

    return-object v0
.end method

.method public getTokenStream()Lorg/antlr/v4/runtime/TokenStream;
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    return-object v0
.end method

.method public getTrimParseTree()Z
    .locals 2

    .line 304
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getParseListeners()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;->INSTANCE:Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inContext(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpectedToken(I)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x2

    .line 782
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 783
    iget-object v4, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 784
    iget-object v0, v5, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getState()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 785
    invoke-virtual {v5, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 786
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 803
    :goto_0
    return v0

    .line 790
    :cond_0
    invoke-virtual {v0, v6}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v2

    goto :goto_0

    .line 800
    :cond_1
    iget-object v0, v4, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    move-object v4, v0

    .line 790
    :goto_1
    if-eqz v4, :cond_2

    .line 792
    iget v0, v4, Lorg/antlr/v4/runtime/ParserRuleContext;->invokingState:I

    if-ltz v0, :cond_2

    invoke-virtual {v3, v6}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, v5, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget v3, v4, Lorg/antlr/v4/runtime/ParserRuleContext;->invokingState:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 794
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 795
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v5, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v3

    .line 796
    invoke-virtual {v3, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 803
    :cond_2
    invoke-virtual {v3, v6}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move-object v3, v0

    goto :goto_1
.end method

.method public isMatchedEOF()Z
    .locals 1

    .line 811
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/Parser;->matchedEOF:Z

    return v0
.end method

.method public isTrace()Z
    .locals 1

    .line 947
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_tracer:Lorg/antlr/v4/runtime/Parser$TraceListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(I)Lorg/antlr/v4/runtime/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation

    const/4 v2, -0x1

    .line 197
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    if-ne v1, p1, :cond_2

    if-ne p1, v2, :cond_0

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/antlr/v4/runtime/Parser;->matchedEOF:Z

    .line 202
    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v1, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reportMatch(Lorg/antlr/v4/runtime/Parser;)V

    .line 203
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 210
    :cond_1
    :goto_0
    return-object v0

    .line 206
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 207
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 210
    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/Parser;->createErrorNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->addErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    goto :goto_0
.end method

.method public matchWildcard()Lorg/antlr/v4/runtime/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/antlr/v4/runtime/RecognitionException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    if-lez v1, :cond_1

    .line 237
    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v1, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reportMatch(Lorg/antlr/v4/runtime/Parser;)V

    .line 238
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->consume()Lorg/antlr/v4/runtime/Token;

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 242
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 245
    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/Parser;->createErrorNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->addErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    goto :goto_0
.end method

.method public final notifyErrorListeners(Ljava/lang/String;)V
    .locals 2

    .line 531
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    return-void
.end method

.method public notifyErrorListeners(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V
    .locals 7

    .line 537
    iget v0, p0, Lorg/antlr/v4/runtime/Parser;->_syntaxErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/Parser;->_syntaxErrors:I

    .line 540
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v3

    .line 541
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v4

    .line 543
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 544
    invoke-interface/range {v0 .. v6}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->syntaxError(Lorg/antlr/v4/runtime/Recognizer;Ljava/lang/Object;IILjava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    return-void
.end method

.method public precpred(Lorg/antlr/v4/runtime/RuleContext;I)Z
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->peek()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushNewRecursionContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)V
    .locals 3

    .line 698
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 699
    iput-object p1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    .line 700
    iput p2, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->invokingState:I

    .line 701
    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    .line 703
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 704
    iget-object v1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    iput-object v1, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    .line 705
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->addChild(Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/RuleContext;

    .line 709
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 710
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->triggerEnterRuleEvent()V

    :cond_1
    return-void
.end method

.method public removeParseListener(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public removeParseListeners()V
    .locals 1

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reset(Lorg/antlr/v4/runtime/Parser;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 166
    iput v1, p0, Lorg/antlr/v4/runtime/Parser;->_syntaxErrors:I

    .line 167
    iput-boolean v1, p0, Lorg/antlr/v4/runtime/Parser;->matchedEOF:Z

    .line 168
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/Parser;->setTrace(Z)V

    .line 169
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->clear()V

    .line 170
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntegerStack;->push(I)V

    .line 171
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNSimulator;->reset()V

    :cond_1
    return-void
.end method

.method public setBuildParseTree(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    return-void
.end method

.method public setContext(Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    return-void
.end method

.method public setErrorHandler(Lorg/antlr/v4/runtime/ANTLRErrorStrategy;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    return-void
.end method

.method public final setInputStream(Lorg/antlr/v4/runtime/IntStream;)V
    .locals 0

    .line 508
    check-cast p1, Lorg/antlr/v4/runtime/TokenStream;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/Parser;->setTokenStream(Lorg/antlr/v4/runtime/TokenStream;)V

    return-void
.end method

.method public setProfile(Z)V
    .locals 5

    .line 910
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    .line 911
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getPredictionMode()Lorg/antlr/v4/runtime/atn/PredictionMode;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 913
    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Parser;->setInterpreter(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V

    .line 922
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->setPredictionMode(Lorg/antlr/v4/runtime/atn/PredictionMode;)V

    return-void

    .line 917
    :cond_1
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    if-eqz v2, :cond_0

    .line 918
    new-instance v2, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v3

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getSharedContextCache()Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    move-result-object v0

    invoke-direct {v2, p0, v3, v4, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    .line 920
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/Parser;->setInterpreter(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V

    goto :goto_0
.end method

.method public setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;)V"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/TokenSource;->setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V

    return-void
.end method

.method public setTokenStream(Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 1

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    .line 518
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->reset()V

    .line 519
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    return-void
.end method

.method public setTrace(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 930
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_tracer:Lorg/antlr/v4/runtime/Parser$TraceListener;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Parser;->removeParseListener(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_tracer:Lorg/antlr/v4/runtime/Parser$TraceListener;

    .line 936
    :goto_0
    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_tracer:Lorg/antlr/v4/runtime/Parser$TraceListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Parser;->removeParseListener(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    .line 936
    :goto_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_tracer:Lorg/antlr/v4/runtime/Parser$TraceListener;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Parser;->addParseListener(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    goto :goto_0

    .line 935
    :cond_1
    new-instance v0, Lorg/antlr/v4/runtime/Parser$TraceListener;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/Parser$TraceListener;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_tracer:Lorg/antlr/v4/runtime/Parser$TraceListener;

    goto :goto_1
.end method

.method public setTrimParseTree(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->getTrimParseTree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    sget-object v0, Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;->INSTANCE:Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Parser;->addParseListener(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    goto :goto_0

    .line 295
    :cond_1
    sget-object v0, Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;->INSTANCE:Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Parser;->removeParseListener(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    goto :goto_0
.end method

.method protected triggerEnterRuleEvent()V
    .locals 3

    .line 393
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTreeListener;

    .line 394
    iget-object v2, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->enterEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 395
    iget-object v2, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected triggerExitRuleEvent()V
    .locals 3

    .line 406
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 407
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTreeListener;

    .line 408
    iget-object v2, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    .line 409
    iget-object v2, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->exitEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unrollRecursionContexts(Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .locals 3

    .line 715
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_precedenceStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->pop()I

    .line 716
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    .line 717
    iget-object v1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 720
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_parseListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 721
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eq v0, p1, :cond_1

    .line 722
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Parser;->triggerExitRuleEvent()V

    .line 723
    iget-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v0, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    iput-object v0, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    goto :goto_0

    .line 727
    :cond_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 731
    :cond_1
    iput-object p1, v1, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    .line 733
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/Parser;->_buildParseTrees:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 735
    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addChild(Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/RuleContext;

    :cond_2
    return-void
.end method
