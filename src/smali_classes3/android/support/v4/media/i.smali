.class Landroid/support/v4/media/i;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final VH:Ljava/lang/String;

.field final Zo:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

.field final gn:Landroid/os/Bundle;

.field final u7:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Landroid/support/v4/media/i;->u7:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroid/support/v4/media/i;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    iput-object p4, p0, Landroid/support/v4/media/i;->VH:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/media/i;->gn:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/i;->j6(Ljava/util/List;)V

    return-void
.end method

.method j6(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/i;->u7:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->FH:Labcd/k;

    iget-object v1, p0, Landroid/support/v4/media/i;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->FH:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-interface {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/i;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    const-string v2, "MBServiceCompat"

    if-eq v0, v1, :cond_3d

    sget-boolean p1, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6:Z

    if-eqz p1, :cond_3c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/i;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/i;->VH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void

    :cond_3d
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/support/v4/media/i;->u7:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, p0, Landroid/support/v4/media/i;->gn:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Landroid/support/v4/media/i;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->FH:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    iget-object v1, p0, Landroid/support/v4/media/i;->VH:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/media/i;->gn:Landroid/os/Bundle;

    invoke-interface {v0, v1, p1, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->j6(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_58} :catch_59

    goto :goto_7c

    :catch_59
    move-exception p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling onLoadChildren() failed for id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/i;->VH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/i;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    return-void
.end method
