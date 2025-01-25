.class Landroid/support/v4/media/MediaBrowserServiceCompat$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$c;
.implements Landroid/support/v4/media/y$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field DW:Ljava/lang/Object;

.field FH:Landroid/os/Messenger;

.field final Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->j6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;Landroid/support/v4/media/y$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/y$c<",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/media/m;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/m;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Ljava/lang/Object;Landroid/support/v4/media/y$c;)V

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    return-void
.end method

.method public j6(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->DW:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/y;->j6(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/y$a;
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_4e

    const/4 v1, 0x0

    const-string v2, "extra_client_version"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->FH:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_service_version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->FH:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "extra_messenger"

    invoke-static {v1, v3, v2}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->Zo:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6()Landroid/support/v4/media/session/b;

    move-result-object v2

    if-nez v2, :cond_3e

    move-object v2, v0

    goto :goto_42

    :cond_3e
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_42
    const-string v3, "extra_session_binder"

    invoke-static {v1, v3, v2}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_4f

    :cond_48
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->j6:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_4e
    move-object v1, v0

    :goto_4f
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    move-result-object p1

    if-nez p1, :cond_58

    return-object v0

    :cond_58
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->j6()Landroid/os/Bundle;

    throw v0
.end method

.method public onCreate()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/y;->j6(Landroid/content/Context;Landroid/support/v4/media/y$d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->DW:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/y;->j6(Ljava/lang/Object;)V

    return-void
.end method
