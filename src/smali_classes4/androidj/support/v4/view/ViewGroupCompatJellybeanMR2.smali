.class Landroidj/support/v4/view/ViewGroupCompatJellybeanMR2;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    return v0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    return-void
.end method
