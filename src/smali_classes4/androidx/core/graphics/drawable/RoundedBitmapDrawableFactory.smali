.class public final Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RoundedBitmapDrawableFa"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    new-instance v0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v0, p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_b
.end method

.method public static create(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    .registers 5

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoundedBitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "RoundedBitmapDrawableFa"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;Ljava/lang/String;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    .registers 5

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoundedBitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RoundedBitmapDrawableFa"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-object v0
.end method
