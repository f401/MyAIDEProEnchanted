.class Lcom/google/common/collect/MutableClassToInstanceMap$2;
.super Lcom/google/common/collect/ForwardingSet;
.source "MutableClassToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MutableClassToInstanceMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Class",
        "<+TB;>;TB;>;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/collect/MutableClassToInstanceMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MutableClassToInstanceMap;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/google/common/collect/MutableClassToInstanceMap$2;->this$0:Lcom/google/common/collect/MutableClassToInstanceMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap$2;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap$2;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/common/collect/MutableClassToInstanceMap$2;->this$0:Lcom/google/common/collect/MutableClassToInstanceMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MutableClassToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap$2$1;

    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap$2;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MutableClassToInstanceMap$2$1;-><init>(Lcom/google/common/collect/MutableClassToInstanceMap$2;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap$2;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MutableClassToInstanceMap$2;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
