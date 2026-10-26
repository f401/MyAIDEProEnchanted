.class public Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;
.super Ljava/lang/Object;
.source "ParseTreePatternMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$CannotInvokeStartRule;,
        Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$StartRuleDoesNotConsumeFullPattern;
    }
.end annotation


# instance fields
.field protected escape:Ljava/lang/String;

.field private final lexer:Lorg/antlr/v4/runtime/Lexer;

.field private final parser:Lorg/antlr/v4/runtime/Parser;

.field protected start:Ljava/lang/String;

.field protected stop:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/Parser;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "<"

    iput-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    .line 110
    const-string v0, ">"

    iput-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    .line 111
    const-string v0, "\\"

    iput-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    .line 121
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;
    .locals 6

    .line 192
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    new-instance v1, Lorg/antlr/v4/runtime/ListTokenSource;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/ListTokenSource;-><init>(Ljava/util/List;)V

    .line 194
    new-instance v5, Lorg/antlr/v4/runtime/CommonTokenStream;

    invoke-direct {v5, v1}, Lorg/antlr/v4/runtime/CommonTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 196
    new-instance v0, Lorg/antlr/v4/runtime/ParserInterpreter;

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/Parser;->getGrammarFileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v2

    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v4}, Lorg/antlr/v4/runtime/Parser;->getATNWithBypassAlts()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/antlr/v4/runtime/ParserInterpreter;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/TokenStream;)V

    .line 204
    :try_start_0
    new-instance v1, Lorg/antlr/v4/runtime/BailErrorStrategy;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/BailErrorStrategy;-><init>()V

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/ParserInterpreter;->setErrorHandler(Lorg/antlr/v4/runtime/ANTLRErrorStrategy;)V

    .line 205
    invoke-virtual {v0, p2}, Lorg/antlr/v4/runtime/ParserInterpreter;->parse(I)Lorg/antlr/v4/runtime/ParserRuleContext;
    :try_end_0
    .catch Lorg/antlr/v4/runtime/misc/ParseCancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/antlr/v4/runtime/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lorg/antlr/v4/runtime/CommonTokenStream;->LA(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 223
    new-instance v1, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;-><init>(Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;Ljava/lang/String;ILorg/antlr/v4/runtime/tree/ParseTree;)V

    return-object v1

    .line 220
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$StartRuleDoesNotConsumeFullPattern;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$StartRuleDoesNotConsumeFullPattern;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$CannotInvokeStartRule;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$CannotInvokeStartRule;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 212
    throw v0

    :catch_2
    move-exception v0

    .line 209
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/ParseCancellationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/RecognitionException;

    throw v0
.end method

.method public getLexer()Lorg/antlr/v4/runtime/Lexer;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    return-object v0
.end method

.method public getParser()Lorg/antlr/v4/runtime/Parser;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    return-object v0
.end method

.method protected getRuleTagToken(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;
    .locals 3

    const/4 v2, 0x0

    .line 352
    instance-of v0, p1, Lorg/antlr/v4/runtime/tree/RuleNode;

    if-eqz v0, :cond_0

    .line 353
    check-cast p1, Lorg/antlr/v4/runtime/tree/RuleNode;

    .line 354
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    instance-of v0, v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 356
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    instance-of v1, v1, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;

    if-eqz v1, :cond_0

    .line 358
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;
    .locals 1

    .line 170
    invoke-virtual {p0, p2, p3}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->compile(Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    move-result-object v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->match(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;

    move-result-object v0

    return-object v0
.end method

.method public match(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;
    .locals 3

    .line 182
    new-instance v0, Lorg/antlr/v4/runtime/misc/MultiMap;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/MultiMap;-><init>()V

    .line 183
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->getPatternTree()Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->matchImpl(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/misc/MultiMap;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v1

    .line 184
    new-instance v2, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;

    invoke-direct {v2, p1, p2, v0, v1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;-><init>(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;Lorg/antlr/v4/runtime/misc/MultiMap;Lorg/antlr/v4/runtime/tree/ParseTree;)V

    return-object v2
.end method

.method protected matchImpl(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/misc/MultiMap;)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Lorg/antlr/v4/runtime/misc/MultiMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;)",
            "Lorg/antlr/v4/runtime/tree/ParseTree;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    .line 269
    instance-of v0, p1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 270
    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 271
    check-cast p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 274
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 275
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    instance-of v1, v1, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;

    if-eqz v1, :cond_1

    .line 276
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;

    .line 278
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->getTokenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->map(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 280
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->map(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 302
    :cond_2
    instance-of v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 303
    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    move-object v1, p2

    .line 304
    check-cast v1, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 307
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->getRuleTagToken(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 310
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result v4

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result v1

    if-ne v4, v1, :cond_4

    .line 312
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->map(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->map(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1

    .line 327
    :cond_5
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChildCount()I

    move-result v3

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChildCount()I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 335
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_7

    .line 337
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v4

    invoke-interface {p2, v1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->matchImpl(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/misc/MultiMap;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    if-eqz p1, :cond_6

    move-object v0, p1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_0

    :cond_8
    move-object v0, p1

    goto :goto_0

    .line 265
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "patternTree cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tree cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public matches(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;I)Z
    .locals 1

    .line 151
    invoke-virtual {p0, p2, p3}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->compile(Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    move-result-object v0

    .line 152
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->matches(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Z

    move-result v0

    return v0
.end method

.method public matches(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Z
    .locals 2

    .line 159
    new-instance v0, Lorg/antlr/v4/runtime/misc/MultiMap;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/MultiMap;-><init>()V

    .line 160
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->getPatternTree()Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->matchImpl(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/misc/MultiMap;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDelimiters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stop cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public split(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/pattern/Chunk;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 415
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 418
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 419
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_4

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    :goto_2
    add-int/2addr v0, v3

    move v3, v0

    goto :goto_0

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 425
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 427
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 428
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    .line 431
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_3

    .line 432
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 443
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_e

    .line 447
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 451
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v1, v2

    :goto_3
    if-ge v1, v8, :cond_6

    .line 453
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v3, v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 454
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tag delimiters out of order in pattern: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez v8, :cond_7

    .line 460
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 461
    new-instance v1, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-lez v8, :cond_8

    .line 464
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    .line 465
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v1, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move v3, v2

    :goto_4
    if-ge v3, v8, :cond_b

    .line 470
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 473
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_a

    .line 475
    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 476
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 478
    :goto_5
    new-instance v9, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;

    invoke-direct {v9, v1, v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v8, :cond_9

    .line 481
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 482
    new-instance v3, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v3, v0}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move v3, v1

    goto :goto_4

    .line 476
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 482
    :cond_b
    if-lez v8, :cond_10

    .line 486
    add-int/lit8 v0, v8, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_10

    .line 488
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 489
    new-instance v1, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 494
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 495
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/pattern/Chunk;

    .line 496
    instance-of v2, v0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    if-eqz v2, :cond_c

    .line 497
    check-cast v0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    .line 498
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 500
    new-instance v0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v0, v2}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 448
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "missing start tag in pattern: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unterminated tag in pattern: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_f
    return-object v5

    :cond_10
    move v1, v2

    goto :goto_6
.end method

.method public tokenize(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 367
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/pattern/Chunk;

    .line 372
    instance-of v3, v0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;

    if-eqz v3, :cond_5

    .line 373
    check-cast v0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;

    .line 375
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/antlr/v4/runtime/Parser;->getTokenType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 377
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 380
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v3, v0}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in pattern: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_2
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 384
    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/antlr/v4/runtime/Parser;->getRuleIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 388
    iget-object v4, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v4}, Lorg/antlr/v4/runtime/Parser;->getATNWithBypassAlts()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aget v3, v4, v3

    .line 389
    new-instance v4, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v3, v0}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 386
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown rule "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in pattern: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in pattern: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_5
    check-cast v0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    .line 397
    new-instance v3, Lorg/antlr/v4/runtime/ANTLRInputStream;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/Lexer;->setInputStream(Lorg/antlr/v4/runtime/IntStream;)V

    .line 399
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Lexer;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 400
    :goto_1
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 401
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Lexer;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    goto :goto_1

    :cond_6
    return-object v1
.end method
