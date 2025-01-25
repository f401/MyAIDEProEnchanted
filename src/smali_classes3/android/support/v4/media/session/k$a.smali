.class final Landroid/support/v4/media/session/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method public static DW(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 1

    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static FH(Ljava/lang/Object;)I
    .registers 1

    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result p0

    return p0
.end method

.method public static Hw(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 1

    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
