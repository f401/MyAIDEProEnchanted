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
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/baidu/mobstat/ch$c;->a:Lcom/baidu/mobstat/ch;

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 168
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_14

    .line 175
    :cond_9
    iget-object p1, p0, Lcom/baidu/mobstat/ch$c;->a:Lcom/baidu/mobstat/ch;

    invoke-static {p1}, Lcom/baidu/mobstat/ch;->c(Lcom/baidu/mobstat/ch;)V

    goto :goto_14

    .line 171
    :cond_f
    iget-object p1, p0, Lcom/baidu/mobstat/ch$c;->a:Lcom/baidu/mobstat/ch;

    invoke-static {p1}, Lcom/baidu/mobstat/ch;->b(Lcom/baidu/mobstat/ch;)V

    :goto_14
    return-void
.end method
