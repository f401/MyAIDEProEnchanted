.class Landroidj/support/v4/view/MotionEventCompatHoneycombMr1;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xc
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAxisValue(Landroid/view/MotionEvent;I)F
    .registers 3

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    return v0
.end method

.method static getAxisValue(Landroid/view/MotionEvent;II)F
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method
