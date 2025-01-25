.class Landroid/support/v4/media/l;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final VH:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field final Zo:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/media/l;->VH:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroid/support/v4/media/l;->Zo:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method FH(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/l;->Zo:Landroid/support/v4/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/os/ResultReceiver;->DW(ILandroid/os/Bundle;)V

    return-void
.end method

.method j6(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/l;->Zo:Landroid/support/v4/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/os/ResultReceiver;->DW(ILandroid/os/Bundle;)V

    return-void
.end method

.method bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/l;->FH(Landroid/os/Bundle;)V

    return-void
.end method
