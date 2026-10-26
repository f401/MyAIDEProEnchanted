.class Lorg/voiddog/dragbackactivity/DragBackDelegate$2$1;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$2;

.field final val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2$1;->this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$2;

    iput-object p2, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 134
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2$1;->this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$2;

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->-$$Nest$fgetcode(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 138
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2$1;->this$1:Lorg/voiddog/dragbackactivity/DragBackDelegate$2;

    iget-object v1, v0, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;->-$$Nest$mdef(Lorg/voiddog/dragbackactivity/DragBackDelegate$2;Landroid/view/View;)V

    goto :goto_0
.end method
