.class Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final val$cb:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

.field final val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
