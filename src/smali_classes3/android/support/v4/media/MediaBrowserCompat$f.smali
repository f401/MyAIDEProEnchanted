.class Landroid/support/v4/media/MediaBrowserCompat$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$e;
.implements Landroid/support/v4/media/MediaBrowserCompat$j;
.implements Landroid/support/v4/media/MediaBrowserCompat$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field protected final DW:Ljava/lang/Object;

.field protected final FH:Landroid/os/Bundle;

.field protected final Hw:Landroid/support/v4/media/MediaBrowserCompat$a;

.field protected VH:Landroid/os/Messenger;

.field protected Zo:Landroid/support/v4/media/MediaBrowserCompat$l;

.field private gn:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final j6:Landroid/content/Context;

.field private final v5:Labcd/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$b;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->Hw:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->v5:Labcd/k;

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->j6:Landroid/content/Context;

    if-nez p4, :cond_1a

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_1a
    const-string v0, "extra_client_version"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->FH:Landroid/os/Bundle;

    invoke-virtual {p3, p0}, Landroid/support/v4/media/MediaBrowserCompat$b;->j6(Landroid/support/v4/media/MediaBrowserCompat$b$a;)V

    iget-object p3, p3, Landroid/support/v4/media/MediaBrowserCompat$b;->j6:Ljava/lang/Object;

    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/media/f;->j6(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->DW:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 1

    return-void
.end method

.method public FH()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->Zo:Landroid/support/v4/media/MediaBrowserCompat$l;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->VH:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->gn:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->Hw:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$a;->j6(Landroid/os/Messenger;)V

    return-void
.end method

.method public Hw()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->gn:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->DW:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/f;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->gn:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    :cond_10
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->gn:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public connect()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->DW:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/f;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method public disconnect()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->Zo:Landroid/support/v4/media/MediaBrowserCompat$l;

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->VH:Landroid/os/Messenger;

    if-eqz v1, :cond_14

    :try_start_8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$l;->FH(Landroid/os/Messenger;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Remote error unregistering client messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->DW:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/f;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method public j6()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->DW:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/f;->FH(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v1, "extra_messenger"

    invoke-static {v0, v1}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_38

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->FH:Landroid/os/Bundle;

    invoke-direct {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$l;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->Zo:Landroid/support/v4/media/MediaBrowserCompat$l;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->Hw:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->VH:Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->Hw:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->j6(Landroid/os/Messenger;)V

    :try_start_28
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->Zo:Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->VH:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$l;->DW(Landroid/os/Messenger;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception v1

    const-string v1, "MediaBrowserCompat"

    const-string v2, "Remote error registering client messenger."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    const-string v1, "extra_session_binder"

    invoke-static {v0, v1}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b$a;->j6(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->DW:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/f;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6(Ljava/lang/Object;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->gn:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    :cond_50
    return-void
.end method

.method public j6(Landroid/os/Messenger;)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public j6(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->VH:Landroid/os/Messenger;

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->v5:Labcd/k;

    invoke-virtual {p1, p2}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$m;

    if-nez p1, :cond_2a

    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->j6:Z

    if-eqz p1, :cond_29

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MediaBrowserCompat"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void

    :cond_2a
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->j6:Landroid/content/Context;

    invoke-virtual {p1, v0, p4}, Landroid/support/v4/media/MediaBrowserCompat$m;->j6(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$n;

    move-result-object p1

    if-eqz p1, :cond_47

    if-nez p4, :cond_3e

    if-nez p3, :cond_3a

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$n;->j6(Ljava/lang/String;)V

    goto :goto_47

    :cond_3a
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$n;->j6(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_47

    :cond_3e
    if-nez p3, :cond_44

    invoke-virtual {p1, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$n;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_47

    :cond_44
    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$n;->j6(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    :cond_47
    :goto_47
    return-void
.end method
