.class Landroid/support/v4/media/MediaBrowserServiceCompat$f;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$e;

# interfaces
.implements Landroid/support/v4/media/A$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final Zo:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$e;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;Landroid/support/v4/media/A$b;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Landroid/support/v4/media/o;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/o;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$f;Ljava/lang/Object;Landroid/support/v4/media/A$b;)V

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->Zo:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/A;->j6(Landroid/content/Context;Landroid/support/v4/media/A$c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->DW:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->DW:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/y;->j6(Ljava/lang/Object;)V

    return-void
.end method
