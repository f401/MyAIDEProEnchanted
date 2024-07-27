.class Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

.field private final val$key:Ljava/lang/String;

.field private final val$lastActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iput-object p2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->val$lastActivity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->val$key:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;)Lorg/voiddog/dragbackactivity/DragBackDelegate;
    .registers 2

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->val$lastActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->val$key:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->val$key:Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->remove(Ljava/lang/String;)Z

    .line 81
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->access$L1000000(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;

    invoke-direct {v2, p0, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;-><init>(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
