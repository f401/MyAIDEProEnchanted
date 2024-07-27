.class Lorg/voiddog/dragbackactivity/DragBackDelegate$100000004;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;


# instance fields
.field private final this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000004;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    return-void
.end method

.method static access$0(Lorg/voiddog/dragbackactivity/DragBackDelegate$100000004;)Lorg/voiddog/dragbackactivity/DragBackDelegate;
    .registers 2

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000004;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    return-object v0
.end method


# virtual methods
.method public onCancelDrag()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onDragBackEnd()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000004;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->finishActivity()V

    return-void
.end method

.method public onDragEvent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$100000004;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->dragEvent(I)V

    return-void
.end method
