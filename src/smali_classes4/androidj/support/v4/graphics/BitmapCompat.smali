.class public final Landroidj/support/v4/graphics/BitmapCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/graphics/BitmapCompat$BaseBitmapImpl;,
        Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;,
        Landroidj/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;,
        Landroidj/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;,
        Landroidj/support/v4/graphics/BitmapCompat$KitKatBitmapCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/graphics/BitmapCompat$KitKatBitmapCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/BitmapCompat$KitKatBitmapCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/BitmapCompat;->IMPL:Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/BitmapCompat;->IMPL:Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;

    goto :goto_d

    :cond_1a
    const/16 v1, 0xc

    if-lt v0, v1, :cond_26

    new-instance v0, Landroidj/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/BitmapCompat;->IMPL:Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;

    goto :goto_d

    :cond_26
    new-instance v0, Landroidj/support/v4/graphics/BitmapCompat$BaseBitmapImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/BitmapCompat$BaseBitmapImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/BitmapCompat;->IMPL:Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/graphics/BitmapCompat;->IMPL:Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/graphics/BitmapCompat;->IMPL:Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/graphics/BitmapCompat;->IMPL:Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/graphics/BitmapCompat$BitmapImpl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
