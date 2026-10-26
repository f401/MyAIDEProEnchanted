.class public Lcom/baidu/mobstat/bv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/bv$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/mobstat/bl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobstat/bl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/mobstat/bv;->b:Lcom/baidu/mobstat/bl;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/baidu/mobstat/br;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->b:Lcom/baidu/mobstat/bl;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bl;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "files"

    const-string v5, "files"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "fetal error:: app files dir name is unexpectedly :: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CuidV266Manager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/aq;

    iget-boolean v4, v0, Lcom/baidu/mobstat/aq;->d:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v0, v0, Lcom/baidu/mobstat/aq;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "libcuid.so"

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/baidu/mobstat/bu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, v0

    :cond_1
    return-object v2

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lcom/baidu/mobstat/br;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "backups/.SystemConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, ".cuid"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v2, v0}, Lcom/baidu/mobstat/at;->a([B[B[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/bm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/baidu/android/common/util/DeviceId;->sDataCuidInfoShable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    const-string v5, "libcuid.so"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    sget-boolean v0, Lcom/baidu/android/common/util/DeviceId;->sDataCuidInfoShable:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libcuid.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1b4

    :goto_2
    invoke-static {v1, v0}, Lcom/baidu/mobstat/bv$a;->a(Ljava/lang/String;I)Z

    move-result v1

    :cond_2
    :goto_3
    return v1

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/baidu/android/common/util/DeviceId;->sDataCuidInfoShable:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libcuid.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1b0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_4
    :try_start_3
    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_5
    move v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_6
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_7
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6
.end method

.method private c()Lcom/baidu/mobstat/br;
    .locals 2

    const-string v0, "com.baidu.deviceid"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bd_setting_i"

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/br;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".cuid2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method private g(Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "baidu/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_0
    :goto_2
    const-string v1, ""

    const-string v0, ""

    :goto_3
    invoke-static {v0, v1}, Lcom/baidu/mobstat/br;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/bm;->a([B)[B

    move-result-object v1

    invoke-static {v0, v0, v1}, Lcom/baidu/mobstat/at;->b([B[B[B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)Lcom/baidu/mobstat/br;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "com.baidu.deviceid.v2"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/bv;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->b()Lcom/baidu/mobstat/br;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->c()Lcom/baidu/mobstat/br;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->g(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->f(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/baidu/mobstat/br;->d()Z

    :cond_3
    return-object v1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/br;)V
    .locals 6

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "libcuid.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mobstat/br;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->b(Ljava/lang/String;)Z

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "com.baidu.deviceid.v2"

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    const-string v2, "com.baidu.deviceid.v2"

    invoke-direct {p0, v2, v0}, Lcom/baidu/mobstat/bv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_3
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/bv;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "backups/.SystemConfig/.cuid2"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    :goto_4
    invoke-static {v0}, Lcom/baidu/mobstat/bv;->e(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "bd_setting_i"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/baidu/mobstat/br;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "O"

    :goto_6
    const-string v1, "bd_setting_i"

    invoke-direct {p0, v1, v0}, Lcom/baidu/mobstat/bv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_4
    :goto_7
    return-void

    :cond_5
    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/baidu/mobstat/br;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/mobstat/br;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/bv;->b(Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    if-nez v1, :cond_0

    goto :goto_0

    :cond_7
    invoke-static {v2}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/baidu/mobstat/br;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.baidu.deviceid.v2"

    invoke-virtual {v2}, Lcom/baidu/mobstat/br;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/baidu/mobstat/bv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_8
    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->b()Lcom/baidu/mobstat/br;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/baidu/mobstat/br;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/baidu/mobstat/br;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    if-nez v3, :cond_2

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_5

    :cond_c
    invoke-static {v1}, Lcom/baidu/mobstat/br;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    goto :goto_6

    :cond_d
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->g(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/baidu/mobstat/br;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/bv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method
