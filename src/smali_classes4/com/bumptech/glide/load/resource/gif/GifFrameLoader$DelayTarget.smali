.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final index:I

.field private resource:Landroid/graphics/Bitmap;

.field private final targetTime:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .registers 6

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    iput p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    return v0
.end method


# virtual methods
.method public getResource()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
