.class Landroid/support/v4/media/MediaBrowserCompat$b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final j6:Landroid/support/v4/media/MediaBrowserCompat$b;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$b;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->j6:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->j6:Landroid/support/v4/media/MediaBrowserCompat$b;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b;->DW:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$b$a;->DW()V

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->j6:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->DW()V

    return-void
.end method

.method public FH()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->j6:Landroid/support/v4/media/MediaBrowserCompat$b;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b;->DW:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$b$a;->FH()V

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->j6:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->FH()V

    return-void
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->j6:Landroid/support/v4/media/MediaBrowserCompat$b;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b;->DW:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$b$a;->j6()V

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->j6:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->j6()V

    return-void
.end method
