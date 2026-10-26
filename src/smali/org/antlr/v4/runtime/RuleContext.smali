.class public Lorg/antlr/v4/runtime/RuleContext;
.super Ljava/lang/Object;
.source "RuleContext.java"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/RuleNode;


# static fields
.field public static final EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;


# instance fields
.field public invokingState:I

.field public parent:Lorg/antlr/v4/runtime/RuleContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/RuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/RuleContext;I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    .line 86
    iput p2, p0, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor",
            "<+TT;>;)TT;"
        }
    .end annotation

    .line 183
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public depth()I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 93
    iget-object p0, p0, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getAltNumber()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getChild(I)Lorg/antlr/v4/runtime/tree/Tree;
    .locals 1

    .line 68
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/RuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParent()Lorg/antlr/v4/runtime/RuleContext;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getParent()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/Tree;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getParent()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getPayload()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lorg/antlr/v4/runtime/RuleContext;
    .locals 0

    return-object p0
.end method

.method public getRuleContext()Lorg/antlr/v4/runtime/RuleContext;
    .locals 0

    return-object p0
.end method

.method public getRuleIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;
    .locals 1

    .line 110
    sget-object v0, Lorg/antlr/v4/runtime/misc/Interval;->INVALID:Lorg/antlr/v4/runtime/misc/Interval;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 131
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, ""

    .line 140
    :goto_0
    return-object v0

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 136
    :goto_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/RuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .line 103
    iget v0, p0, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAltNumber(I)V
    .locals 0

    return-void
.end method

.method public setParent(Lorg/antlr/v4/runtime/RuleContext;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 208
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v0, v1

    check-cast v0, Lorg/antlr/v4/runtime/RuleContext;

    invoke-virtual {p0, v1, v1}, Lorg/antlr/v4/runtime/RuleContext;->toString(Ljava/util/List;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/RuleContext;->toString(Ljava/util/List;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/util/List;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz p0, :cond_5

    if-eq p0, p2, :cond_5

    if-nez p1, :cond_3

    .line 232
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget v0, p0, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/RuleContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    :cond_1
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_2
    iget-object p0, p0, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result v0

    if-ltz v0, :cond_4

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 238
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 249
    :cond_5
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Lorg/antlr/v4/runtime/Recognizer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 212
    sget-object v0, Lorg/antlr/v4/runtime/ParserRuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/RuleContext;->toString(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Recognizer;->getRuleNames()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 222
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 223
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/antlr/v4/runtime/RuleContext;->toString(Ljava/util/List;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v0

    .line 221
    goto :goto_0
.end method

.method public toStringTree()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 203
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/RuleContext;->toStringTree(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 198
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree(Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .locals 1

    .line 191
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
