.class Lcom/termux/view/GestureAndScaleRecognizer$100000000;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureAndScaleRecognizer.java"


# instance fields
.field private final this$0:Lcom/termux/view/GestureAndScaleRecognizer;


# direct methods
.method constructor <init>(Lcom/termux/view/GestureAndScaleRecognizer;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000000;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    return-void
.end method

.method static access$0(Lcom/termux/view/GestureAndScaleRecognizer$100000000;)Lcom/termux/view/GestureAndScaleRecognizer;
    .registers 2

    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000000;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    return-object v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000000;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onDown(FF)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000000;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onFling(Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000000;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 56
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000000;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/termux/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000000;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onScroll(Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
