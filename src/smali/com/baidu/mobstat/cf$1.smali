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
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/baidu/mobstat/cf$1;->a:Lcom/baidu/mobstat/cf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 51
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_7

    goto :goto_18

    .line 53
    :cond_7
    iget-object p1, p0, Lcom/baidu/mobstat/cf$1;->a:Lcom/baidu/mobstat/cf;

    invoke-static {p1}, Lcom/baidu/mobstat/cf;->a(Lcom/baidu/mobstat/cf;)Lcom/baidu/mobstat/cf$a;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 54
    iget-object p1, p0, Lcom/baidu/mobstat/cf$1;->a:Lcom/baidu/mobstat/cf;

    invoke-static {p1}, Lcom/baidu/mobstat/cf;->a(Lcom/baidu/mobstat/cf;)Lcom/baidu/mobstat/cf$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mobstat/cf$a;->a()V

    :cond_18
    :goto_18
    return-void
.end method
