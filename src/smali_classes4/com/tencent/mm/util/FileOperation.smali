.class public Lcom/tencent/mm/util/FileOperation;
.super Ljava/lang/Object;


# static fields
.field private static final BUFFER:I = 0x2000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDirectory(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public static checkFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    invoke-static {p0}, Lcom/tencent/mm/util/FileOperation;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b
.end method

.method public static copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V
    .registers 8
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

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Ljava/io/FileInputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_49

    :try_start_1a
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_4d

    const/16 v0, 0x2000

    :try_start_22
    new-array v0, v0, [B

    :goto_24
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_3a

    move-result v1

    if-gtz v1, :cond_35

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2f
    if-eqz v4, :cond_34

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_34
    return-void

    :cond_35
    const/4 v3, 0x0

    :try_start_36
    invoke-virtual {v4, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_24

    :catchall_3a
    move-exception v0

    move-object v3, v2

    move-object v1, v4

    move-object v5, v0

    :goto_3e
    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_43
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_48
    throw v5

    :catchall_49
    move-exception v2

    move-object v3, v0

    move-object v5, v2

    goto :goto_3e

    :catchall_4d
    move-exception v0

    move-object v3, v2

    move-object v5, v0

    goto :goto_3e
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    goto :goto_9

    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    :goto_22
    array-length v2, v1

    if-ge v0, v2, :cond_13

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_3
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static getFileSizes(Ljava/io/File;)J
    .registers 7

    const/4 v0, 0x0

    int-to-long v4, v0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    check-cast v0, Ljava/io/FileInputStream;

    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_21
    .catchall {:try_start_11 .. :try_end_16} :catchall_28

    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_3d
    .catchall {:try_start_16 .. :try_end_19} :catchall_3a

    move-result v0

    int-to-long v0, v0

    :goto_1b
    if-eqz v2, :cond_20

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_35

    :cond_20
    :goto_20
    return-wide v0

    :catch_21
    move-exception v1

    move-object v2, v0

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3a

    move-wide v0, v4

    goto :goto_1b

    :catchall_28
    move-exception v1

    move-object v2, v0

    :goto_2a
    if-eqz v2, :cond_2f

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    throw v1

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    :catch_35
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    :catchall_3a
    move-exception v0

    move-object v1, v0

    goto :goto_2a

    :catch_3d
    move-exception v0

    move-object v1, v0

    goto :goto_23

    :cond_40
    move-wide v0, v4

    goto :goto_20
.end method

.method public static getlist(Ljava/io/File;)J
    .registers 7

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    int-to-long v0, v2

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    int-to-long v0, v0

    goto :goto_a

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v0, v3

    int-to-long v0, v0

    :goto_1a
    array-length v4, v3

    if-ge v2, v4, :cond_a

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2f

    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/tencent/mm/util/FileOperation;->getlist(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a
.end method

.method private static readContents(Ljava/io/File;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_13
    const/4 v3, 0x0

    const/16 v4, 0x1000

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_33

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_28
    :try_start_28
    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_33

    goto :goto_13

    :catchall_33
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
.end method

.method public static unZipAPk(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "rawtypes"
    .end annotation

    invoke-static {p1}, Lcom/tencent/mm/util/FileOperation;->checkDirectory(Ljava/lang/String;)Z

    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_11
    :try_start_11
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_34

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object v4

    :cond_1b
    :try_start_1b
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_34

    goto :goto_11

    :catchall_34
    move-exception v0

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    throw v0

    :cond_39
    :try_start_39
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_7e
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "\\"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_92

    const-string v7, "\\"

    const-string v8, "/"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_92
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x2000

    invoke-direct {v1, v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v6, 0x2000

    new-array v6, v6, [B

    :goto_ae
    const/4 v7, 0x0

    const/16 v8, 0x2000

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c3

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_11

    :cond_c3
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c7
    .catchall {:try_start_39 .. :try_end_c7} :catchall_34

    goto :goto_ae
.end method

.method private static zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_44

    const-string v0, ""

    :goto_1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move v0, v1

    :goto_40
    array-length v1, v3

    if-lt v0, v1, :cond_47

    :goto_43
    return-void

    :cond_44
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_1d

    :cond_47
    aget-object v1, v3, v0

    invoke-static {v1, p1, v2, p3}, Lcom/tencent/mm/util/FileOperation;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/util/HashMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_4f
    invoke-static {p0}, Lcom/tencent/mm/util/FileOperation;->readContents(Ljava/io/File;)[B

    move-result-object v3

    const-string v0, "\\"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "\\"

    const-string v4, "/"

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_64
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "do not have the compress data path =%s in resource.asrc\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_43

    :cond_7d
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    if-ne v0, v5, :cond_9e

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    :goto_91
    invoke-virtual {p1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_43

    :cond_9e
    invoke-virtual {v4, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    array-length v0, v3

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    goto :goto_91
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_65

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_61
    invoke-static {v0, v2, v1, p3}, Lcom/tencent/mm/util/FileOperation;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_17

    :cond_65
    const-string v1, ""

    goto :goto_61

    :cond_68
    const-string v1, ""

    invoke-static {v0, v2, v1, p3}, Lcom/tencent/mm/util/FileOperation;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_17
.end method
