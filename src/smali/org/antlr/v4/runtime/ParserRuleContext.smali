.class public Lorg/antlr/v4/runtime/ParserRuleContext;
.super Lorg/antlr/v4/runtime/RuleContext;
.source "ParserRuleContext.java"


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
    .registers 1

    .line 79
    invoke-direct {p0}, Lorg/antlr/v4/runtime/RuleContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/ParserRuleContext;I)V
    .registers 3

    .line 113
    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/RuleContext;-><init>(Lorg/antlr/v4/runtime/RuleContext;I)V

    return-void
.end method


# virtual methods
.method public addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    .line 134
    :cond_b
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addChild(Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/RuleContext;
    .registers 2

    .line 139
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/RuleContext;

    return-object p1
.end method

.method public addChild(Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .registers 3
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
    .registers 2

    .line 144
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->setParent(Lorg/antlr/v4/runtime/RuleContext;)V

    .line 145
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    return-object p1
.end method

.method public addErrorNode(Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;
    .registers 3
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
    .registers 2

    .line 153
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ErrorNode;->setParent(Lorg/antlr/v4/runtime/RuleContext;)V

    .line 154
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addAnyChild(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ErrorNode;

    return-object p1
.end method

.method public copyFrom(Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .registers 4

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

    if-eqz v0, :cond_37

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    .line 104
    iget-object p1, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 105
    instance-of v1, v0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v1, :cond_21

    .line 106
    check-cast v0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->addChild(Lorg/antlr/v4/runtime/tree/TerminalNode;)Lorg/antlr/v4/runtime/tree/TerminalNode;

    goto :goto_21

    :cond_37
    return-void
.end method

.method public enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .registers 2

    return-void
.end method

.method public exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .registers 2

    return-void
.end method

.method public getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 3

    .line 206
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_15

    if-ltz p1, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return-object p1
.end method

.method public getChild(Ljava/lang/Class;I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_31

    if-ltz p2, :cond_31

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_d

    goto :goto_31

    .line 215
    :cond_d
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 216
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_14

    .line 219
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object p1

    :cond_31
    :goto_31
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChild(I)Lorg/antlr/v4/runtime/tree/Tree;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    .line 302
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getParent()Lorg/antlr/v4/runtime/ParserRuleContext;
    .registers 2

    .line 201
    invoke-super {p0}, Lorg/antlr/v4/runtime/RuleContext;->getParent()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/RuleContext;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/Tree;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getParent()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    return-object v0
.end method

.method public getRuleContext(Ljava/lang/Class;I)Lorg/antlr/v4/runtime/ParserRuleContext;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChild(Ljava/lang/Class;I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/ParserRuleContext;

    return-object p1
.end method

.method public getRuleContexts(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-nez v0, :cond_9

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 284
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 285
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v1, :cond_27

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    :cond_27
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2f
    if-nez v1, :cond_36

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_36
    return-object v1
.end method

.method public getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;
    .registers 3

    .line 306
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_7

    .line 307
    sget-object v0, Lorg/antlr/v4/runtime/misc/Interval;->INVALID:Lorg/antlr/v4/runtime/misc/Interval;

    return-object v0

    .line 309
    :cond_7
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    if-ge v0, v1, :cond_18

    goto :goto_29

    .line 312
    :cond_18
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    return-object v0

    .line 310
    :cond_29
    :goto_29
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Lorg/antlr/v4/runtime/Token;
    .registers 2

    .line 320
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getStop()Lorg/antlr/v4/runtime/Token;
    .registers 2

    .line 326
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getToken(II)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .registers 7

    .line 227
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_35

    if-ltz p2, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_d

    goto :goto_35

    .line 232
    :cond_d
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 233
    instance-of v3, v2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v3, :cond_14

    .line 234
    check-cast v2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 235
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    .line 236
    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v3, p1, :cond_14

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_14

    return-object v2

    :cond_35
    :goto_35
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTokens(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-nez v0, :cond_9

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 254
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 255
    instance-of v3, v2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v3, :cond_e

    .line 256
    check-cast v2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 257
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    .line 258
    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v3, p1, :cond_e

    if-nez v1, :cond_31

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :cond_31
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_35
    if-nez v1, :cond_3c

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3c
    return-object v1
.end method

.method public removeLastChild()V
    .registers 3

    .line 193
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public toInfoString(Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .registers 4

    .line 330
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/Parser;->getRuleInvocationStack(Lorg/antlr/v4/runtime/RuleContext;)Ljava/util/List;

    move-result-object p1

    .line 331
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParserRuleContext"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "{start="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->start:Lorg/antlr/v4/runtime/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", stop="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->stop:Lorg/antlr/v4/runtime/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
