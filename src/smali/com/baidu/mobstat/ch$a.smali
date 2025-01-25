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

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_29

    .line 248
    :pswitch_6  #0x18
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 250
    const-string v0, "autoconfig.key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;Ljava/lang/String;)V

    goto :goto_29

    .line 244
    :pswitch_18  #0x17
    iget-object p1, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    invoke-static {p1}, Lcom/baidu/mobstat/ch;->j(Lcom/baidu/mobstat/ch;)V

    goto :goto_29

    .line 240
    :pswitch_1e  #0x16
    iget-object p1, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    invoke-static {p1}, Lcom/baidu/mobstat/ch;->i(Lcom/baidu/mobstat/ch;)V

    goto :goto_29

    .line 236
    :pswitch_24  #0x15
    iget-object p1, p0, Lcom/baidu/mobstat/ch$a;->a:Lcom/baidu/mobstat/ch;

    invoke-static {p1}, Lcom/baidu/mobstat/ch;->h(Lcom/baidu/mobstat/ch;)V

    :cond_29
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x15
        :pswitch_24  #00000015
        :pswitch_1e  #00000016
        :pswitch_18  #00000017
        :pswitch_6  #00000018
    .end packed-switch
.end method
