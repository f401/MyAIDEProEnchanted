.class Landroid/support/v4/media/session/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/g$a;
    }
.end annotation


# direct methods
.method public static j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "token is not a valid MediaSession.Token object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
