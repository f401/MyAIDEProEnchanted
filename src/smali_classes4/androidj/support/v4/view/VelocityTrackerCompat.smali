.class public final Landroidj/support/v4/view/VelocityTrackerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;,
        Landroidj/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;,
        Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/VelocityTrackerCompat;->IMPL:Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroidj/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/VelocityTrackerCompat;->IMPL:Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .registers 3

    sget-object v0, Landroidj/support/v4/view/VelocityTrackerCompat;->IMPL:Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .registers 3

    sget-object v0, Landroidj/support/v4/view/VelocityTrackerCompat;->IMPL:Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
