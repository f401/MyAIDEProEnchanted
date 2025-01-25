.class Landroid/support/v4/media/MediaBrowserServiceCompat$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final j6:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v1, Landroid/support/v4/media/v;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/v;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public DW(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .registers 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p3, :cond_9

    goto :goto_1b

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v7, Landroid/support/v4/media/x;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/x;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public j6(Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v1, Landroid/support/v4/media/q;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/q;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j6(Landroid/support/v4/media/MediaBrowserServiceCompat$j;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v1, Landroid/support/v4/media/u;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/u;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j6(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .registers 13

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v7, Landroid/support/v4/media/p;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/p;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    return-void

    :cond_1b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Package/uid mismatch: uid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " package="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .registers 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p3, :cond_9

    goto :goto_1b

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v7, Landroid/support/v4/media/w;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/w;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public j6(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .registers 13

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v7, Landroid/support/v4/media/r;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/r;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j6(Ljava/lang/String;Landroid/os/IBinder;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v1, Landroid/support/v4/media/s;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/s;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j6(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-nez p2, :cond_9

    goto :goto_15

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v1, Landroid/support/v4/media/t;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/t;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6(Ljava/lang/Runnable;)V

    :cond_15
    :goto_15
    return-void
.end method
