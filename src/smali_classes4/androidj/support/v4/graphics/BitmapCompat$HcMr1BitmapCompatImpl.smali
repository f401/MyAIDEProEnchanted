.class Landroidj/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;
.super Landroidj/support/v4/graphics/BitmapCompat$BaseBitmapImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HcMr1BitmapCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/graphics/BitmapCompat$BaseBitmapImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/graphics/BitmapCompatHoneycombMr1;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
