.class Landroidj/support/v4/content/LocalBroadcastManager$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Landroidj/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/content/LocalBroadcastManager$1;->this$0:Landroidj/support/v4/content/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_8
    return-void

    :pswitch_9  #0x1
    iget-object v0, p0, Landroidj/support/v4/content/LocalBroadcastManager$1;->this$0:Landroidj/support/v4/content/LocalBroadcastManager;

    invoke-static {v0}, Landroidj/support/v4/content/LocalBroadcastManager;->access$000(Landroidj/support/v4/content/LocalBroadcastManager;)V

    goto :goto_8

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9  #00000001
    .end packed-switch
.end method
