.class Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->search(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final val$callback:Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;

.field final val$extras:Landroid/os/Bundle;

.field final val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$query:Ljava/lang/String;

    iput-object p4, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$query:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
