.class public Lcom/s1243808733/aide/builder/D8Dex;
.super Ljava/lang/Object;
.source "D8Dex.java"


# static fields
.field private static final cacheDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 57
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "d8cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/builder/D8Dex;->cacheDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMinVersion()I
    .locals 4

    const/4 v0, 0x1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "apk_d8builder_min_version_num"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 44
    :goto_0
    return v0

    .line 42
    :catchall_0
    move-exception v1

    .line 44
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getOutputDexFile(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Hw"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 209
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTempFile()Ljava/io/File;
    .locals 4

    .line 213
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/aide/builder/D8Dex;->cacheDir:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isDex([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    array-length v2, p0

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isMultiDexEnabled(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "aM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isZip([B)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    array-length v2, p0

    if-lt v2, v5, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    if-eq v2, v4, :cond_1

    :cond_0
    aget-byte v2, p0, v4

    if-ne v2, v5, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public static j6(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/s1243808733/aide/builder/D8Dex;->getTempFile()Ljava/io/File;

    move-result-object v1

    .line 68
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/s1243808733/aide/builder/D8Dex;->readFile(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/s1243808733/aide/builder/D8Dex;->process(Ljava/lang/String;Ljava/util/List;)V

    .line 69
    invoke-static {p0, p1}, Lcom/s1243808733/aide/builder/D8Dex;->getOutputDexFile(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 71
    :try_start_1
    const-string v3, "classes.dex"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 74
    :try_start_2
    invoke-static {v3}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/android/tools/r8/com/google/common/io/Files;->write([BLjava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 75
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    .line 75
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 73
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_1
    :goto_0
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    :catchall_1
    move-exception v0

    .line 70
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_1
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 80
    throw v0

    .line 73
    :catchall_3
    move-exception v3

    :try_start_9
    invoke-static {v0, v3}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 70
    :catchall_4
    move-exception v2

    :try_start_a
    invoke-static {v0, v2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1
.end method

.method public static j6(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    .line 111
    invoke-static {p0}, Lcom/s1243808733/aide/builder/D8Dex;->isMultiDexEnabled(Ljava/lang/Object;)Z

    move-result v3

    .line 112
    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v7, "dex"

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 119
    :cond_0
    invoke-static {v0}, Lcom/s1243808733/aide/builder/D8Dex;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v1

    .line 126
    :cond_2
    invoke-static {v0}, Lcom/s1243808733/aide/builder/D8Dex;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_3
    invoke-static {v4, v5}, Lcom/s1243808733/aide/builder/D8Dex;->process(Ljava/lang/String;Ljava/util/List;)V

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 131
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 132
    :try_start_0
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    move v1, v2

    .line 133
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 135
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, ".dex"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 137
    invoke-virtual {v6, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 138
    :try_start_1
    invoke-static {v2}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 139
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    .line 140
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 141
    :try_start_2
    invoke-virtual {v8, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 142
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_4

    .line 144
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 148
    :catchall_0
    move-exception v0

    .line 131
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :goto_3
    throw v0

    .line 144
    :catchall_1
    move-exception v0

    .line 139
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_5

    .line 137
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_5
    :goto_5
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 139
    :catchall_3
    move-exception v1

    :try_start_a
    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 137
    :catchall_4
    move-exception v1

    :try_start_b
    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 146
    :cond_6
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    if-nez v3, :cond_7

    const/4 v0, 0x1

    if-gt v1, v0, :cond_8

    .line 148
    :cond_7
    return-void

    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v0, "\u5148\u542f\u7528MultiDex\uff0c\u518d\u7f16\u8bd1"

    const-string v2, "Please enable MultiDex before compiling"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :catchall_5
    move-exception v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static j6(Ljava/io/DataInputStream;Ljava/lang/String;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    .line 84
    invoke-static {}, Lcom/s1243808733/aide/builder/D8Dex;->getTempFile()Ljava/io/File;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    invoke-static {p0}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex;->process(Ljava/lang/String;Ljava/util/List;)V

    .line 88
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 89
    :try_start_1
    const-string v0, "classes.dex"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 92
    :try_start_2
    invoke-static {v3}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v3, :cond_0

    .line 93
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 105
    :goto_0
    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 91
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_2

    .line 99
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 103
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 105
    new-array v0, v4, [B

    goto :goto_0

    .line 91
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-static {v0, v3}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_3
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    .line 99
    :catchall_4
    move-exception v0

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 104
    throw v0

    .line 105
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public static process(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/android/tools/r8/D8Command;->builder()Lcom/android/tools/r8/D8Command$Builder;

    move-result-object v1

    .line 168
    sget v0, Lcom/s1243808733/aide/BuildVariant;->RELEASE:I

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->currentProject()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/BuildVariant;->getBuildVariant(Ljava/io/File;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 169
    sget-object v0, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/D8Command$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 175
    :goto_0
    invoke-static {}, Lcom/s1243808733/aide/builder/D8Dex;->getMinVersion()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/D8Command$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 177
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/D8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 179
    invoke-static {v0}, Lcom/s1243808733/aide/builder/D8Dex;->isDex([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/D8Command$Builder;->addDexProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/D8Command$Builder;

    goto :goto_1

    .line 171
    :cond_0
    sget-object v0, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/D8Command$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {v0}, Lcom/s1243808733/aide/builder/D8Dex;->isZip([B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    :cond_2
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v4, ".class"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    const-string v4, "module-info.class"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 188
    const-string v4, "META-INF/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-static {v3}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/tools/r8/D8Command$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 192
    :catchall_0
    move-exception v0

    .line 182
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    throw v0

    .line 192
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_1

    .line 182
    :catchall_1
    move-exception v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 194
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/D8Command$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_1

    .line 197
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/D8Command$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/D8Command;

    invoke-static {}, Lcom/android/tools/r8/com/google/common/util/concurrent/MoreExecutors;->newDirectExecutorService()Lcom/android/tools/r8/com/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/D8;->run(Lcom/android/tools/r8/D8Command;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 158
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 160
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 161
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/com/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
