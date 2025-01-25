.class Landroidj/support/v4/app/FragmentActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/FragmentActivity;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/FragmentActivity$1;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_8
    :goto_8
    return-void

    :pswitch_9  #0x1
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$1;->this$0:Landroidj/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroidj/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$1;->this$0:Landroidj/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    goto :goto_8

    :pswitch_16  #0x2
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$1;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentActivity;->onResumeFragments()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$1;->this$0:Landroidj/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->execPendingActions()Z

    goto :goto_8

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_9  #00000001
        :pswitch_16  #00000002
    .end packed-switch
.end method
