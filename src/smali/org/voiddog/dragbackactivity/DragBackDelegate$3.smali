.class Lorg/voiddog/dragbackactivity/DragBackDelegate$3;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"

# interfaces
.implements Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/voiddog/dragbackactivity/DragBackDelegate;->setupDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$3;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDrag()V
    .locals 0

    return-void
.end method

.method public onDragBackEnd()V
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$3;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->finishActivity()V

    return-void
.end method

.method public onDragEvent(I)V
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate$3;->this$0:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->dragEvent(I)V

    return-void
.end method
