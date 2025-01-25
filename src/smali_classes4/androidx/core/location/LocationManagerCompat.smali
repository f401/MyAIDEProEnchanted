.class public final Landroidx/core/location/LocationManagerCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLocationEnabled(Landroid/location/LocationManager;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    goto :goto_a
.end method
