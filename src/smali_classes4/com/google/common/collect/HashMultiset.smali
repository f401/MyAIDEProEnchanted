.class public Lcom/google/common/collect/HashMultiset;
.super Lcom/google/common/collect/AbstractMapBasedMultiset;
.source "HashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMapBasedMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(I)V

    .line 76
    return-void
.end method

.method public static create()Lcom/google/common/collect/HashMultiset;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashMultiset",
            "<TE;>;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(I)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashMultiset",
            "<TE;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/common/collect/HashMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/HashMultiset",
            "<TE;>;"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->inferDistinctElements(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(I)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 70
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 71
    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method init(I)V
    .registers 3

    .line 80
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/HashMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    .line 81
    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method
