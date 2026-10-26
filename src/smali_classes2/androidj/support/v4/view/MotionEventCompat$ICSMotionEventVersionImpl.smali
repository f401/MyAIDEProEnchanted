.class Landroidj/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;
.super Landroidj/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ICSMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidj/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonState(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompatICS;->getButtonState(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method
