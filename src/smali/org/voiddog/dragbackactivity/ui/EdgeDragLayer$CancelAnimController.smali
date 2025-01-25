.class Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;
.super Ljava/lang/Object;
.source "EdgeDragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CancelAnimController"
.end annotation


# instance fields
.field final this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;


# direct methods
.method constructor <init>(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 307
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 308
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v1, v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dispatchDragEvent(I)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2f

    .line 310
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v0, p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 311
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object p1, p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    if-eqz p1, :cond_2f

    .line 312
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object p1, p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    invoke-interface {p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;->onCancelDrag()V

    :cond_2f
    return-void
.end method
