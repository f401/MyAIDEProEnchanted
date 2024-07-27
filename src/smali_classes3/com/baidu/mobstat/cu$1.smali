.class Lcom/baidu/mobstat/cu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/cg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cu;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/cu;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cu;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/baidu/mobstat/cu$1;->a:Lcom/baidu/mobstat/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .registers 2

    .line 134
    invoke-static {p1}, Lcom/baidu/mobstat/cm;->a(Landroid/view/KeyEvent;)V

    .line 135
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 5

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 113
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/mobstat/cu;->a(Z)V

    .line 115
    iget-object v0, p0, Lcom/baidu/mobstat/cu$1;->a:Lcom/baidu/mobstat/cu;

    invoke-static {v0}, Lcom/baidu/mobstat/cu;->a(Lcom/baidu/mobstat/cu;)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/baidu/mobstat/cu$1;->a:Lcom/baidu/mobstat/cu;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cu;->a(Lcom/baidu/mobstat/cu;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/cu$1;->a:Lcom/baidu/mobstat/cu;

    invoke-static {v0}, Lcom/baidu/mobstat/cu;->a(Lcom/baidu/mobstat/cu;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
