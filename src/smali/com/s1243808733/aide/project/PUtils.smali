.class public Lcom/s1243808733/aide/project/PUtils;
.super Ljava/lang/Object;
.source "PUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(F)I
    .registers 2

    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getAssetsFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "templates/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableCustomTemplate()Z

    move-result v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_59
    .catchall {:try_start_3 .. :try_end_7} :catchall_4f

    const-string v4, "icons/"

    if-eqz v3, :cond_26

    .line 29
    :try_start_b
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getAutoCustomTemplateDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_3e

    .line 31
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/project/PUtils;->getAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3e} :catch_59
    .catchall {:try_start_b .. :try_end_3e} :catchall_4f

    .line 33
    :goto_3e
    :try_start_3e
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_4d
    .catchall {:try_start_3e .. :try_end_42} :catchall_4a

    .line 37
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    return-object p1

    :catchall_4a
    move-exception p1

    move-object v2, p0

    goto :goto_51

    :catch_4d
    move-exception p1

    goto :goto_5b

    :catchall_4f
    move-exception p0

    move-object p1, p0

    :goto_51
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 38
    throw p1

    :catch_59
    move-exception p0

    move-object p0, v2

    .line 37
    :goto_5b
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    return-object v2
.end method
