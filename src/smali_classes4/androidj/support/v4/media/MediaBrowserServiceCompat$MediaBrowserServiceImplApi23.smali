.class Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
.super Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

# interfaces
.implements Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplApi23"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi23;->createService(Landroid/content/Context;Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->mServiceObj:Ljava/lang/Object;

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V

    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;

    invoke-direct {v0, p0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;Ljava/lang/Object;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method
