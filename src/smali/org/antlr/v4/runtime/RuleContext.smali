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
    .registers 1

    .line 69
    new-instance v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/RuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/RuleContext;I)V
    .registers 3

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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 183
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public depth()I
    .registers 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_9

    .line 93
    iget-object v1, v1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v0
.end method

.method public getAltNumber()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChild(I)Lorg/antlr/v4/runtime/tree/Tree;
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/RuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getParent()Lorg/antlr/v4/runtime/RuleContext;
    .registers 2

    .line 117
    iget-object v0, p0, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getParent()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/Tree;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getParent()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getPayload()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lorg/antlr/v4/runtime/RuleContext;
    .registers 1

    return-object p0
.end method

.method public getRuleContext()Lorg/antlr/v4/runtime/RuleContext;
    .registers 1

    return-object p0
.end method

.method public getRuleIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;
    .registers 2

    .line 110
    sget-object v0, Lorg/antlr/v4/runtime/misc/Interval;->INVALID:Lorg/antlr/v4/runtime/misc/Interval;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 131
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 132
    const-string v0, ""

    return-object v0

    .line 135
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 136
    :goto_f
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 137
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/RuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 140
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 103
    iget v0, p0, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setAltNumber(I)V
    .registers 2

    return-void
.end method

.method public setParent(Lorg/antlr/v4/runtime/RuleContext;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 208
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/RuleContext;

    invoke-virtual {p0, v0, v0}, Lorg/antlr/v4/runtime/RuleContext;->toString(Ljava/util/List;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/RuleContext;->toString(Ljava/util/List;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/util/List;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    :goto_8
    if-eqz v1, :cond_48

    if-eq v1, p2, :cond_48

    if-nez p1, :cond_1a

    .line 232
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/RuleContext;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 233
    iget v2, v1, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 237
    :cond_1a
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result v2

    if-ltz v2, :cond_2d

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_31

    :cond_2d
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    :goto_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_34
    :goto_34
    iget-object v2, v1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    if-eqz v2, :cond_45

    if-nez p1, :cond_40

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/RuleContext;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    .line 243
    :cond_40
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_45
    iget-object v1, v1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    goto :goto_8

    .line 249
    :cond_48
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString(Lorg/antlr/v4/runtime/Recognizer;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 212
    sget-object v0, Lorg/antlr/v4/runtime/ParserRuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/RuleContext;->toString(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 221
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Recognizer;->getRuleNames()[Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 222
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 223
    :cond_f
    invoke-virtual {p0, v0, p2}, Lorg/antlr/v4/runtime/RuleContext;->toString(Ljava/util/List;Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toStringTree()Ljava/lang/String;
    .registers 3

    .line 203
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/RuleContext;->toStringTree(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 198
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toStringTree(Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .registers 2

    .line 191
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
