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
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->j6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;Landroid/support/v4/media/y$c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/y$c",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/media/m;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/m;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Ljava/lang/Object;Landroid/support/v4/media/y$c;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    return-void
.end method

.method public j6(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->DW:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/y;->j6(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/y$a;
    .registers 8

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const-string v0, "extra_client_version"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "extra_client_version"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->FH:Landroid/os/Messenger;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_service_version"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extra_messenger"

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->FH:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Zo:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6()Landroid/support/v4/media/session/b;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    const-string v3, "extra_session_binder"

    invoke-static {v2, v3, v0}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    move-object v0, v2

    :goto_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->j6:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->j6()Landroid/os/Bundle;

    throw v1

    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->j6()Landroid/os/Bundle;

    throw v1
.end method

.method public onCreate()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/y;->j6(Landroid/content/Context;Landroid/support/v4/media/y$d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->DW:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->DW:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/y;->j6(Ljava/lang/Object;)V

    return-void
.end method
