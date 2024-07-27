.class Lcom/termux/view/GestureAndScaleRecognizer$100000001;
.super Ljava/lang/Object;
.source "GestureAndScaleRecognizer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private final this$0:Lcom/termux/view/GestureAndScaleRecognizer;


# direct methods
.method constructor <init>(Lcom/termux/view/GestureAndScaleRecognizer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000001;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    return-void
.end method

.method static access$0(Lcom/termux/view/GestureAndScaleRecognizer$100000001;)Lcom/termux/view/GestureAndScaleRecognizer;
    .registers 2

    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000001;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    return-object v0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000001;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000001;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
