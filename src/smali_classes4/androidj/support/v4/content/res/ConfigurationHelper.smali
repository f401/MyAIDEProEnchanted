.class public final Landroidj/support/v4/content/res/ConfigurationHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;,
        Landroidj/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;,
        Landroidj/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;,
        Landroidj/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;

    invoke-direct {v0}, Landroidj/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/content/res/ConfigurationHelper;->IMPL:Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0xd

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;

    invoke-direct {v0}, Landroidj/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/content/res/ConfigurationHelper;->IMPL:Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_d

    :cond_1a
    new-instance v0, Landroidj/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;

    invoke-direct {v0}, Landroidj/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/content/res/ConfigurationHelper;->IMPL:Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensityDpi(Landroid/content/res/Resources;)I
    .registers 2
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/content/res/ConfigurationHelper;->IMPL:Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenHeightDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/content/res/ConfigurationHelper;->IMPL:Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/content/res/ConfigurationHelper;->IMPL:Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/content/res/ConfigurationHelper;->IMPL:Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
