.class Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;
.super Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatHCImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewGroupCompatHC;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method
