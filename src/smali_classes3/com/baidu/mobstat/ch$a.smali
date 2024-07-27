.class Lcom/baidu/mobstat/ch$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ch;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ch;Landroid/os/Looper;)V
    .registers 3

    .line 226
    iput-object p1, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    .line 227
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    .line 234
    packed-switch v0, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->h(Lcom/baidu/mobstat/ch;)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->i(Lcom/baidu/mobstat/ch;)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->j(Lcom/baidu/mobstat/ch;)V

    goto :goto_0

    .line 248
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    const-string v1, "autoconfig.key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
