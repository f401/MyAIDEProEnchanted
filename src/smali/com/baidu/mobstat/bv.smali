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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/mobstat/bv;->b:Lcom/baidu/mobstat/bl;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/baidu/mobstat/br;
    .registers 7

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->b:Lcom/baidu/mobstat/bl;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bl;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "files"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetal error:: app files dir name is unexpectedly :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CuidV266Manager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_38
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/aq;

    iget-boolean v2, v0, Lcom/baidu/mobstat/aq;->d:Z

    if-eqz v2, :cond_49

    goto :goto_38

    :cond_49
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v0, v0, Lcom/baidu/mobstat/aq;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "libcuid.so"

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {v2}, Lcom/baidu/mobstat/bu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v1

    if-eqz v1, :cond_38

    :cond_69
    return-object v1
.end method

.method private a()Z
    .registers 2

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    :catch_b
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private b()Lcom/baidu/mobstat/br;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    const-string v1, "backups/.SystemConfig"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string v1, ".cuid"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_29
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6b

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_42
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {p0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_6b
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance p0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, p1, v0}, Lcom/baidu/mobstat/at;->a([B[B[B)[B

    move-result-object p1

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/bm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_93} :catch_96
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_93} :catch_94

    goto :goto_97

    :catch_94
    move-exception p0

    goto :goto_97

    :catch_96
    move-exception p0

    :goto_97
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "libcuid.so"

    sget-boolean v1, Lcom/baidu/android/common/util/DeviceId;->sDataCuidInfoShable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x0

    :goto_12
    const/4 v4, 0x0

    :try_start_13
    iget-object v5, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_62
    .catchall {:try_start_13 .. :try_end_23} :catchall_60

    if-eqz v4, :cond_2d

    :try_start_25
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    if-nez v1, :cond_45

    sget-boolean p1, Lcom/baidu/android/common/util/DeviceId;->sDataCuidInfoShable:Z

    if-eqz p1, :cond_45

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1b4

    goto :goto_5a

    :cond_45
    sget-boolean p1, Lcom/baidu/android/common/util/DeviceId;->sDataCuidInfoShable:Z

    if-nez p1, :cond_5f

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1b0

    :goto_5a
    invoke-static {p1, v0}, Lcom/baidu/mobstat/bv$a;->a(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_5f
    return v2

    :catchall_60
    move-exception p1

    goto :goto_71

    :catch_62
    move-exception p1

    :try_start_63
    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    if-eqz v4, :cond_70

    :try_start_68
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    return v3

    :goto_71
    if-eqz v4, :cond_7b

    :try_start_73
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_7b
    :goto_7b
    throw p1
.end method

.method private c()Lcom/baidu/mobstat/br;
    .registers 3

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
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static e(Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".cuid2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_54

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_2b
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

    if-nez v6, :cond_2b

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_66} :catch_69
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_66} :catch_67

    goto :goto_6a

    :catch_67
    move-exception p0

    goto :goto_6a

    :catch_69
    move-exception p0

    :goto_6a
    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p1, "0"

    return-object p1
.end method

.method private g(Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .registers 4

    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "baidu/.cuid"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1d

    :cond_12
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "backups/.SystemConfig/.cuid"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1d
    :try_start_1d
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_3b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bm;->a([B)[B

    move-result-object v0

    invoke-static {p1, p1, v0}, Lcom/baidu/mobstat/at;->b([B[B[B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6f

    array-length v0, p1
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_60} :catch_6e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_60} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_60} :catch_6a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6f

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    goto :goto_72

    :catch_6a
    move-exception p1

    goto :goto_6f

    :catch_6c
    move-exception p1

    goto :goto_6f

    :catch_6e
    move-exception p1

    :cond_6f
    :goto_6f
    const-string v0, ""

    move-object p1, v0

    :goto_72
    invoke-static {p1, v0}, Lcom/baidu/mobstat/br;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .registers 4

    iget-object p1, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)Lcom/baidu/mobstat/br;

    move-result-object p1

    if-nez p1, :cond_12

    const-string p1, "com.baidu.deviceid.v2"

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object p1

    :cond_12
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_20

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->b()Lcom/baidu/mobstat/br;

    move-result-object p1

    :cond_20
    if-nez p1, :cond_26

    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->c()Lcom/baidu/mobstat/br;

    move-result-object p1

    :cond_26
    const-string v1, ""

    if-nez p1, :cond_36

    if-eqz v0, :cond_36

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/bv;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bv;->g(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-nez v0, :cond_3c

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/bv;->f(Ljava/lang/String;)Ljava/lang/String;

    :cond_3c
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/baidu/mobstat/br;->d()Z

    :cond_41
    return-object p1
.end method

.method public a(Lcom/baidu/mobstat/br;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/bv;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libcuid.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mobstat/br;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_32

    :cond_18
    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/baidu/mobstat/br;->d()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/baidu/mobstat/br;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bv;->b(Ljava/lang/String;)Z

    goto :goto_35

    :cond_30
    if-nez v0, :cond_35

    :goto_32
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bv;->b(Ljava/lang/String;)Z

    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->a()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v1, "com.baidu.deviceid.v2"

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_5e

    :cond_48
    invoke-static {v2}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/baidu/mobstat/br;->d()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-virtual {v2}, Lcom/baidu/mobstat/br;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/mobstat/bv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_61

    :cond_5c
    if-nez v2, :cond_61

    :goto_5e
    invoke-direct {p0, v1, p1}, Lcom/baidu/mobstat/bv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_61
    :goto_61
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/bv;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "backups/.SystemConfig/.cuid2"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7b

    goto :goto_8e

    :cond_7b
    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->b()Lcom/baidu/mobstat/br;

    move-result-object v2

    if-eqz v2, :cond_8c

    invoke-virtual {v2}, Lcom/baidu/mobstat/br;->d()Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-virtual {v2}, Lcom/baidu/mobstat/br;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_8e

    :cond_8c
    if-nez v2, :cond_91

    :goto_8e
    invoke-static {p1}, Lcom/baidu/mobstat/bv;->e(Ljava/lang/String;)V

    :cond_91
    if-eqz v0, :cond_b9

    const-string p1, "bd_setting_i"

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a1

    const/4 v2, 0x0

    goto :goto_a5

    :cond_a1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_a5
    invoke-static {v2}, Lcom/baidu/mobstat/br;->a(I)Z

    move-result v2

    if-eqz v2, :cond_ae

    const-string v0, "O"

    goto :goto_b6

    :cond_ae
    invoke-static {v0}, Lcom/baidu/mobstat/br;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    const-string v0, "0"

    :goto_b6
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/bv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b9
    if-eqz v1, :cond_e6

    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "backups/.SystemConfig/.cuid"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_cd

    goto :goto_e6

    :cond_cd
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bv;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bv;->g(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object p1

    if-eqz p1, :cond_e6

    invoke-virtual {p1}, Lcom/baidu/mobstat/br;->d()Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/bv;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    :goto_e6
    return-void
.end method
