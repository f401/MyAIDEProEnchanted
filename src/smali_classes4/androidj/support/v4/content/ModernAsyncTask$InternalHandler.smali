.class Landroidj/support/v4/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/content/ModernAsyncTask$AsyncTaskResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    :goto_9
    return-void

    :pswitch_a  #0x1
    iget-object v1, v0, Landroidj/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidj/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Landroidj/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroidj/support/v4/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_15  #0x2
    iget-object v1, v0, Landroidj/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidj/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Landroidj/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidj/support/v4/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_9

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a  #00000001
        :pswitch_15  #00000002
    .end packed-switch
.end method
