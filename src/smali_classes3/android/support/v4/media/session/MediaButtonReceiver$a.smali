.class Landroid/support/v4/media/session/MediaButtonReceiver$a;
.super Landroid/support/v4/media/MediaBrowserCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final FH:Landroid/content/Context;

.field private final Hw:Landroid/content/Intent;

.field private Zo:Landroid/support/v4/media/MediaBrowserCompat;

.field private final v5:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$b;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->FH:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->Hw:Landroid/content/Intent;

    iput-object p3, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->v5:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method

.method private Hw()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->Zo:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->DW()V

    iget-object v0, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->v5:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$a;->Hw()V

    return-void
.end method

.method public FH()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$a;->Hw()V

    return-void
.end method

.method public j6()V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->FH:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->Zo:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->FH()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iget-object v1, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->Hw:Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->j6(Landroid/view/KeyEvent;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v0

    const-string v1, "MediaButtonReceiver"

    const-string v2, "Failed to create a media controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$a;->Hw()V

    return-void
.end method

.method j6(Landroid/support/v4/media/MediaBrowserCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/session/MediaButtonReceiver$a;->Zo:Landroid/support/v4/media/MediaBrowserCompat;

    return-void
.end method
