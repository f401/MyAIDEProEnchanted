.class public interface abstract Lcom/bumptech/glide/load/engine/cache/MemoryCache;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract getCurrentSize()I
.end method

.method public abstract getMaxSize()I
.end method

.method public abstract put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
.end method

.method public abstract setSizeMultiplier(F)V
.end method

.method public abstract trimMemory(I)V
.end method
