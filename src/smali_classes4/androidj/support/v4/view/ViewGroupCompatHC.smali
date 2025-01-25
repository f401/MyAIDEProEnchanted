.class Landroidj/support/v4/view/ViewGroupCompatHC;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xb
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method
