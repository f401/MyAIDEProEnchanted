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
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/baidu/mobstat/cf$2;->a:Lcom/baidu/mobstat/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 11

    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/mobstat/cf;->a(Z)V

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x9c4

    const/16 v4, 0x64

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    goto :goto_55

    .line 145
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-gez p1, :cond_55

    .line 146
    iget-object p1, p0, Lcom/baidu/mobstat/cf$2;->a:Lcom/baidu/mobstat/cf;

    invoke-static {p1}, Lcom/baidu/mobstat/cf;->b(Lcom/baidu/mobstat/cf;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_55

    .line 152
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4a

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x32

    cmp-long p1, v5, v7

    if-gtz p1, :cond_4a

    .line 154
    iget-object p1, p0, Lcom/baidu/mobstat/cf$2;->a:Lcom/baidu/mobstat/cf;

    invoke-static {p1}, Lcom/baidu/mobstat/cf;->b(Lcom/baidu/mobstat/cf;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_55

    :cond_4a
    if-le v0, v1, :cond_55

    .line 156
    iget-object p1, p0, Lcom/baidu/mobstat/cf$2;->a:Lcom/baidu/mobstat/cf;

    invoke-static {p1}, Lcom/baidu/mobstat/cf;->b(Lcom/baidu/mobstat/cf;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_55
    :goto_55
    return-void
.end method
