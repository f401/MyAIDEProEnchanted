.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplApi21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaControllerCompat$a;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Landroid/support/v4/media/session/b;

.field private Hw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v4/media/session/MediaControllerCompat$a;",
            "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->DW:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->Hw:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->DW()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/c;->j6(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->j6:Ljava/lang/Object;

    if-eqz p1, :cond_29

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6()Landroid/support/v4/media/session/b;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->FH:Landroid/support/v4/media/session/b;

    if-nez p1, :cond_28

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->DW()V

    :cond_28
    return-void

    :cond_29
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method private DW()V
    .registers 4

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/os/Handler;)V

    const-string v1, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic j6(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/b;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->FH:Landroid/support/v4/media/session/b;

    return-object p1
.end method

.method private j6()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->FH:Landroid/support/v4/media/session/b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->DW:Ljava/util/List;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaControllerCompat$a;

    new-instance v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;

    invoke-direct {v3, v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    iget-object v4, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->Hw:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/support/v4/media/session/MediaControllerCompat$a;->FH:Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3c

    :try_start_27
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->FH:Landroid/support/v4/media/session/b;

    invoke-interface {v2, v3}, Landroid/support/v4/media/session/b;->j6(Landroid/support/v4/media/session/a;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3c

    goto :goto_e

    :catch_2d
    move-exception v1

    :try_start_2e
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in registerCallback."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3c

    goto :goto_40

    :goto_3f
    throw v1

    :goto_40
    goto :goto_3f
.end method

.method static synthetic j6(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->j6()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->j6:Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/media/session/c;->j6(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public j6(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->j6:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->j6(Ljava/lang/Object;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
