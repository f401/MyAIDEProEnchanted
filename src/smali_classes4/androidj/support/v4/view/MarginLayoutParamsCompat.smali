.class public final Landroidj/support/v4/view/MarginLayoutParamsCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;,
        Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase;,
        Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplJbMr1;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplJbMr1;

    invoke-direct {v0}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplJbMr1;-><init>()V

    sput-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase;

    invoke-direct {v0}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    :cond_c
    return v0
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    move-result v0

    return v0
.end method

.method public static resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/MarginLayoutParamsCompat;->IMPL:Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method
