.class public Landroid/support/v4/media/MediaBrowserCompat$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$b$a;,
        Landroid/support/v4/media/MediaBrowserCompat$b$b;
    }
.end annotation


# instance fields
.field DW:Landroid/support/v4/media/MediaBrowserCompat$b$a;

.field final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$b$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$b;)V

    invoke-static {v0}, Landroid/support/v4/media/f;->j6(Landroid/support/v4/media/f$a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b;->j6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public FH()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public j6()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method j6(Landroid/support/v4/media/MediaBrowserCompat$b$a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$b;->DW:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    return-void
.end method
