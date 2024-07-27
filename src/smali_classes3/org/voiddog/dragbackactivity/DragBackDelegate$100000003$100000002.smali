.class Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field private final this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;

.field private final val$bitmap:Landroid/graphics/Bitmap;

.field private final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;

    iput-object p2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;->val$view:Landroid/view/View;

    return-void
.end method

.method static access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;)Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;
    .registers 2

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;

    return-object v0
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 133
    if-nez p1, :cond_0

    .line 134
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;)Lorg/voiddog/dragbackactivity/DragBackDelegate;

    move-result-object v0

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->access$L1000002(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 138
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003$100000002;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;->access$1000008(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000003;Landroid/view/View;)V

    goto :goto_0
.end method
