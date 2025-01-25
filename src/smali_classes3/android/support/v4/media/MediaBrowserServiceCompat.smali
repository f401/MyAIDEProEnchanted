.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompat$a;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$b;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$c;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$d;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$e;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$f;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$g;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$h;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$i;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$j;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$k;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$l;
    }
.end annotation


# static fields
.field static final j6:Z


# instance fields
.field private DW:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

.field final FH:Labcd/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk<",
            "Landroid/os/IBinder;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$b;",
            ">;"
        }
    .end annotation
.end field

.field Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

.field Zo:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->FH:Labcd/k;

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    return-void
.end method


# virtual methods
.method DW(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/ResultReceiver;)V
    .registers 6

    new-instance v0, Landroid/support/v4/media/k;

    invoke-direct {v0, p0, p1, p4}, Landroid/support/v4/media/k;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->DW(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->DW()Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    :cond_14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6(I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method public DW(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public abstract j6(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$a;
.end method

.method j6(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne v0, v1, :cond_16

    if-ne p2, v1, :cond_16

    return-object p1

    :cond_16
    mul-int v1, p2, v0

    add-int v2, v1, p2

    if-ltz v0, :cond_35

    const/4 v0, 0x1

    if-lt p2, v0, :cond_35

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt v1, p2, :cond_26

    goto :goto_35

    :cond_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le v2, p2, :cond_30

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :cond_30
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_35
    :goto_35
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/ResultReceiver;)V
    .registers 6

    new-instance v0, Landroid/support/v4/media/l;

    invoke-direct {v0, p0, p1, p4}, Landroid/support/v4/media/l;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    const/4 p3, 0x0

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->DW()Z

    move-result p3

    if-eqz p3, :cond_14

    return-void

    :cond_14
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onCustomAction must call detach() or sendResult() or sendError() before returning for action="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extras="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->DW(Landroid/os/Bundle;)V

    return-void
.end method

.method j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/Bundle;)V
    .registers 11

    new-instance v6, Landroid/support/v4/media/i;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/i;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    if-nez p3, :cond_13

    invoke-virtual {p0, p1, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    goto :goto_16

    :cond_13
    invoke-virtual {p0, p1, v6, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;Landroid/os/Bundle;)V

    :goto_16
    const/4 p3, 0x0

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-virtual {v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->DW()Z

    move-result p3

    if-eqz p3, :cond_20

    return-void

    :cond_20
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->j6:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 9

    iget-object v0, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/s;

    iget-object v3, v2, Labcd/s;->j6:Ljava/lang/Object;

    if-ne p3, v3, :cond_13

    iget-object v2, v2, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {p4, v2}, Landroid/support/v4/media/h;->j6(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_2e
    new-instance v1, Labcd/s;

    invoke-direct {v1, p3, p4}, Labcd/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->v5:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/Bundle;)V

    return-void
.end method

.method j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/ResultReceiver;)V
    .registers 5

    new-instance v0, Landroid/support/v4/media/j;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v4/media/j;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->DW(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->DW()Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    :cond_14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6(I)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    return-void
.end method

.method j6(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1d

    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_f

    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->v5:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    iget-object v2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->v5:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/s;

    iget-object v4, v4, Labcd/s;->j6:Ljava/lang/Object;

    if-ne p3, v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_1d

    :cond_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3d

    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->v5:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->DW:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->j6(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    :goto_e
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->DW:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    goto :goto_2b

    :cond_11
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$e;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    goto :goto_e

    :cond_1b
    const/16 v1, 0x15

    if-lt v0, v1, :cond_25

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$d;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    goto :goto_e

    :cond_25
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    goto :goto_e

    :goto_2b
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->DW:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->onCreate()V

    return-void
.end method
