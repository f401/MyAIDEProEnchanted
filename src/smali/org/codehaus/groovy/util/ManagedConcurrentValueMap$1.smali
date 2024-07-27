.class Lorg/codehaus/groovy/util/ManagedConcurrentValueMap$1;
.super Lorg/codehaus/groovy/util/ManagedReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/groovy/util/ManagedReference",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final Hw:Ljava/lang/Object;

.field final v5:Lorg/codehaus/groovy/util/ManagedConcurrentValueMap;


# virtual methods
.method public DW()V
    .registers 4

    invoke-super {p0}, Lorg/codehaus/groovy/util/ManagedReference;->DW()V

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedConcurrentValueMap$1;->v5:Lorg/codehaus/groovy/util/ManagedConcurrentValueMap;

    invoke-static {v0}, Lorg/codehaus/groovy/util/ManagedConcurrentValueMap;->j6(Lorg/codehaus/groovy/util/ManagedConcurrentValueMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/groovy/util/ManagedConcurrentValueMap$1;->Hw:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
