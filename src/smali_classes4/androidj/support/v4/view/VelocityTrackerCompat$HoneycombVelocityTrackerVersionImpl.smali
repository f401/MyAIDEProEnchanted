.class Landroidj/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/VelocityTrackerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombVelocityTrackerVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXVelocity(Landroid/view/VelocityTracker;I)F
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/view/VelocityTrackerCompatHoneycomb;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public getYVelocity(Landroid/view/VelocityTracker;I)F
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/view/VelocityTrackerCompatHoneycomb;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
