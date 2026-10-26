.class public Lcom/s1243808733/aide/util/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocale()Ljava/util/Locale;
    .locals 1

    .line 107
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    .line 110
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public static getLocaleFile(Ljava/io/File;)Ljava/io/File;
    .locals 7

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 59
    :goto_0
    return-object v2

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/ObjectUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/ObjectUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/s1243808733/aide/util/ResUtils;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 27
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 29
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v4}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    const-string v1, "-"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_1
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    const-string v1, "-r"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 46
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 51
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_3
    move-object v2, p0

    goto/16 :goto_0

    :cond_5
    move-object p0, v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method public static openAssetsLocaleFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const/4 v0, 0x0

    .line 68
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/util/ResUtils;->getLocale()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 74
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    invoke-static {v2}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    const-string v3, "-r"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 93
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 100
    :try_start_2
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 93
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 87
    :catchall_2
    move-exception v2

    goto :goto_0
.end method
