.class Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final val$thisConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/content/ServiceConnection;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;->val$thisConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;->val$thisConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    :cond_14
    return-void
.end method
