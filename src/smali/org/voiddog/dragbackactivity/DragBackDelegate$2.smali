.class Lorg/voiddog/dragbackactivity/DragBackDelegate$2;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

.field final val$finalWindow:Landroid/view/Window;

.field final val$view:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$mdef(Lorg/voiddog/dragbackactivity/DragBackDelegate$2;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->def(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/view/View;Landroid/view/Window;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iput-object p2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->val$finalWindow:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private def(Landroid/view/View;)V
    .registers 4

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    :try_start_3
    invoke-static {p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    goto :goto_13

    :catchall_8
    move-exception p1

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_1b

    .line 165
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->-$$Nest$memptyBitmap(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 167
    :cond_1b
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->-$$Nest$fgetcode(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 122
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->-$$Nest$fgetmActivity(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 125
    :cond_d
    :try_start_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3c

    .line 127
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->val$finalWindow:Landroid/view/Window;

    new-instance v2, Lorg/voiddog/dragbackactivity/DragBackDelegate$2$1;

    invoke-direct {v2, p0, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$2$1;-><init>(Lorg/voiddog/dragbackactivity/DragBackDelegate$2;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/os/Handler;

    .line 143
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    goto :goto_5b

    .line 145
    :cond_3c
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->val$view:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->def(Landroid/view/View;)V
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_42

    goto :goto_5b

    :catchall_42
    move-exception v0

    .line 148
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->-$$Nest$fgetcode(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->-$$Nest$memptyBitmap(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_5b
    return-void
.end method
