.class public Landroidj/support/v4/util/AtomicFile;
.super Ljava/lang/Object;


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    return-void
.end method

.method static sync(Ljava/io/FileOutputStream;)Z
    .registers 2

    if-eqz p0, :cond_9

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public delete()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .registers 5

    if-eqz p1, :cond_14

    invoke-static {p1}, Landroidj/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "AtomicFile"

    const-string v2, "failWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .registers 5

    if-eqz p1, :cond_d

    invoke-static {p1}, Landroidj/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string v1, "AtomicFile"

    const-string v2, "finishWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public getBaseFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_14
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public readFully()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    move v2, v0

    :goto_c
    array-length v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {v3, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_2b

    move-result v0

    if-gtz v0, :cond_18

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :cond_18
    add-int/2addr v2, v0

    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    array-length v4, v1

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_30

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2b

    :goto_29
    move-object v1, v0

    goto :goto_c

    :catchall_2b
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0

    :cond_30
    move-object v0, v1

    goto :goto_29
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    iget-object v1, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "AtomicFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t rename file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to backup file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    :try_start_40
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_47} :catch_4e

    :goto_47
    return-object v0

    :cond_48
    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_40

    :catch_4e
    move-exception v0

    iget-object v0, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_76

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    :try_start_76
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_7d} :catch_7e

    goto :goto_47

    :catch_7e
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
