.class public final Landroidj/support/v4/view/GravityCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;,
        Landroidj/support/v4/view/GravityCompat$GravityCompatImplBase;,
        Landroidj/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;
    }
.end annotation


# static fields
.field public static final END:I = 0x800005

.field static final IMPL:Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final START:I = 0x800003


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;

    invoke-direct {v0}, Landroidj/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;-><init>()V

    sput-object v0, Landroidj/support/v4/view/GravityCompat;->IMPL:Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroidj/support/v4/view/GravityCompat$GravityCompatImplBase;

    invoke-direct {v0}, Landroidj/support/v4/view/GravityCompat$GravityCompatImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/view/GravityCompat;->IMPL:Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 17

    sget-object v0, Landroidj/support/v4/view/GravityCompat;->IMPL:Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 13

    sget-object v0, Landroidj/support/v4/view/GravityCompat;->IMPL:Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5

    sget-object v0, Landroidj/support/v4/view/GravityCompat;->IMPL:Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/GravityCompat;->IMPL:Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/GravityCompat$GravityCompatImpl;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
