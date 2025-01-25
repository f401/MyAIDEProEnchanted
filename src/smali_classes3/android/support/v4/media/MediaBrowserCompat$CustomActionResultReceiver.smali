.class Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomActionResultReceiver"
.end annotation


# instance fields
.field private final Hw:Ljava/lang/String;

.field private final Zo:Landroid/support/v4/media/MediaBrowserCompat$c;

.field private final v5:Landroid/os/Bundle;


# virtual methods
.method protected j6(ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->Zo:Landroid/support/v4/media/MediaBrowserCompat$c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, -0x1

    if-eq p1, v1, :cond_4b

    if-eqz p1, :cond_43

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (extras="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->v5:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", resultData="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MediaBrowserCompat"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_3b
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->Hw:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->v5:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$c;->DW(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_52

    :cond_43
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->Hw:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->v5:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$c;->FH(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_52

    :cond_4b
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->Hw:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->v5:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$c;->j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :goto_52
    return-void
.end method
