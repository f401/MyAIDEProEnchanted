.class Lorg/xutils/image/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageLoader;->onError(Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/image/ImageLoader;


# direct methods
.method constructor <init>(Lorg/xutils/image/ImageLoader;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lorg/xutils/image/ImageLoader$2;->this$0:Lorg/xutils/image/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 444
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$2;->this$0:Lorg/xutils/image/ImageLoader;

    invoke-static {v0}, Lorg/xutils/image/ImageLoader;->access$000(Lorg/xutils/image/ImageLoader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 445
    if-eqz v0, :cond_2c

    .line 446
    iget-object v1, p0, Lorg/xutils/image/ImageLoader$2;->this$0:Lorg/xutils/image/ImageLoader;

    invoke-static {v1}, Lorg/xutils/image/ImageLoader;->access$100(Lorg/xutils/image/ImageLoader;)Lorg/xutils/image/MemCacheKey;

    move-result-object v1

    iget-object v1, v1, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/image/ImageLoader$2;->this$0:Lorg/xutils/image/ImageLoader;

    invoke-static {v2}, Lorg/xutils/image/ImageLoader;->access$200(Lorg/xutils/image/ImageLoader;)Lorg/xutils/image/ImageOptions;

    move-result-object v2

    iget-object v3, p0, Lorg/xutils/image/ImageLoader$2;->this$0:Lorg/xutils/image/ImageLoader;

    invoke-static {v3}, Lorg/xutils/image/ImageLoader;->access$300(Lorg/xutils/image/ImageLoader;)I

    move-result v3

    iget-object v4, p0, Lorg/xutils/image/ImageLoader$2;->this$0:Lorg/xutils/image/ImageLoader;

    invoke-static {v4}, Lorg/xutils/image/ImageLoader;->access$400(Lorg/xutils/image/ImageLoader;)Lorg/xutils/common/Callback$CommonCallback;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/xutils/image/ImageLoader;->doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    .line 450
    :goto_2b
    return-void

    .line 448
    :cond_2c
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$2;->this$0:Lorg/xutils/image/ImageLoader;

    invoke-virtual {v0}, Lorg/xutils/image/ImageLoader;->onFinished()V

    goto :goto_2b
.end method
