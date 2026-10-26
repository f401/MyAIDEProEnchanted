.class public Lorg/antlr/v4/runtime/ParserRuleContext;
.super Lorg/antlr/v4/runtime/RuleContext;
.source "ParserRuleContext.java"


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation
.end field

.field public exception:Lorg/antlr/v4/runtime/RecognitionException;

.field public start:Lorg/antlr/v4/runtime/Token;

.field public stop:Lorg/antlr/v4/runtime/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/antlr/v4/runtime/RuleContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/ParserRuleContext;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/RuleContext;-><init>(Lorg/antlr/v4/runtime/RuleContext;I)V

    return-void
.end method


# virtual methods
.method public addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addChild(Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/RuleContext;
    .locals 1

    .line 139
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/RuleContext;

    return-object v0
.end method

.method public addChild(Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    new-instance v0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;-><init>(Lorg/antlr/v4/runtime/Token;)V

    .line 165
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 166
    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->setParent(Lorg/antlr/v4/runtime/RuleContext;)V

    return-object v0
.end method

.method public addChild(Lorg/antlr/v4/runtime/tree/TerminalNode;)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    .line 144
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->setParent(Lorg/antlr/v4/runtime/RuleContext;)V

    .line 145
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    return-object v0
.end method

.method public addErrorNode(Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    new-instance v0, Lorg/antlr/v4/runtime/tree/ErrorNodeImpl;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/tree/ErrorNodeImpl;-><init>(Lorg/antlr/v4/runtime/Token;)V

    .line 178
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 179
    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/tree/ErrorNodeImpl;->setParent(Lorg/antlr/v4/runtime/RuleContext;)V

    return-object v0
.end method

.method public addErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;
    .locals 1

    .line 153
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ErrorNode;->setParent(Lorg/antlr/v4/runtime/RuleContext;)V

    .line 154
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    return-object v0
.end method

.method public copyFrom(Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .locals 3

    .line 94
    iget-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    .line 95
    iget v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->invokingState:I

    iput v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->invokingState:I

    .line 97
    iget-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    .line 98
    iget-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    .line 101
    iget-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    .line 104
    iget-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 105
    instance-of v2, v0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v2, :cond_0

    .line 106
    check-cast v0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->addChild(Lorg/antlr/v4/runtime/tree/TerminalNode;)Lorg/antlr/v4/runtime/tree/TerminalNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 0

    return-void
.end method

.method public exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 0

    return-void
.end method

.method public getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChild(Ljava/lang/Class;I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;I)TT;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, -0x1

    move v1, v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_2

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    goto :goto_0
.end method

.method public bridge synthetic getChild(I)Lorg/antlr/v4/runtime/tree/Tree;
    .locals 1

    .line 42
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/antlr/v4/runtime/ParserRuleContext;
    .locals 1

    .line 201
    invoke-super {p0}, Lorg/antlr/v4/runtime/RuleContext;->getParent()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/RuleContext;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/Tree;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    return-object v0
.end method

.method public getRuleContext(Ljava/lang/Class;I)Lorg/antlr/v4/runtime/ParserRuleContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;I)TT;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChild(Ljava/lang/Class;I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    return-object v0
.end method

.method public getRuleContexts(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-nez v0, :cond_1

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 295
    :cond_0
    :goto_0
    return-object v1

    .line 284
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v1, v0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez v1, :cond_0

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;
    .locals 2

    .line 306
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_0

    .line 307
    sget-object v0, Lorg/antlr/v4/runtime/misc/Interval;->INVALID:Lorg/antlr/v4/runtime/misc/Interval;

    .line 312
    :goto_0
    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 310
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    goto :goto_0
.end method

.method public getStart()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getStop()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getToken(II)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 4

    .line 227
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, -0x1

    move v1, v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 233
    instance-of v3, v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v3, :cond_2

    .line 234
    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 235
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    .line 236
    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v3, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_2

    goto :goto_0
.end method

.method public getTokens(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-nez v0, :cond_1

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 268
    :cond_0
    :goto_0
    return-object v1

    .line 254
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v1, v0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 255
    instance-of v3, v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v3, :cond_2

    .line 256
    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 257
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    .line 258
    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v3, p1, :cond_2

    if-nez v1, :cond_3

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez v1, :cond_0

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public removeLastChild()V
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toInfoString(Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .locals 3

    .line 330
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/Parser;->getRuleInvocationStack(Lorg/antlr/v4/runtime/RuleContext;)Ljava/util/List;

    move-result-object v0

    .line 331
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ParserRuleContext"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "{start="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stop="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
