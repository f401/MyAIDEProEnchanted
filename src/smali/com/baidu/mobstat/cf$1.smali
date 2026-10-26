.class Lcom/baidu/mobstat/cf$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/cf;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cf;Landroid/os/Looper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/mobstat/cf$1;->a:Lcom/baidu/mobstat/cf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/cf$1;->a:Lcom/baidu/mobstat/cf;

    invoke-static {v0}, Lcom/baidu/mobstat/cf;->a(Lcom/baidu/mobstat/cf;)Lcom/baidu/mobstat/cf$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/baidu/mobstat/cf$1;->a:Lcom/baidu/mobstat/cf;

    invoke-static {v0}, Lcom/baidu/mobstat/cf;->a(Lcom/baidu/mobstat/cf;)Lcom/baidu/mobstat/cf$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobstat/cf$a;->a()V

    goto :goto_0
.end method
