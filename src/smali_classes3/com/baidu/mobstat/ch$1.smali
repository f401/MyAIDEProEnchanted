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
    .registers 3

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    .line 137
    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch$1;->a:Lcom/baidu/mobstat/ch;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ch;->b()V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch$1;->a:Lcom/baidu/mobstat/ch;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ch;->c()V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/mobstat/ch$1;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
