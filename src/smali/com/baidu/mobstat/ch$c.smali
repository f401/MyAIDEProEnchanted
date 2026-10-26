.class Lcom/baidu/mobstat/ch$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ch;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ch;Landroid/os/Looper;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/baidu/mobstat/ch$c;->a:Lcom/baidu/mobstat/ch;

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch$c;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->c(Lcom/baidu/mobstat/ch;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch$c;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->b(Lcom/baidu/mobstat/ch;)V

    goto :goto_0
.end method
