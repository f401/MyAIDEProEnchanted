.class Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

.field final val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;Landroid/content/ComponentName;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    sget-boolean v0, Landroidj/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_40

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaServiceConnection.onServiceDisconnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->val$name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    :cond_40
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    :goto_4a
    return-void

    :cond_4b
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object v3, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object v3, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v0, v3}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    const/4 v1, 0x4

    iput v1, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$1:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    goto :goto_4a
.end method
