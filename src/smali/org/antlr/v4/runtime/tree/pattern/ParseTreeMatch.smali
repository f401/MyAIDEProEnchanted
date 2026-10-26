.class public Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;
.super Ljava/lang/Object;
.source "ParseTreeMatch.java"


# instance fields
.field private final labels:Lorg/antlr/v4/runtime/misc/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/MultiMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation
.end field

.field private final mismatchedNode:Lorg/antlr/v4/runtime/tree/ParseTree;

.field private final pattern:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

.field private final tree:Lorg/antlr/v4/runtime/tree/ParseTree;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;Lorg/antlr/v4/runtime/misc/MultiMap;Lorg/antlr/v4/runtime/tree/ParseTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;",
            "Lorg/antlr/v4/runtime/misc/MultiMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 67
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->tree:Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 68
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->pattern:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    .line 69
    iput-object p3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->labels:Lorg/antlr/v4/runtime/misc/MultiMap;

    .line 70
    iput-object p4, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->mismatchedNode:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "labels cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pattern cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tree cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->labels:Lorg/antlr/v4/runtime/misc/MultiMap;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    goto :goto_0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->labels:Lorg/antlr/v4/runtime/misc/MultiMap;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLabels()Lorg/antlr/v4/runtime/misc/MultiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/misc/MultiMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->labels:Lorg/antlr/v4/runtime/misc/MultiMap;

    return-object v0
.end method

.method public getMismatchedNode()Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->mismatchedNode:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object v0
.end method

.method public getPattern()Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->pattern:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    return-object v0
.end method

.method public getTree()Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->tree:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object v0
.end method

.method public succeeded()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->mismatchedNode:Lorg/antlr/v4/runtime/tree/ParseTree;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 193
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->succeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "succeeded"

    :goto_0
    const-string v1, "Match %s; found %d labels"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->getLabels()Lorg/antlr/v4/runtime/misc/MultiMap;

    move-result-object v3

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/misc/MultiMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "failed"

    goto :goto_0
.end method
