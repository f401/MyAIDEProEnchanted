.class public Lcom/s1243808733/aide/builder/D8Dex;
.super Ljava/lang/Object;
.source "D8Dex.java"


# static fields
.field private static final cacheDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 51
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    nop

    .line 53
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    const-string v3, "currentApplication"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
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
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMinVersion()I
    .registers 4

    .line 42
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apk_d8builder_min_version_num"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_1c

    :catchall_11
    move-exception v0

    .line 44
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static getOutputDexFile(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Hw"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 209
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTempFile()Ljava/io/File;
    .registers 4

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
    .registers 5

    .line 217
    array-length v0, p0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_28

    aget-byte v0, p0, v2

    const/16 v1, 0x64

    if-ne v0, v1, :cond_28

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    const/16 v3, 0x65

    if-ne v1, v3, :cond_28

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v3, 0x78

    if-ne v1, v3, :cond_28

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_28

    const/4 v1, 0x4

    aget-byte p0, p0, v1

    const/16 v1, 0x30

    if-ne p0, v1, :cond_28

    const/4 v2, 0x1

    :cond_28
    return v2
.end method

.method public static isMultiDexEnabled(Ljava/lang/Object;)Z
    .registers 3
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

    move-result p0

    return p0
.end method

.method public static isZip([B)Z
    .registers 7

    .line 226
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt v0, v4, :cond_18

    aget-byte v0, p0, v1

    const/16 v5, 0x50

    if-ne v0, v5, :cond_18

    aget-byte v0, p0, v3

    const/16 v5, 0x4b

    if-ne v0, v5, :cond_18

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    if-eq v0, v2, :cond_1c

    :cond_18
    aget-byte p0, p0, v2

    if-ne p0, v4, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public static j6(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/s1243808733/aide/builder/D8Dex;->getTempFile()Ljava/io/File;

    move-result-object v0

    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [[B

    invoke-static {p1}, Lcom/s1243808733/aide/builder/D8Dex;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/s1243808733/aide/builder/D8Dex;->process(Ljava/lang/String;Ljava/util/List;)V

    .line 69
    invoke-static {p0, p1}, Lcom/s1243808733/aide/builder/D8Dex;->getOutputDexFile(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_5d

    .line 71
    :try_start_22
    const-string v1, "classes.dex"

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 73
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_53

    .line 74
    :try_start_2e
    invoke-static {v1}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/tools/r8/com/google/common/io/Files;->write([BLjava/io/File;)V
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_40

    if-eqz v1, :cond_4c

    .line 75
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_53

    goto :goto_4c

    :catchall_40
    move-exception p0

    if-eqz v1, :cond_4b

    .line 73
    :try_start_43
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v1

    :try_start_48
    invoke-static {p0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_53

    .line 77
    :cond_4c
    :goto_4c
    :try_start_4c
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5d

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_53
    move-exception p0

    .line 70
    :try_start_54
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p1

    :try_start_59
    invoke-static {p0, p1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5c
    throw p0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    throw p0
.end method

.method public static j6(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lcom/s1243808733/aide/builder/D8Dex;->isMultiDexEnabled(Ljava/lang/Object;)Z

    move-result p0

    .line 112
    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3c

    move-object v2, v3

    .line 119
    :cond_3c
    invoke-static {v2}, Lcom/s1243808733/aide/builder/D8Dex;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 121
    :cond_44
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_48
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v2, ".dex"

    if-eqz p3, :cond_6e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 122
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_66

    move-object p3, v2

    .line 126
    :cond_66
    invoke-static {p3}, Lcom/s1243808733/aide/builder/D8Dex;->readFile(Ljava/lang/String;)[B

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 128
    :cond_6e
    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex;->process(Ljava/lang/String;Ljava/util/List;)V

    .line 129
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 131
    new-instance p2, Ljava/util/zip/ZipFile;

    invoke-direct {p2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 132
    :try_start_7f
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p3

    .line 133
    :cond_83
    :goto_83
    invoke-interface {p3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 134
    invoke-interface {p3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 135
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    goto :goto_83

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    .line 137
    invoke-virtual {p2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_a0
    .catchall {:try_start_7f .. :try_end_a0} :catchall_f1

    .line 138
    :try_start_a0
    invoke-static {v1}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 139
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    .line 140
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b2
    .catchall {:try_start_a0 .. :try_end_b2} :catchall_cb

    .line 141
    :try_start_b2
    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 142
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_c1

    .line 143
    :try_start_b8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_cb

    if-eqz v1, :cond_83

    .line 144
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_f1

    goto :goto_83

    :catchall_c1
    move-exception p0

    .line 139
    :try_start_c2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c6

    goto :goto_ca

    :catchall_c6
    move-exception p1

    :try_start_c7
    invoke-static {p0, p1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_ca
    throw p0
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception p0

    if-eqz v1, :cond_d6

    .line 137
    :try_start_ce
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_d2

    goto :goto_d6

    :catchall_d2
    move-exception p1

    :try_start_d3
    invoke-static {p0, p1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_d6
    :goto_d6
    throw p0
    :try_end_d7
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_f1

    .line 146
    :cond_d7
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V

    if-nez p0, :cond_f0

    const/4 p0, 0x1

    if-gt v3, p0, :cond_e0

    goto :goto_f0

    .line 148
    :cond_e0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "先启用MultiDex，再编译"

    const-string p2, "Please enable MultiDex before compiling"

    invoke-static {p1, p2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f0
    :goto_f0
    return-void

    :catchall_f1
    move-exception p0

    .line 131
    :try_start_f2
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f6

    goto :goto_fa

    :catchall_f6
    move-exception p1

    invoke-static {p0, p1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_fa
    goto :goto_fc

    :goto_fb
    throw p0

    :goto_fc
    goto :goto_fb
.end method

.method public static j6(Ljava/io/DataInputStream;Ljava/lang/String;I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/s1243808733/aide/builder/D8Dex;->getTempFile()Ljava/io/File;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [[B

    invoke-static {p0}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/s1243808733/aide/builder/D8Dex;->process(Ljava/lang/String;Ljava/util/List;)V

    .line 88
    :try_start_19
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_45

    .line 89
    :try_start_1e
    const-string p2, "classes.dex"

    invoke-virtual {p0, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_53

    .line 91
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_43

    .line 92
    :try_start_2a
    invoke-static {p2}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_37

    if-eqz p2, :cond_33

    .line 93
    :try_start_30
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_43

    .line 103
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0

    :catchall_37
    move-exception v0

    if-eqz p2, :cond_42

    .line 91
    :try_start_3a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p2

    :try_start_3f
    invoke-static {v0, p2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw v0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p2

    goto :goto_47

    :catchall_45
    move-exception p0

    const/4 p0, 0x0

    :goto_47
    if-eqz p0, :cond_53

    .line 99
    :try_start_49
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_52
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_53

    :catchall_4d
    move-exception p0

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 104
    throw p0

    .line 105
    :catch_52
    move-exception p0

    .line 103
    :cond_53
    :goto_53
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 105
    new-array p0, v1, [B

    return-object p0
.end method

.method public static process(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/android/tools/r8/D8Command;->builder()Lcom/android/tools/r8/D8Command$Builder;

    move-result-object v0

    .line 168
    sget v1, Lcom/s1243808733/aide/BuildVariant;->RELEASE:I

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->currentProject()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/BuildVariant;->getBuildVariant(Ljava/io/File;)I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 169
    sget-object v1, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/D8Command$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto :goto_1b

    .line 171
    :cond_16
    sget-object v1, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/D8Command$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 175
    :goto_1b
    invoke-static {}, Lcom/s1243808733/aide/builder/D8Dex;->getMinVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/D8Command$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 177
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object v1, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    invoke-virtual {v0, p0, v1}, Lcom/android/tools/r8/D8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 179
    invoke-static {p1}, Lcom/s1243808733/aide/builder/D8Dex;->isDex([B)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 180
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/D8Command$Builder;->addDexProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/D8Command$Builder;

    goto :goto_32

    .line 181
    :cond_4c
    invoke-static {p1}, Lcom/s1243808733/aide/builder/D8Dex;->isZip([B)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 182
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_8d

    .line 185
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 186
    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_5c

    .line 187
    :cond_6f
    const-string v2, "module-info.class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_5c

    .line 188
    :cond_78
    const-string v2, "META-INF/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_5c

    .line 189
    :cond_81
    invoke-static {v1}, Lcom/s1243808733/aide/builder/D8Dex;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 190
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/tools/r8/D8Command$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;
    :try_end_8c
    .catchall {:try_start_5c .. :try_end_8c} :catchall_91

    goto :goto_5c

    .line 192
    :cond_8d
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_32

    :catchall_91
    move-exception p0

    .line 182
    :try_start_92
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception p1

    invoke-static {p0, p1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9a
    throw p0

    .line 194
    :cond_9b
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/D8Command$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/BaseCommand$Builder;

    goto :goto_32

    .line 197
    :cond_a3
    invoke-virtual {v0}, Lcom/android/tools/r8/D8Command$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/D8Command;

    invoke-static {}, Lcom/android/tools/r8/com/google/common/util/concurrent/MoreExecutors;->newDirectExecutorService()Lcom/android/tools/r8/com/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/D8;->run(Lcom/android/tools/r8/D8Command;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .registers 5
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
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 161
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    .line 163
    :cond_17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/com/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method
