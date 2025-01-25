.class public Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;
.super Ljava/lang/Object;
.source "ParseTreeMatch.java"


# instance fields
.field private final labels:Lorg/antlr/v4/runtime/misc/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/MultiMap<",
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;",
            "Lorg/antlr/v4/runtime/misc/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_22

    if-eqz p2, :cond_1a

    if-eqz p3, :cond_12

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
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "labels cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pattern cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tree cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 3

    .line 91
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->labels:Lorg/antlr/v4/runtime/misc/MultiMap;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1e

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1e

    .line 96
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->labels:Lorg/antlr/v4/runtime/misc/MultiMap;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_e

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_e
    return-object p1
.end method

.method public getLabels()Lorg/antlr/v4/runtime/misc/MultiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/misc/MultiMap<",
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
    .registers 2

    .line 155
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->mismatchedNode:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object v0
.end method

.method public getPattern()Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;
    .registers 2

    .line 175
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->pattern:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;

    return-object v0
.end method

.method public getTree()Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 2

    .line 185
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->tree:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object v0
.end method

.method public succeeded()Z
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->mismatchedNode:Lorg/antlr/v4/runtime/tree/ParseTree;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 193
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->succeeded()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "succeeded"

    goto :goto_b

    :cond_9
    const-string v0, "failed"

    :goto_b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->getLabels()Lorg/antlr/v4/runtime/misc/MultiMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/MultiMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Match %s; found %d labels"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
