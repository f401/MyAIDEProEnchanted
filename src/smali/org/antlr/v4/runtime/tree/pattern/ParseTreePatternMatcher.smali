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
    .registers 4

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
    .registers 11

    .line 192
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    new-instance v1, Lorg/antlr/v4/runtime/ListTokenSource;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/ListTokenSource;-><init>(Ljava/util/List;)V

    .line 194
    new-instance v0, Lorg/antlr/v4/runtime/CommonTokenStream;

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/CommonTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 196
    new-instance v1, Lorg/antlr/v4/runtime/ParserInterpreter;

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Parser;->getGrammarFileName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v4

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Parser;->getATNWithBypassAlts()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v6

    move-object v2, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/antlr/v4/runtime/ParserInterpreter;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/TokenStream;)V

    .line 204
    :try_start_31
    new-instance v2, Lorg/antlr/v4/runtime/BailErrorStrategy;

    invoke-direct {v2}, Lorg/antlr/v4/runtime/BailErrorStrategy;-><init>()V

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/ParserInterpreter;->setErrorHandler(Lorg/antlr/v4/runtime/ANTLRErrorStrategy;)V

    .line 205
    invoke-virtual {v1, p2}, Lorg/antlr/v4/runtime/ParserInterpreter;->parse(I)Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v1
    :try_end_3d
    .catch Lorg/antlr/v4/runtime/misc/ParseCancellationException; {:try_start_31 .. :try_end_3d} :catch_5a
    .catch Lorg/antlr/v4/runtime/RecognitionException; {:try_start_31 .. :try_end_3d} :catch_58
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_51

    .line 219
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/CommonTokenStream;->LA(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4b

    .line 223
    new-instance v0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;-><init>(Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;Ljava/lang/String;ILorg/antlr/v4/runtime/tree/ParseTree;)V

    return-object v0

    .line 220
    :cond_4b
    new-instance p1, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$StartRuleDoesNotConsumeFullPattern;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$StartRuleDoesNotConsumeFullPattern;-><init>()V

    throw p1

    :catch_51
    move-exception p1

    .line 215
    new-instance p2, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$CannotInvokeStartRule;

    invoke-direct {p2, p1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher$CannotInvokeStartRule;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_58
    move-exception p1

    .line 212
    throw p1

    :catch_5a
    move-exception p1

    .line 209
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/misc/ParseCancellationException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/RecognitionException;

    throw p1
.end method

.method public getLexer()Lorg/antlr/v4/runtime/Lexer;
    .registers 2

    .line 232
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    return-object v0
.end method

.method public getParser()Lorg/antlr/v4/runtime/Parser;
    .registers 2

    .line 241
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    return-object v0
.end method

.method protected getRuleTagToken(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;
    .registers 4

    .line 352
    instance-of v0, p1, Lorg/antlr/v4/runtime/tree/RuleNode;

    if-eqz v0, :cond_2b

    .line 353
    check-cast p1, Lorg/antlr/v4/runtime/tree/RuleNode;

    .line 354
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v1

    instance-of v1, v1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v1, :cond_2b

    .line 355
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 356
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    instance-of v0, v0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;

    if-eqz v0, :cond_2b

    .line 358
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;

    return-object p1

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method public match(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;
    .registers 4

    .line 170
    invoke-virtual {p0, p2, p3}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->compile(Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    move-result-object p2

    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->match(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;

    move-result-object p1

    return-object p1
.end method

.method public match(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;
    .registers 6

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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Lorg/antlr/v4/runtime/misc/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;)",
            "Lorg/antlr/v4/runtime/tree/ParseTree;"
        }
    .end annotation

    if-eqz p1, :cond_c3

    if-eqz p2, :cond_bb

    .line 269
    instance-of v0, p1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    instance-of v0, p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_58

    .line 270
    move-object v0, p1

    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 271
    check-cast p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 274
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v2, v3, :cond_56

    .line 275
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    instance-of v2, v2, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;

    if-eqz v2, :cond_47

    .line 276
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;

    .line 278
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->getTokenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->map(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 280
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->map(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_57

    .line 283
    :cond_47
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    goto :goto_57

    :cond_56
    move-object v1, v0

    :cond_57
    :goto_57
    return-object v1

    .line 302
    :cond_58
    instance-of v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_ba

    instance-of v0, p2, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_ba

    .line 303
    move-object v0, p1

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 304
    move-object v2, p2

    check-cast v2, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 307
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->getRuleTagToken(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;

    move-result-object v3

    if-eqz v3, :cond_95

    .line 310
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result p2

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result v2

    if-ne p2, v2, :cond_93

    .line 312
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->map(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->getLabel()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_94

    .line 314
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->map(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_94

    :cond_93
    move-object v1, v0

    :cond_94
    :goto_94
    return-object v1

    .line 327
    :cond_95
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChildCount()I

    move-result p1

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChildCount()I

    move-result v2

    if-eq p1, v2, :cond_a0

    return-object v0

    .line 335
    :cond_a0
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    :goto_a5
    if-ge v2, p1, :cond_b9

    .line 337
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v3

    invoke-interface {p2, v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p3}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->matchImpl(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/misc/MultiMap;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v3

    if-eqz v3, :cond_b6

    return-object v3

    :cond_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    :cond_b9
    return-object v1

    :cond_ba
    return-object p1

    .line 265
    :cond_bb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "patternTree cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_c3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tree cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_cc

    :goto_cb
    throw p1

    :goto_cc
    goto :goto_cb
.end method

.method public matches(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;I)Z
    .registers 4

    .line 151
    invoke-virtual {p0, p2, p3}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->compile(Ljava/lang/String;I)Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    move-result-object p2

    .line 152
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->matches(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Z

    move-result p1

    return p1
.end method

.method public matches(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Z
    .registers 4

    .line 159
    new-instance v0, Lorg/antlr/v4/runtime/misc/MultiMap;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/MultiMap;-><init>()V

    .line 160
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->getPatternTree()Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->matchImpl(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/misc/MultiMap;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public setDelimiters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_1f

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p2, :cond_17

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 144
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    return-void

    .line 141
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "stop cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public split(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/pattern/Chunk;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v0, :cond_94

    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_3d

    .line 422
    iget-object v6, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_62

    .line 424
    :cond_3d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_64

    .line 425
    iget-object v6, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 422
    :goto_62
    add-int/2addr v6, v7

    goto :goto_8f

    .line 427
    :cond_64
    iget-object v6, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_7a

    .line 428
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v6, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_8f

    .line 431
    :cond_7a
    iget-object v6, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_91

    .line 432
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v6, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 422
    :goto_8f
    add-int/2addr v5, v6

    goto :goto_15

    .line 433
    :cond_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 443
    :cond_94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gt v5, v6, :cond_1ec

    .line 447
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_1d8

    .line 451
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_ad
    if-ge v6, v5, :cond_dc

    .line 453
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_c8

    add-int/lit8 v6, v6, 0x1

    goto :goto_ad

    .line 454
    :cond_c8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tag delimiters out of order in pattern: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dc
    if-nez v5, :cond_ea

    .line 460
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 461
    new-instance v7, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v7, v6}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ea
    if-lez v5, :cond_10e

    .line 464
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_10e

    .line 465
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 466
    new-instance v7, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v7, v6}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10e
    const/4 v6, 0x0

    :goto_10f
    if-ge v6, v5, :cond_17d

    .line 470
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->start:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 473
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_147

    .line 475
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 476
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_148

    :cond_147
    const/4 v9, 0x0

    .line 478
    :goto_148
    new-instance v8, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;

    invoke-direct {v8, v9, v7}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v5, :cond_17b

    .line 481
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 482
    new-instance v8, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v8, v6}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17b
    move v6, v7

    goto :goto_10f

    :cond_17d
    if-lez v5, :cond_1a0

    .line 486
    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->stop:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v0, :cond_1a0

    .line 488
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 489
    new-instance v0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1a0
    :goto_1a0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_1d7

    .line 495
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/pattern/Chunk;

    .line 496
    instance-of v0, p1, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    if-eqz v0, :cond_1d4

    .line 497
    check-cast p1, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    .line 498
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->escape:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_1d4

    .line 500
    new-instance p1, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    invoke-direct {p1, v0}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1d4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a0

    :cond_1d7
    return-object v1

    .line 448
    :cond_1d8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "missing start tag in pattern: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 444
    :cond_1ec
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unterminated tag in pattern: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_201

    :goto_200
    throw p1

    :goto_201
    goto :goto_200
.end method

.method public tokenize(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/pattern/Chunk;

    .line 372
    instance-of v3, v2, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;

    const/4 v4, -0x1

    if-eqz v3, :cond_e8

    .line 373
    check-cast v2, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;

    .line 375
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    const-string v6, " in pattern: "

    if-eqz v3, :cond_76

    .line 376
    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/antlr/v4/runtime/Parser;->getTokenType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 377
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_58

    .line 380
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v3, v2}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 378
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown token "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_76
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 384
    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/Parser;->getRuleIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_ac

    .line 388
    iget-object v4, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v4}, Lorg/antlr/v4/runtime/Parser;->getATNWithBypassAlts()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aget v3, v4, v3

    .line 389
    new-instance v4, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v3, v2}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 386
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown rule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_ca
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :cond_e8
    check-cast v2, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;

    .line 397
    new-instance v3, Lorg/antlr/v4/runtime/ANTLRInputStream;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/Lexer;->setInputStream(Lorg/antlr/v4/runtime/IntStream;)V

    .line 399
    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Lexer;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    .line 400
    :goto_fe
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-eq v3, v4, :cond_d

    .line 401
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->lexer:Lorg/antlr/v4/runtime/Lexer;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Lexer;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    goto :goto_fe

    :cond_10e
    return-object v1
.end method
