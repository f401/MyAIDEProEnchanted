.class public Lcom/s1243808733/aide/util/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocale()Ljava/util/Locale;
    .registers 1

    .line 107
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    if-nez v0, :cond_a

    .line 108
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_e
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getLocaleFile(Ljava/io/File;)Ljava/io/File;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 21
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/ObjectUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/ObjectUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/s1243808733/aide/util/ResUtils;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_7d

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

    if-nez v1, :cond_4c

    .line 33
    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_4c
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 37
    const-string v1, "-r"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    :cond_5b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 46
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 51
    :cond_6f
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 53
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_7d
    if-eqz v0, :cond_87

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_86

    goto :goto_87

    :cond_86
    move-object p0, v0

    :cond_87
    :goto_87
    return-object p0
.end method

.method public static openAssetsLocaleFile(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9

    .line 68
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/util/ResUtils;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    .line 72
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 78
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_37
    invoke-static {v1}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 82
    const-string v3, "-r"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_46
    :try_start_46
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_50

    move-object v2, v1

    goto :goto_51

    :catchall_50
    move-exception v1

    :goto_51
    if-nez v2, :cond_5d

    .line 93
    :try_start_53
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5c

    goto :goto_5d

    :catchall_5c
    move-exception v1

    :cond_5d
    :goto_5d
    if-nez v2, :cond_65

    .line 100
    :try_start_5f
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_64

    goto :goto_65

    :catchall_64
    move-exception p0

    :cond_65
    :goto_65
    return-object v2
.end method
