.class Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

.field private final val$finalWindow:Landroid/view/Window;

.field private final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/view/View;Landroid/view/Window;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iput-object p2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->val$finalWindow:Landroid/view/Window;

    return-void
.end method

.method static access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;)Lorg/voiddog/dragbackactivity/DragBackDelegate;
    .registers 2

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    return-object v0
.end method

.method static synthetic access$1000008(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->def(Landroid/view/View;)V

    return-void
.end method

.method private def(Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 160
    :try_start_0
    invoke-static {p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->access$1000009(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    :cond_0
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->access$L1000002(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 162
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->access$L1000000(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->val$finalWindow:Landroid/view/Window;

    new-instance v2, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;

    iget-object v3, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->val$view:Landroid/view/View;

    invoke-direct {v2, p0, v0, v3}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;-><init>(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;Landroid/graphics/Bitmap;Landroid/view/View;)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v0, v2, v3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 148
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->access$L1000002(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->access$1000009(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->val$view:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->def(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
