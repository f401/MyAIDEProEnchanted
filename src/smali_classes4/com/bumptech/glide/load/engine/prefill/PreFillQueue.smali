.class final Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
.super Ljava/lang/Object;


# instance fields
.field private final bitmapsPerType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapsRemaining:I

.field private keyIndex:I

.field private final keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    goto :goto_18

    :cond_2e
    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    iget v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_25
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    :goto_34
    iput v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    return-object v0

    :cond_37
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_47
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    goto :goto_34
.end method
