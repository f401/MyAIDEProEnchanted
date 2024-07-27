.class Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;

.field private final val$bm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;

    iput-object p2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;->val$bm:Landroid/graphics/Bitmap;

    return-void
.end method

.method static access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;)Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;
    .registers 2

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;

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

    .line 85
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;)Lorg/voiddog/dragbackactivity/DragBackDelegate;

    move-result-object v0

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;

    invoke-static {v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;)Lorg/voiddog/dragbackactivity/DragBackDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;->val$bm:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->access$1000005(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/graphics/Bitmap;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->setDragEnable(Z)V

    .line 86
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;->access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001;)Lorg/voiddog/dragbackactivity/DragBackDelegate;

    move-result-object v0

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000001$100000000;->val$bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->setBlurBg(Landroid/graphics/Bitmap;)V

    return-void
.end method
