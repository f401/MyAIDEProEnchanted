.class public Lcom/s1243808733/aide/util/AndResGuard;
.super Ljava/lang/Object;
.source "AndResGuard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delectResourcesAps()V
    .locals 2

    .line 116
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinResourcesAp(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static proguard(Ljava/io/File;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 21
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinResourcesAp(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 23
    new-instance v4, Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    invoke-direct {v4}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;-><init>()V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setWhiteList(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setCompressFilePattern(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 28
    new-instance v1, Ljava/io/File;

    const-string v5, "proguard-resources.json"

    invoke-direct {v1, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 30
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 33
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 34
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 37
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v1, "keepRoot"

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setKeepRoot(Z)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 41
    const-string v1, "fixedResName"

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 43
    invoke-virtual {v4, v1}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setFixedResName(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 46
    :cond_0
    const-string v1, "mappingFile"

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v4, v7}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setMappingFile(Ljava/io/File;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 54
    :cond_1
    const-string v1, "whiteList"

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 56
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 57
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 58
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v4, v8}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setWhiteList(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 64
    :cond_3
    const-string v1, "compressFilePattern"

    const/4 v5, 0x0

    invoke-static {v6, v1, v5}, Lcom/blankj/utilcode/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 68
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v4, v5}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setCompressFilePattern(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string v0, "resources.apk"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setApkPath(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 91
    new-instance v5, Ljava/io/File;

    const-string v0, "andresguard"

    invoke-direct {v5, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->setOutBuilder(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;

    .line 95
    :try_start_1
    invoke-virtual {v4}, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->create()Lcom/tencent/mm/resourceproguard/InputParam;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/tencent/mm/resourceproguard/Main;->gradleRun(Lcom/tencent/mm/resourceproguard/InputParam;)V

    .line 97
    new-instance v0, Ljava/io/File;

    const-string v2, "resources_unsigned.apk"

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :cond_6
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 105
    new-instance v0, Lcom/s1243808733/aide/util/AndResGuard$1;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/AndResGuard$1;-><init>()V

    invoke-static {v5, v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 75
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u89e3\u6790json\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5json\u662f\u5426\u9519\u8bef\uff01\uff1a\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing JSON, please check if JSON is wrong!\uff1a\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catchall_0
    move-exception v0

    .line 102
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 104
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 105
    new-instance v1, Lcom/s1243808733/aide/util/AndResGuard$1;

    invoke-direct {v1}, Lcom/s1243808733/aide/util/AndResGuard$1;-><init>()V

    invoke-static {v5, v1}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    .line 111
    throw v0
.end method
