.class Landroidj/support/v4/view/MotionEventCompatICS;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonState(Landroid/view/MotionEvent;)I
    .registers 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    return v0
.end method
