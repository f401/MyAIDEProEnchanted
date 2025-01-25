.class final Lcom/google/common/collect/HashBiMap$EntrySet;
.super Lcom/google/common/collect/HashBiMap$View;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap$View",
        "<TK;TV;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .registers 2

    .line 806
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 807
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$View;-><init>(Lcom/google/common/collect/HashBiMap;)V

    .line 808
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 812
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_25

    .line 813
    check-cast p1, Ljava/util/Map$Entry;

    .line 814
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 815
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 816
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

    move-result v1

    .line 817
    const/4 v3, -0x1

    if-eq v1, v3, :cond_25

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v1, v3, v1

    invoke-static {v2, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    .line 819
    :cond_25
    return v0
.end method

.method bridge synthetic forEntry(I)Ljava/lang/Object;
    .registers 3

    .line 805
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$EntrySet;->forEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method forEntry(I)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 841
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntryForKey;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/HashBiMap$EntryForKey;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 825
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2e

    .line 826
    check-cast p1, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 828
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 829
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 830
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    .line 831
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2e

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 832
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    .line 833
    const/4 v0, 0x1

    .line 836
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method
