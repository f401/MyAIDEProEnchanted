.class Lorg/voiddog/dragbackactivity/DragBackDelegate$1;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/voiddog/dragbackactivity/DragBackDelegate;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

.field final val$key:Ljava/lang/String;

.field final val$lastActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iput-object p2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->val$lastActivity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 76
    nop

    :cond_1
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->val$lastActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_24

    .line 77
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->val$key:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->val$key:Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->remove(Ljava/lang/String;)Z

    .line 81
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->-$$Nest$fgetmActivity(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;

    invoke-direct {v2, p0, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;-><init>(Lorg/voiddog/dragbackactivity/DragBackDelegate$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_24
    return-void
.end method
