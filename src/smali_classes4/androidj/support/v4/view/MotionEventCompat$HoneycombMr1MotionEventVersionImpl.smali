.class Landroidj/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;
.super Landroidj/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMr1MotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAxisValue(Landroid/view/MotionEvent;I)F
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/view/MotionEventCompatHoneycombMr1;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public getAxisValue(Landroid/view/MotionEvent;II)F
    .registers 5

    invoke-static {p1, p2, p3}, Landroidj/support/v4/view/MotionEventCompatHoneycombMr1;->getAxisValue(Landroid/view/MotionEvent;II)F

    move-result v0

    return v0
.end method
