.class Lcom/google/common/collect/AbstractBiMap$KeySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .registers 3

    .line 199
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 208
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 198
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .line 198
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$100(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_7
    return v0

    .line 215
    :cond_8
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
