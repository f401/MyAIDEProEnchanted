.class Landroidj/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;
.super Landroidj/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr2BitmapCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/graphics/BitmapCompatJellybeanMR2;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/graphics/BitmapCompatJellybeanMR2;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
