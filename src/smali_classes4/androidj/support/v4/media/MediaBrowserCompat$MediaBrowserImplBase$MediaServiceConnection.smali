.class Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaServiceConnection"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_16

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15
.end method


# virtual methods
.method isCurrent(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-eq v1, p0, :cond_46

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget v1, v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eq v1, v0, :cond_45

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 v0, 0x0

    :cond_46
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;

    invoke-direct {v0, p0, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method
