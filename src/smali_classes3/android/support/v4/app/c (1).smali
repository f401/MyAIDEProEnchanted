.class public Landroid/support/v4/app/c;
.super Landroid/support/v4/content/b;


# direct methods
.method public static j6(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_d
    return-void
.end method

.method public static j6(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_14

    instance-of v0, p0, Landroid/support/v4/app/c$b;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/c$b;

    invoke-interface {v0, p2}, Landroid/support/v4/app/c$b;->j6(I)V

    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_29

    :cond_14
    instance-of v0, p0, Landroid/support/v4/app/c$a;

    if-eqz v0, :cond_29

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/support/v4/app/b;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/b;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29
    :goto_29
    return-void
.end method
