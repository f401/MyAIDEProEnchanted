.class public abstract Landroid/support/v4/media/MediaBrowserCompat$n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$n$a;,
        Landroid/support/v4/media/MediaBrowserCompat$n$b;
    }
.end annotation


# instance fields
.field private final DW:Landroid/os/IBinder;

.field FH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/MediaBrowserCompat$m;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_18

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$n$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$n$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$n;)V

    invoke-static {v0}, Landroid/support/v4/media/g;->j6(Landroid/support/v4/media/g$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->j6:Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->DW:Landroid/os/IBinder;

    goto :goto_36

    :cond_18
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2d

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$n$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$n$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$n;)V

    invoke-static {v0}, Landroid/support/v4/media/f;->j6(Landroid/support/v4/media/f$d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->j6:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    goto :goto_34

    :cond_2d
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->j6:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    :goto_34
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->DW:Landroid/os/IBinder;

    :goto_36
    return-void
.end method

.method static synthetic j6(Landroid/support/v4/media/MediaBrowserCompat$n;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->DW:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public j6(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public j6(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
