.class public Lcom/github/megatronking/svg/generator/utils/FileUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFolders(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public static noExtensionFullName(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/FileUtils;->noExtensionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static noExtensionLastName(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/FileUtils;->noExtensionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static noExtensionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/github/megatronking/svg/generator/utils/FileUtils;->saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method private static saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    if-nez p3, :cond_10

    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/FileUtils;->createFolders(Ljava/io/File;)Z

    :cond_13
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/io/FileOutputStream;

    :try_start_1b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_57
    .catchall {:try_start_1b .. :try_end_20} :catchall_42

    :try_start_20
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_36
    .catchall {:try_start_20 .. :try_end_2a} :catchall_54

    const/4 v0, 0x1

    if-eqz v3, :cond_f

    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_54

    goto :goto_f

    :catch_31
    move-exception v2

    :try_start_32
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_54

    goto :goto_f

    :catch_36
    move-exception v0

    move-object v2, v0

    :goto_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_54

    if-eqz v3, :cond_40

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4f

    :cond_40
    :goto_40
    move v0, v1

    goto :goto_f

    :catchall_42
    move-exception v1

    move-object v3, v0

    :goto_44
    if-eqz v3, :cond_49

    :try_start_46
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    throw v1

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catchall_54
    move-exception v0

    move-object v1, v0

    goto :goto_44

    :catch_57
    move-exception v2

    move-object v3, v0

    goto :goto_38
.end method

.method public static unZipGzipFile(Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x400

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_17
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v3, v7, [B

    :goto_28
    invoke-virtual {v2, v3, v6, v7}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3c

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3b
    return-void

    :cond_3c
    invoke-virtual {v1, v3, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_28
.end method
