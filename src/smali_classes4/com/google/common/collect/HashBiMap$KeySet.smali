.class final Lcom/google/common/collect/HashBiMap$KeySet;
.super Lcom/google/common/collect/HashBiMap$View;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap$View",
        "<TK;TV;TK;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .registers 2

    .line 734
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$KeySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 735
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$View;-><init>(Lcom/google/common/collect/HashBiMap;)V

    .line 736
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 745
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$KeySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method forEntry(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$KeySet;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 750
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 751
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$KeySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v1

    .line 752
    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 753
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$KeySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    .line 754
    const/4 v0, 0x1

    .line 756
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
