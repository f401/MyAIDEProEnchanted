.class Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$1;

.field final val$bm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate$1;Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;->this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$1;

    iput-object p2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 85
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;->this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$1;

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;->this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$1;

    iget-object v1, v1, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iget-object v2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->-$$Nest$mverifyBitmap(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/graphics/Bitmap;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->setDragEnable(Z)V

    .line 86
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;->this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$1;

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->setBlurBg(Landroid/graphics/Bitmap;)V

    return-void
.end method
