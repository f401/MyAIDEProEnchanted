.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLoaderCallback"
.end annotation


# static fields
.field public static final MSG_CLEAR:I = 0x2

.field public static final MSG_DELAY:I = 0x1


# instance fields
.field final this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    move v0, v1

    :goto_f
    return v0

    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_1c
    const/4 v0, 0x0

    goto :goto_f
.end method
