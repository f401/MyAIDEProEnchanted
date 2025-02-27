.class public Landroidj/support/v4/app/ActivityCompat;
.super Landroidj/support/v4/content/ContextCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;,
        Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/content/ContextCompat;-><init>()V

    return-void
.end method

.method private static createCallback(Landroidj/support/v4/app/SharedElementCallback;)Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    new-instance v0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidj/support/v4/app/SharedElementCallback;)V

    :cond_8
    return-object v0
.end method

.method private static createCallback23(Landroidj/support/v4/app/SharedElementCallback;)Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    new-instance v0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;-><init>(Landroidj/support/v4/app/SharedElementCallback;)V

    :cond_8
    return-object v0
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompatJB;->finishAffinity(Landroid/app/Activity;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_9
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompatApi21;->finishAfterTransition(Landroid/app/Activity;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_9
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .registers 3
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompatApi22;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_a

    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a

    :cond_26
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompatApi21;->postponeEnterTransition(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5
    .param p0  # Landroid/app/Activity;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # [Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidj/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/ActivityCompatApi23;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidj/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_9

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidj/support/v4/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Landroidj/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/SharedElementCallback;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    invoke-static {p1}, Landroidj/support/v4/app/ActivityCompat;->createCallback23(Landroidj/support/v4/app/SharedElementCallback;)Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    move-result-object v0

    invoke-static {p0, v0}, Landroidj/support/v4/app/ActivityCompatApi23;->setEnterSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    invoke-static {p1}, Landroidj/support/v4/app/ActivityCompat;->createCallback(Landroidj/support/v4/app/SharedElementCallback;)Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;

    move-result-object v0

    invoke-static {p0, v0}, Landroidj/support/v4/app/ActivityCompatApi21;->setEnterSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V

    goto :goto_d
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/SharedElementCallback;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    invoke-static {p1}, Landroidj/support/v4/app/ActivityCompat;->createCallback23(Landroidj/support/v4/app/SharedElementCallback;)Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    move-result-object v0

    invoke-static {p0, v0}, Landroidj/support/v4/app/ActivityCompatApi23;->setExitSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    invoke-static {p1}, Landroidj/support/v4/app/ActivityCompat;->createCallback(Landroidj/support/v4/app/SharedElementCallback;)Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;

    move-result-object v0

    invoke-static {p0, v0}, Landroidj/support/v4/app/ActivityCompatApi21;->setExitSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V

    goto :goto_d
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 4
    .param p0  # Landroid/app/Activity;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidj/support/v4/app/ActivityCompatApi23;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/app/ActivityCompatJB;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 10
    .param p7  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-static/range {p0 .. p7}, Landroidj/support/v4/app/ActivityCompatJB;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_9
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompatApi21;->startPostponedEnterTransition(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method
