.class public Lcom/s1243808733/aide/util/AndResGuard;
.super Ljava/lang/Object;
.source "AndResGuard.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delectResourcesAps()V
    .registers 2

    .line 116
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinResourcesAp(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_13
    return-void
.end method

.method public static proguard(Ljava/io/File;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 21
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinResourcesAp(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 23
    new-instance v2, Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    invoke-direct {v2}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;-><init>()V

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setWhiteList(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setCompressFilePattern(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 28
    new-instance v3, Ljava/io/File;

    const-string v4, "proguard-resources.json"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 30
    invoke-static {v3}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11c

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11c

    .line 33
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 34
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 37
    :try_start_53
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v3, "keepRoot"

    invoke-static {v5, v3, v6}, Lcom/blankj/utilcode/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setKeepRoot(Z)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 41
    const-string v3, "fixedResName"

    const/4 v7, 0x0

    invoke-static {v5, v3, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_73

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_73

    .line 43
    invoke-virtual {v2, v3}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setFixedResName(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 46
    :cond_73
    const-string v3, "mappingFile"

    invoke-static {v5, v3, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 48
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8f

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_8f

    .line 50
    invoke-virtual {v2, v8}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setMappingFile(Ljava/io/File;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 54
    :cond_8f
    const-string p0, "whiteList"

    invoke-static {v5, p0, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_c4

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 57
    :goto_9d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_c1

    .line 58
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_9d

    .line 61
    :cond_c1
    invoke-virtual {v2, v3}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setWhiteList(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 64
    :cond_c4
    const-string p0, "compressFilePattern"

    invoke-static {v5, p0, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_11c

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :goto_d1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v6, v4, :cond_e1

    .line 68
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    .line 71
    :cond_e1
    invoke-virtual {v2, v3}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setCompressFilePattern(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    :try_end_e4
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_e4} :catch_e5

    goto :goto_11c

    :catch_e5
    move-exception p0

    .line 75
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "解析json出错，请检查json是否错误！：\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error parsing JSON, please check if JSON is wrong!：\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_11c
    :goto_11c
    new-instance p0, Ljava/io/File;

    const-string v3, "resources.apk"

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setApkPath(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 91
    new-instance v3, Ljava/io/File;

    const-string v4, "andresguard"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setOutBuilder(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 95
    :try_start_13b
    invoke-virtual {v2}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->create()Lcom/tencent/mm/resourceproguard/InputParam;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/tencent/mm/resourceproguard/Main;->gradleRun(Lcom/tencent/mm/resourceproguard/InputParam;)V

    .line 97
    new-instance v0, Ljava/io/File;

    const-string v2, "resources_unsigned.apk"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_15a
    .catchall {:try_start_13b .. :try_end_15a} :catchall_166

    .line 104
    :cond_15a
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 105
    new-instance p0, Lcom/s1243808733/aide/util/AndResGuard$1;

    invoke-direct {p0}, Lcom/s1243808733/aide/util/AndResGuard$1;-><init>()V

    invoke-static {v3, p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    return-void

    :catchall_166
    move-exception v0

    .line 102
    :try_start_167
    throw v0
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_168

    :catchall_168
    move-exception v0

    .line 104
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 105
    new-instance p0, Lcom/s1243808733/aide/util/AndResGuard$1;

    invoke-direct {p0}, Lcom/s1243808733/aide/util/AndResGuard$1;-><init>()V

    invoke-static {v3, p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    .line 111
    goto :goto_176

    :goto_175
    throw v0

    :goto_176
    goto :goto_175
.end method
