.class public final Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RoundedBitmapDrawableFactory"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    new-instance v0, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_b
.end method

.method public static create(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .registers 6

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_26

    const-string v1, "RoundedBitmapDrawableFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RoundedBitmapDrawable cannot decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;Ljava/lang/String;)Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .registers 6

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_26

    const-string v1, "RoundedBitmapDrawableFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RoundedBitmapDrawable cannot decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-object v0
.end method
