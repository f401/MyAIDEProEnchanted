.class public final Landroidj/support/v4/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;,
        Landroidj/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;,
        Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;,
        Landroidj/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;,
        Landroidj/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;,
        Landroidj/support/v4/net/ConnectivityManagerCompat$RestrictBackgroundStatus;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_d

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_2a

    new-instance v0, Landroidj/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_d

    :cond_2a
    new-instance v0, Landroidj/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .registers 3

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;->getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method
