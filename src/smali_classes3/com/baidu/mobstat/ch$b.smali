.class Lcom/baidu/mobstat/ch$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ce$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ch;


# direct methods
.method private constructor <init>(Lcom/baidu/mobstat/ch;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/baidu/mobstat/ch$b;->a:Lcom/baidu/mobstat/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobstat/ch;Lcom/baidu/mobstat/ch$1;)V
    .registers 3

    .line 196
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch$b;-><init>(Lcom/baidu/mobstat/ch;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/baidu/mobstat/ch$b;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->e(Lcom/baidu/mobstat/ch;)V

    .line 201
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/baidu/mobstat/ch$b;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->g(Lcom/baidu/mobstat/ch;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 217
    const-string v2, "autoconfig.key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 219
    iget-object v1, p0, Lcom/baidu/mobstat/ch$b;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v1}, Lcom/baidu/mobstat/ch;->g(Lcom/baidu/mobstat/ch;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/baidu/mobstat/ch$b;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;Z)V

    .line 211
    return-void
.end method

.method public b()V
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/baidu/mobstat/ch$b;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->f(Lcom/baidu/mobstat/ch;)V

    .line 206
    return-void
.end method
