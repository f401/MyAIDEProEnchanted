.class public Lorg/antlr/v4/runtime/tree/ParseTreeProperty;
.super Ljava/lang/Object;
.source "ParseTreeProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected annotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/tree/ParseTreeProperty;->annotations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")TV;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/ParseTreeProperty;->annotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "TV;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/ParseTreeProperty;->annotations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeFrom(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")TV;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/ParseTreeProperty;->annotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
