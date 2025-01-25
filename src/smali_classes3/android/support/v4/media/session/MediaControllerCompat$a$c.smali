.class Landroid/support/v4/media/session/MediaControllerCompat$a$c;
.super Landroid/support/v4/media/session/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final j6:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/MediaControllerCompat$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/media/session/a$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public DW(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_f

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public Hw(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_e
    return-void
.end method

.method public VH(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_14
    return-void
.end method

.method public XG()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_10
    return-void
.end method

.method public gn(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_14
    return-void
.end method

.method public j6(Landroid/support/v4/media/MediaMetadataCompat;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_f

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public j6(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .registers 11

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    new-instance v8, Landroid/support/v4/media/session/MediaControllerCompat$f;

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->j6:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->DW:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->FH:I

    iget v6, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->Hw:I

    iget v7, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->v5:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/MediaControllerCompat$f;-><init>(IIIII)V

    goto :goto_1f

    :cond_1e
    move-object v8, v1

    :goto_1f
    const/4 p1, 0x4

    invoke-virtual {v0, p1, v8, v1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_23
    return-void
.end method

.method public j6(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_f

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public j6(Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_f

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public tp(Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_14
    return-void
.end method

.method public u7(Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_14
    return-void
.end method

.method public v5(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_f

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->j6(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method
