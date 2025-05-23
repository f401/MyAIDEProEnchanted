.class public final Landroidj/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;,
        Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;,
        Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;,
        Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;,
        Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatLollipopImpl;,
        Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatLollipopImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatLollipopImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_d

    :cond_1a
    const/16 v1, 0xe

    if-lt v0, v1, :cond_26

    new-instance v0, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_d

    :cond_26
    const/16 v1, 0xb

    if-lt v0, v1, :cond_32

    new-instance v0, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_d

    :cond_32
    new-instance v0, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->getNestedScrollAxes(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    sget-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->setLayoutMode(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewGroupCompat;->IMPL:Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method
