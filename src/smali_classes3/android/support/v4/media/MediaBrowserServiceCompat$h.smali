.class public Landroid/support/v4/media/MediaBrowserServiceCompat$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DW:Z

.field private FH:Z

.field private Hw:Z

.field private final j6:Ljava/lang/Object;

.field private v5:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public DW(Landroid/os/Bundle;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->FH:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->Hw:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->Hw:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6(Landroid/os/Bundle;)V

    return-void

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendError() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->FH:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->Hw:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->FH:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6(Ljava/lang/Object;)V

    return-void

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendResult() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method DW()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->DW:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->FH:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->Hw:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method j6()I
    .registers 2

    iget v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->v5:I

    return v0
.end method

.method j6(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->v5:I

    return-void
.end method

.method j6(Landroid/os/Bundle;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "It is not supported to send an error for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
