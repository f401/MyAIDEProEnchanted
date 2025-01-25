.class public Lorg/ahocorasick/interval/IntervalTree;
.super Ljava/lang/Object;
.source "IntervalTree.java"


# instance fields
.field private rootNode:Lorg/ahocorasick/interval/IntervalNode;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    .line 13
    new-instance v0, Lorg/ahocorasick/interval/IntervalNode;

    invoke-direct {v0, p1}, Lorg/ahocorasick/interval/IntervalNode;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    return-void
.end method


# virtual methods
.method public findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {v0, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeOverlaps(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/ahocorasick/interval/IntervalableComparatorBySize;

    invoke-direct {v0}, Lorg/ahocorasick/interval/IntervalableComparatorBySize;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/interval/Intervalable;

    .line 25
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_11

    .line 30
    :cond_24
    invoke-virtual {p0, v2}, Lorg/ahocorasick/interval/IntervalTree;->findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    .line 34
    :cond_2c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ahocorasick/interval/Intervalable;

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    .line 39
    :cond_40
    new-instance v0, Lorg/ahocorasick/interval/IntervalableComparatorByPosition;

    invoke-direct {v0}, Lorg/ahocorasick/interval/IntervalableComparatorByPosition;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method
