.class public final Lcom/blankj/utilcode/util/FileUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;
    }
.end annotation


# static fields
.field private static final LINE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/FileUtils;->LINE_SEP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->copyDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    goto :goto_3

    :cond_f
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    goto :goto_3
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method private static copyDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method private static copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_8c

    array-length v1, v3

    if-lez v1, :cond_8c

    array-length v4, v3

    move v1, v0

    :goto_53
    if-ge v1, v4, :cond_8c

    aget-object v5, v3, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-static {v5, v7, p2, p3}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_7e
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-static {v5, v7, p2, p3}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    move-result v5

    if-nez v5, :cond_7b

    goto/16 :goto_5

    :cond_8c
    if-eqz p3, :cond_94

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_94
    const/4 v0, 0x1

    goto/16 :goto_5
.end method

.method private static copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    if-eqz p2, :cond_27

    invoke-interface {p2, p0, p1}, Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;->onReplace(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_37
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_4e

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_4b} :catch_52

    move-result v2

    if-eqz v2, :cond_6

    :cond_4e
    move v0, v1

    goto :goto_6

    :cond_50
    move v0, v1

    goto :goto_6

    :catch_52
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6
.end method

.method public static createFileByDeleteOldFile(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1f

    move-result v0

    goto :goto_3

    :catch_1f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static createFileByDeleteOldFile(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static createOrExistsDir(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static createOrExistsDir(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static createOrExistsFile(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_19
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1e

    move-result v0

    goto :goto_3

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static createOrExistsFile(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static delete(Ljava/io/File;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v0

    goto :goto_3

    :cond_f
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v0

    goto :goto_3
.end method

.method public static delete(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteAllInDir(Ljava/io/File;)Z
    .registers 2

    new-instance v0, Lcom/blankj/utilcode/util/FileUtils$1;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/FileUtils$1;-><init>()V

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method public static deleteAllInDir(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3d

    array-length v1, v2

    if-lez v1, :cond_3d

    array-length v3, v2

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_3d

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_30
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static {v4}, Lcom/blankj/utilcode/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_3

    :cond_3d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_3
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static deleteFilesInDir(Ljava/io/File;)Z
    .registers 2

    new-instance v0, Lcom/blankj/utilcode/util/FileUtils$2;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/FileUtils$2;-><init>()V

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method public static deleteFilesInDir(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_16

    move v0, v1

    goto :goto_7

    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_7

    array-length v2, v3

    if-eqz v2, :cond_7

    array-length v4, v3

    move v2, v1

    :goto_21
    if-ge v2, v4, :cond_7

    aget-object v5, v3, v2

    invoke-interface {p1, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_47

    move v0, v1

    goto :goto_7

    :cond_39
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-static {v5}, Lcom/blankj/utilcode/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_47

    move v0, v1

    goto :goto_7

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_21
.end method

.method public static deleteFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Z
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method private static getDirLength(Ljava/io/File;)J
    .registers 8

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8

    array-length v2, v5

    if-lez v2, :cond_8

    array-length v6, v5

    const/4 v4, 0x0

    move-wide v2, v0

    :goto_15
    if-ge v4, v6, :cond_2d

    aget-object v0, v5, v4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    :goto_23
    add-long/2addr v2, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_15

    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_23

    :cond_2d
    move-wide v0, v2

    goto :goto_8
.end method

.method public static getDirName(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getDirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v1

    const-string v0, ""

    if-eqz v1, :cond_b

    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static getDirSize(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isUtf8(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "UTF-8"

    goto :goto_6

    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_45
    .catchall {:try_start_10 .. :try_end_1a} :catchall_3d

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_61
    .catchall {:try_start_1a .. :try_end_21} :catchall_63

    move-result v2

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_36

    move v3, v2

    :cond_29
    :goto_29
    const v0, 0xfeff

    if-eq v3, v0, :cond_56

    const v0, 0xfffe

    if-eq v3, v0, :cond_53

    const-string v0, "GBK"

    goto :goto_6

    :catch_36
    move-exception v0

    move v1, v2

    :goto_38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v3, v1

    goto :goto_29

    :catchall_3d
    move-exception v0

    :goto_3e
    move-object v1, v2

    :goto_3f
    if-eqz v1, :cond_44

    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_59

    :cond_44
    :goto_44
    throw v0

    :catch_45
    move-exception v0

    move-object v1, v2

    :goto_47
    :try_start_47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5e

    if-eqz v1, :cond_29

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_29

    :catch_50
    move-exception v0

    move v1, v3

    goto :goto_38

    :cond_53
    const-string v0, "Unicode"

    goto :goto_6

    :cond_56
    const-string v0, "UTF-16BE"

    goto :goto_6

    :catch_59
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catchall_5e
    move-exception v0

    move-object v2, v1

    goto :goto_3e

    :catch_61
    move-exception v0

    goto :goto_47

    :catchall_63
    move-exception v0

    goto :goto_3f
.end method

.method public static getFileCharsetSimple(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    if-lt v1, v0, :cond_1d

    :cond_1a
    const-string v0, ""

    goto :goto_8

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static getFileLastModified(Ljava/io/File;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, -0x1

    :goto_4
    return-wide v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_4
.end method

.method public static getFileLastModified(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLastModified(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFileLength(Ljava/io/File;)J
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_8
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .registers 4

    const-string v0, "[a-zA-z]+://[^\\s]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_8
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2b

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_28} :catch_2e

    move-result v0

    int-to-long v0, v0

    :goto_2a
    return-wide v0

    :cond_2b
    const-wide/16 v0, -0x1

    goto :goto_2a

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_32
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_2a
.end method

.method public static getFileLines(Ljava/io/File;)I
    .registers 10

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_5b
    .catchall {:try_start_4 .. :try_end_e} :catchall_53

    const/16 v1, 0x400

    :try_start_10
    new-array v3, v1, [B

    sget-object v1, Lcom/blankj/utilcode/util/FileUtils;->LINE_SEP:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_1c
    const/4 v1, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v3, v1, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_6e
    .catchall {:try_start_10 .. :try_end_22} :catchall_70

    move-result v5

    if-eq v5, v8, :cond_4a

    move v1, v4

    :goto_26
    if-ge v1, v5, :cond_1c

    aget-byte v6, v3, v1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_30

    add-int/lit8 v0, v0, 0x1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_33
    const/4 v1, 0x0

    const/16 v5, 0x400

    :try_start_36
    invoke-virtual {v2, v3, v1, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_6e
    .catchall {:try_start_36 .. :try_end_39} :catchall_70

    move-result v5

    if-eq v5, v8, :cond_4a

    move v1, v4

    :goto_3d
    if-ge v1, v5, :cond_33

    aget-byte v6, v3, v1

    const/16 v7, 0xd

    if-ne v6, v7, :cond_47

    add-int/lit8 v0, v0, 0x1

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return v0

    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catchall_53
    move-exception v0

    :goto_54
    move-object v2, v3

    :goto_55
    if-eqz v2, :cond_5a

    :try_start_57
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_66

    :cond_5a
    :goto_5a
    throw v0

    :catch_5b
    move-exception v1

    move-object v2, v3

    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_6b

    if-eqz v2, :cond_4d

    :try_start_62
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_4e

    goto :goto_4d

    :catch_66
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    :catchall_6b
    move-exception v0

    move-object v3, v2

    goto :goto_54

    :catch_6e
    move-exception v1

    goto :goto_5d

    :catchall_70
    move-exception v0

    goto :goto_55
.end method

.method public static getFileLines(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLines(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static getFileMD5(Ljava/io/File;)[B
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v2

    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, v0, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_14} :catch_2f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_4c
    .catchall {:try_start_4 .. :try_end_14} :catchall_4e

    const/high16 v0, 0x40000

    :try_start_16
    new-array v0, v0, [B

    :cond_18
    invoke-virtual {v1, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_18

    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_25} :catch_50
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_25} :catch_52
    .catchall {:try_start_16 .. :try_end_25} :catchall_3f

    move-result-object v2

    :try_start_26
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_3

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2f
    move-exception v0

    :goto_30
    move-object v1, v2

    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3f

    if-eqz v1, :cond_3

    :try_start_36
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_3f
    move-exception v0

    move-object v2, v1

    :goto_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    throw v0

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    :catch_4c
    move-exception v0

    goto :goto_30

    :catchall_4e
    move-exception v0

    goto :goto_41

    :catch_50
    move-exception v0

    goto :goto_31

    :catch_52
    move-exception v0

    goto :goto_31
.end method

.method public static getFileMD5(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileMD5(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileMD5(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static getFileName(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, ""

    :cond_9
    :goto_9
    return-object p0

    :cond_a
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_20

    if-eq v0, v2, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_20
    if-eq v0, v2, :cond_24

    if-le v1, v0, :cond_2b

    :cond_24
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method private static getFileSize(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static getFsAvailableSize(Ljava/lang/String;)J
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1e

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    :goto_1c
    mul-long/2addr v0, v2

    goto :goto_8

    :cond_1e
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1c
.end method

.method public static getFsTotalSize(Ljava/lang/String;)J
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1e

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    :goto_1c
    mul-long/2addr v0, v2

    goto :goto_8

    :cond_1e
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    goto :goto_1c
.end method

.method public static getLength(Ljava/io/File;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_4

    :cond_10
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_4
.end method

.method public static getLength(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getLength(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSize(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getDirSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDir(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isDir(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isFile(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isFile(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isFileExists(Ljava/io/File;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isFileExistsApi29(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method private static isFileExistsApi29(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1b

    :try_start_7
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_18} :catch_23

    move-result-object v1

    if-nez v1, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    :try_start_1c
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_23

    :goto_1f
    const/4 v0, 0x1

    goto :goto_1b

    :catch_21
    move-exception v0

    goto :goto_1f

    :catch_23
    move-exception v1

    goto :goto_1b
.end method

.method private static isUtf8([B)I
    .registers 14

    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v1, 0x0

    array-length v0, p0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1d

    aget-byte v0, p0, v1

    const/16 v2, -0x11

    if-ne v0, v2, :cond_1d

    aget-byte v0, p0, v6

    const/16 v2, -0x45

    if-ne v0, v2, :cond_1d

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v2, -0x41

    if-ne v0, v2, :cond_1d

    move v1, v7

    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    array-length v10, p0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_21
    move v9, v3

    move v4, v0

    move v5, v1

    :goto_24
    if-ge v9, v10, :cond_9f

    aget-byte v0, p0, v9

    and-int/lit8 v0, v0, -0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1c

    aget-byte v0, p0, v9

    and-int/lit8 v0, v0, -0x2

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1c

    if-nez v5, :cond_6a

    aget-byte v0, p0, v9

    and-int/lit8 v0, v0, 0x7f

    aget-byte v3, p0, v9

    if-ne v0, v3, :cond_4b

    aget-byte v0, p0, v9

    if-eqz v0, :cond_4b

    add-int/lit8 v3, v4, 0x1

    move v0, v2

    :goto_45
    add-int/lit8 v8, v9, 0x1

    move v2, v0

    move v9, v8

    move v4, v3

    goto :goto_24

    :cond_4b
    aget-byte v0, p0, v9

    and-int/lit8 v0, v0, -0x40

    const/16 v3, -0x40

    if-ne v0, v3, :cond_af

    move v0, v1

    :goto_54
    const/16 v3, 0x8

    if-ge v0, v3, :cond_66

    const/16 v3, 0x80

    shr-int/2addr v3, v0

    int-to-byte v3, v3

    aget-byte v8, p0, v9

    and-int/2addr v8, v3

    if-ne v8, v3, :cond_66

    add-int/lit8 v3, v0, 0x1

    move v5, v0

    move v0, v3

    goto :goto_54

    :cond_66
    add-int/lit8 v0, v2, 0x1

    move v3, v4

    goto :goto_45

    :cond_6a
    array-length v0, p0

    sub-int/2addr v0, v9

    if-le v0, v5, :cond_90

    :goto_6e
    move v3, v1

    move v8, v1

    move v0, v4

    :goto_71
    if-ge v8, v5, :cond_94

    add-int v4, v9, v8

    aget-byte v11, p0, v4

    and-int/lit8 v11, v11, -0x80

    const/16 v12, -0x80

    if-eq v11, v12, :cond_8c

    aget-byte v3, p0, v4

    and-int/lit8 v3, v3, 0x7f

    aget-byte v4, p0, v4

    if-ne v3, v4, :cond_8b

    aget-byte v3, p0, v9

    if-eqz v3, :cond_8b

    add-int/lit8 v0, v0, 0x1

    :cond_8b
    move v3, v6

    :cond_8c
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_71

    :cond_90
    array-length v0, p0

    sub-int v5, v0, v9

    goto :goto_6e

    :cond_94
    if-eqz v3, :cond_9b

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v9, 0x1

    goto :goto_21

    :cond_9b
    add-int/2addr v2, v5

    add-int v3, v9, v5

    goto :goto_21

    :cond_9f
    if-ne v4, v10, :cond_a4

    move v1, v7

    goto/16 :goto_1c

    :cond_a4
    add-int v0, v2, v4

    int-to-float v0, v0

    int-to-float v1, v10

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr v0, v1

    float-to-int v1, v0

    goto/16 :goto_1c

    :cond_af
    move v0, v2

    move v3, v4

    goto :goto_45
.end method

.method public static isUtf8(Ljava/io/File;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_6

    move v0, v3

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x18

    :try_start_8
    new-array v0, v0, [B

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_46
    .catchall {:try_start_8 .. :try_end_14} :catchall_3e

    :try_start_14
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_34

    new-array v4, v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lcom/blankj/utilcode/util/FileUtils;->isUtf8([B)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_25} :catch_5f
    .catchall {:try_start_14 .. :try_end_25} :catchall_61

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_63

    const/4 v0, 0x1

    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_5

    :catch_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    :goto_37
    move v0, v3

    goto :goto_5

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    :catchall_3e
    move-exception v0

    :goto_3f
    move-object v1, v2

    :goto_40
    if-eqz v1, :cond_45

    :try_start_42
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_57

    :cond_45
    :goto_45
    throw v0

    :catch_46
    move-exception v0

    move-object v1, v2

    :goto_48
    :try_start_48
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_5c

    if-eqz v1, :cond_50

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_52

    :cond_50
    :goto_50
    move v0, v3

    goto :goto_5

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    :catch_57
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    :catchall_5c
    move-exception v0

    move-object v2, v1

    goto :goto_3f

    :catch_5f
    move-exception v0

    goto :goto_48

    :catchall_61
    move-exception v0

    goto :goto_40

    :cond_63
    move v0, v3

    goto :goto_2b
.end method

.method public static isUtf8(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isUtf8(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static listFilesInDir(Ljava/io/File;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/io/File;Ljava/util/Comparator;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/io/File;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/FileUtils$3;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/FileUtils$3;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;Ljava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v0

    if-eqz p3, :cond_9

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Z",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_b

    array-length v1, v2

    if-lez v1, :cond_b

    array-length v3, v2

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_b

    aget-object v4, v2, v1

    invoke-interface {p1, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    if-eqz p2, :cond_34

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->moveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    goto :goto_3

    :cond_f
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    goto :goto_3
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static moveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/blankj/utilcode/util/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method public static notifySystemToScan(Ljava/io/File;)V
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method public static notifySystemToScan(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->notifySystemToScan(Ljava/io/File;)V

    return-void
.end method

.method public static rename(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v1, v0

    goto :goto_4

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {p0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_48

    :goto_46
    move v1, v0

    goto :goto_4

    :cond_48
    move v0, v1

    goto :goto_46
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileUtils;->rename(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
