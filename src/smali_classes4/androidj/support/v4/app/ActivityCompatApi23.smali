.class Landroidj/support/v4/app/ActivityCompatApi23;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;,
        Landroidj/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;,
        Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCallback(Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    new-instance v0, Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;-><init>(Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    :cond_8
    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 4

    instance-of v0, p0, Landroidj/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Landroidj/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    invoke-interface {v0, p2}, Landroidj/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/ActivityCompatApi23;->createCallback(Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/ActivityCompatApi23;->createCallback(Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
