.class Landroidj/support/v4/view/GravityCompat$GravityCompatImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/GravityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GravityCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 9

    invoke-static/range {p1 .. p7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 7

    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5

    invoke-static {p1, p2, p3}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getAbsoluteGravity(II)I
    .registers 4

    const v0, -0x800001

    and-int/2addr v0, p1

    return v0
.end method
