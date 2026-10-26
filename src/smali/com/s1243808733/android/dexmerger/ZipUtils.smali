.class public final Lcom/s1243808733/android/dexmerger/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFFER_LEN:I = 0x14000


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_2

    .line 427
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createOrExistsFile(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 432
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_0

    .line 433
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 437
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getComments(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0

    .line 415
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 417
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 418
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 420
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getComments(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getComments(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 443
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getFilesPath(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 389
    :goto_0
    return-object v0

    .line 377
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 379
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 380
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v4, "../"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "entryName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is dangerous!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getFilesPath(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 449
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 327
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-static {v4}, Lcom/s1243808733/android/dexmerger/ZipUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v0

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    invoke-static {v4}, Lcom/s1243808733/android/dexmerger/ZipUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 337
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    const v0, 0x14000

    :try_start_2
    new-array v0, v0, [B

    .line 340
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 341
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 348
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    .line 348
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 350
    :cond_3
    throw v0

    .line 345
    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 348
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_2
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 318
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 289
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 291
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 293
    :try_start_0
    invoke-static {p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 296
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 297
    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 298
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "entryName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is dangerous!"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 317
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 318
    throw v0

    .line 301
    :cond_3
    :try_start_1
    invoke-static {p1, v1, v2, v0, v4}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 317
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    goto :goto_0

    .line 304
    :cond_5
    :goto_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 306
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 307
    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 308
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "entryName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is dangerous!"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 311
    :cond_6
    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 312
    invoke-static {p1, v1, v2, v0, v4}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2
.end method

.method public static unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 180
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    const-string v0, ""

    invoke-static {p0, v0, v1, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 184
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 186
    :cond_2
    throw v0

    .line 184
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v4, 0x495b9700

    const/4 v1, 0x0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 197
    array-length v0, v3

    if-gtz v0, :cond_3

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v4, v5}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 201
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 202
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 224
    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 194
    :cond_2
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_3
    array-length v4, v3

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 205
    invoke-static {v5, v2, p2, p3}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 211
    :cond_5
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 214
    const-wide/32 v2, 0x495b9700

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 215
    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 216
    const v0, 0x14000

    new-array v0, v0, [B

    .line 218
    :goto_4
    const/4 v2, 0x0

    const v3, 0x14000

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 219
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 224
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 226
    :cond_6
    throw v0

    .line 221
    :cond_7
    :try_start_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_5
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 107
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 109
    const-string v4, ""

    invoke-static {v0, v4, v2, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 114
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 115
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    move v0, v1

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 115
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 115
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 117
    :cond_4
    throw v0

    .line 115
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 65
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v4, v2, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 73
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    move v0, v1

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 73
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 72
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 73
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 75
    :cond_4
    throw v0

    .line 73
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method
