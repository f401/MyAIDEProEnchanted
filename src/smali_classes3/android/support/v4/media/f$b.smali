.class Landroid/support/v4/media/f$b;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/f$a;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field protected final j6:Landroid/support/v4/media/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/f$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/f$b;->j6:Landroid/support/v4/media/f$a;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/f$b;->j6:Landroid/support/v4/media/f$a;

    invoke-interface {v0}, Landroid/support/v4/media/f$a;->j6()V

    return-void
.end method

.method public onConnectionFailed()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/f$b;->j6:Landroid/support/v4/media/f$a;

    invoke-interface {v0}, Landroid/support/v4/media/f$a;->DW()V

    return-void
.end method

.method public onConnectionSuspended()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/f$b;->j6:Landroid/support/v4/media/f$a;

    invoke-interface {v0}, Landroid/support/v4/media/f$a;->FH()V

    return-void
.end method
