.class public final Landroid/support/v4/app/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/i$a;
    }
.end annotation


# direct methods
.method public static j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Landroid/support/v4/app/i$a;->j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_d

    :cond_a
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/i$a;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_d
    return-void
.end method
