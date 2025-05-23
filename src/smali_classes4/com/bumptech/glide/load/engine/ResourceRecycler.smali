.class Lcom/bumptech/glide/load/engine/ResourceRecycler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isRecycling:Z


# direct methods
.method constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;-><init>(Lcom/bumptech/glide/load/engine/ResourceRecycler$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public recycle(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_11
    return-void

    :cond_12
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    goto :goto_11
.end method
