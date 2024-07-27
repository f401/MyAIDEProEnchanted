.class Lcom/termux/view/GestureAndScaleRecognizer$100000002;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureAndScaleRecognizer.java"


# instance fields
.field private final this$0:Lcom/termux/view/GestureAndScaleRecognizer;


# direct methods
.method constructor <init>(Lcom/termux/view/GestureAndScaleRecognizer;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    iput-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000002;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    return-void
.end method

.method static access$0(Lcom/termux/view/GestureAndScaleRecognizer$100000002;)Lcom/termux/view/GestureAndScaleRecognizer;
    .registers 2

    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000002;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    return-object v0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$100000002;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onScale(FFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 80
    const/4 v0, 0x1

    return v0
.end method
