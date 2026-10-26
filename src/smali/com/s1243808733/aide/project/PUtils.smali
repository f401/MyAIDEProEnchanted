.class public Lcom/s1243808733/aide/project/PUtils;
.super Ljava/lang/Object;
.source "PUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(F)I
    .locals 2

    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAssetsFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "templates/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableCustomTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getAutoCustomTemplateDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "icons/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 37
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    :goto_1
    return-object v2

    .line 31
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "icons/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/project/PUtils;->getAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 38
    throw v0

    :catch_0
    move-exception v0

    move-object v1, v2

    .line 37
    :goto_3
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method
