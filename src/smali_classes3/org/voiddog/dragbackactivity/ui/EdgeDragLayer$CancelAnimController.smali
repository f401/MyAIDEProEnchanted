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
.field private final this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;


# direct methods
.method public constructor <init>(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;)V
    .registers 2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    return-void
.end method

.method static access$0(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;)Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;
    .registers 2

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ValueAnimator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 307
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 308
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v2, v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dispatchDragEvent(I)V

    .line 309
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v1, v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 311
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;->this$0:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v0, v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    invoke-interface {v0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;->onCancelDrag()V

    :cond_0
    return-void
.end method
