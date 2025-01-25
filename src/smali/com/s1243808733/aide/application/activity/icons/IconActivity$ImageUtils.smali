.class public final Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;
.super Ljava/lang/Object;
.source "IconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFileByDeleteOldFile(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1003
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 1004
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    .line 1006
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_21

    return p0

    :catch_21
    move-exception p0

    .line 1008
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 998
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 919
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 920
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 922
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 923
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 924
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 925
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 926
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 939
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_12

    .line 940
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 941
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 942
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 946
    :cond_12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_38

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_20

    goto :goto_38

    .line 952
    :cond_20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 953
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 954
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    if-eq v3, v1, :cond_31

    .line 955
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_33

    .line 956
    :cond_31
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 952
    :goto_33
    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_48

    .line 948
    :cond_38
    :goto_38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v1, :cond_41

    .line 949
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_43

    .line 950
    :cond_41
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 947
    :goto_43
    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 958
    :goto_48
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 959
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 960
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static isEmptyBitmap(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 993
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 8

    .line 969
    invoke-static {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_59

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_59

    .line 973
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_3b
    .catchall {:try_start_f .. :try_end_19} :catchall_39

    .line 974
    const/16 p1, 0x64

    :try_start_1b
    invoke-virtual {p0, p2, p1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_36
    .catchall {:try_start_1b .. :try_end_1f} :catchall_34

    if-eqz p3, :cond_2e

    .line 975
    :try_start_21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_2b
    .catchall {:try_start_21 .. :try_end_2a} :catchall_34

    goto :goto_2e

    .line 984
    :catch_2b
    move-exception p0

    move v1, p1

    goto :goto_37

    .line 981
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_4c

    :catch_32
    move-exception p0

    goto :goto_47

    .line 984
    :catchall_34
    move-exception p0

    goto :goto_4e

    :catch_36
    move-exception p0

    :goto_37
    move-object v0, v2

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto :goto_4d

    :catch_3b
    move-exception p0

    .line 977
    :goto_3c
    :try_start_3c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_39

    if-eqz v0, :cond_4b

    .line 981
    :try_start_41
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_4b

    :catch_45
    move-exception p0

    move p1, v1

    .line 984
    :goto_47
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 981
    :cond_4b
    :goto_4b
    move p1, v1

    :goto_4c
    return p1

    .line 984
    :goto_4d
    move-object v2, v0

    .line 981
    :goto_4e
    if-eqz v2, :cond_58

    :try_start_50
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p1

    .line 984
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 986
    :cond_58
    :goto_58
    throw p0

    :cond_59
    :goto_59
    return v1
.end method
