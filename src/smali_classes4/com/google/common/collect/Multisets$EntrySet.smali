.class abstract Lcom/google/common/collect/Multisets$EntrySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 996
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1036
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 1037
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1001
    instance-of v1, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v1, :cond_d

    .line 1006
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 1007
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    if-gtz v1, :cond_e

    .line 1013
    :cond_d
    :goto_d
    return v0

    .line 1010
    :cond_e
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 1011
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method abstract multiset()Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1020
    instance-of v1, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v1, :cond_19

    .line 1021
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 1022
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 1023
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 1024
    if-eqz v2, :cond_19

    .line 1027
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v3

    .line 1028
    invoke-interface {v3, v1, v2, v0}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    .line 1031
    :cond_19
    return v0
.end method
