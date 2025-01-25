.class Lcom/baidu/mobstat/ch$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ch;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ch;Landroid/os/Looper;)V
    .registers 3

    .line 129
    iput-object p1, p0, Lcom/baidu/mobstat/ch$1;->a:Lcom/baidu/mobstat/ch;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 136
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_18

    goto :goto_17

    .line 147
    :pswitch_6  #0x22
    iget-object p1, p0, Lcom/baidu/mobstat/ch$1;->a:Lcom/baidu/mobstat/ch;

    invoke-static {p1}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)V

    goto :goto_17

    .line 143
    :pswitch_c  #0x21
    iget-object p1, p0, Lcom/baidu/mobstat/ch$1;->a:Lcom/baidu/mobstat/ch;

    invoke-virtual {p1}, Lcom/baidu/mobstat/ch;->c()V

    goto :goto_17

    .line 139
    :pswitch_12  #0x20
    iget-object p1, p0, Lcom/baidu/mobstat/ch$1;->a:Lcom/baidu/mobstat/ch;

    invoke-virtual {p1}, Lcom/baidu/mobstat/ch;->b()V

    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x20
        :pswitch_12  #00000020
        :pswitch_c  #00000021
        :pswitch_6  #00000022
    .end packed-switch
.end method
