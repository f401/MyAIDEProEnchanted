.class Lcom/baidu/mobstat/cf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/cg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cf;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/cf;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cf;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/baidu/mobstat/cf$2;->a:Lcom/baidu/mobstat/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 10

    const-wide/16 v8, 0x9c4

    const/4 v7, 0x3

    const/16 v6, 0x64

    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/mobstat/cf;->a(Z)V

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/baidu/mobstat/cf$2;->a:Lcom/baidu/mobstat/cf;

    invoke-static {v0}, Lcom/baidu/mobstat/cf;->b(Lcom/baidu/mobstat/cf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x32

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/baidu/mobstat/cf$2;->a:Lcom/baidu/mobstat/cf;

    invoke-static {v0}, Lcom/baidu/mobstat/cf;->b(Lcom/baidu/mobstat/cf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    if-le v0, v7, :cond_0

    .line 156
    iget-object v0, p0, Lcom/baidu/mobstat/cf$2;->a:Lcom/baidu/mobstat/cf;

    invoke-static {v0}, Lcom/baidu/mobstat/cf;->b(Lcom/baidu/mobstat/cf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
