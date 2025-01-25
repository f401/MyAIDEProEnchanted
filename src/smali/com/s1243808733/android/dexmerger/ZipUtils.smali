.class public final Lcom/s1243808733/android/dexmerger/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFFER_LEN:I = 0x14000


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 427
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private static createOrExistsFile(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 432
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 433
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 435
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    move-exception p0

    .line 437
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static getComments(Ljava/io/File;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 415
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 417
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 418
    :goto_12
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 419
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 420
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 422
    :cond_26
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object v0
.end method

.method public static getComments(Ljava/lang/String;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
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

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getComments(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 443
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method public static getFilesPath(Ljava/io/File;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 377
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 379
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 380
    :goto_12
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 381
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 382
    const-string v3, "../"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 383
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "entryName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is dangerous!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 386
    :cond_46
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 389
    :cond_4a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object v0
.end method

.method public static getFilesPath(Ljava/lang/String;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
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

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 448
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 449
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method

.method private static unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
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

    .line 327
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 330
    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result p0

    return p0

    .line 332
    :cond_13
    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_1b

    return p1

    .line 336
    :cond_1b
    const/4 p0, 0x0

    :try_start_1c
    new-instance p4, Ljava/io/BufferedInputStream;

    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_4d

    .line 337
    :try_start_25
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_4b

    .line 338
    const p0, 0x14000

    :try_start_32
    new-array p0, p0, [B

    .line 340
    :goto_34
    invoke-virtual {p4, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_3f

    .line 341
    invoke-virtual {p2, p0, p1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_47

    goto :goto_34

    .line 345
    :cond_3f
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    .line 348
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception p0

    move-object p1, p0

    move-object p0, p2

    goto :goto_4f

    :catchall_4b
    move-exception p1

    goto :goto_4f

    :catchall_4d
    move-exception p1

    move-object p4, p0

    :goto_4f
    if-eqz p4, :cond_54

    .line 345
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    :cond_54
    if-eqz p0, :cond_59

    .line 348
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 350
    :cond_59
    goto :goto_5b

    :goto_5a
    throw p1

    :goto_5b
    goto :goto_5a
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
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

    move-result-object p0

    return-object p0
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
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

    move-result-object p0

    return-object p0
.end method

.method public static unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_98

    if-nez p1, :cond_6

    goto/16 :goto_98

    .line 289
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 291
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 293
    :try_start_14
    invoke-static {p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->isSpace(Ljava/lang/String;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_93

    const-string v3, " is dangerous!"

    const-string v4, "entryName: "

    const-string v5, "../"

    if-eqz v2, :cond_58

    .line 294
    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_54

    .line 295
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/zip/ZipEntry;

    .line 296
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 298
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 301
    :cond_4e
    invoke-static {p1, v0, v1, p2, v2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result p2
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_93

    if-nez p2, :cond_20

    .line 317
    :cond_54
    :goto_54
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    .line 304
    :cond_58
    :goto_58
    :try_start_58
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 305
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 306
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 307
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 308
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 311
    :cond_86
    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 312
    invoke-static {p1, v0, v1, v2, v6}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v2
    :try_end_90
    .catchall {:try_start_58 .. :try_end_90} :catchall_93

    if-nez v2, :cond_58

    .line 317
    goto :goto_54

    :catchall_93
    move-exception p0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 318
    throw p0

    :cond_98
    :goto_98
    const/4 p0, 0x0

    return-object p0
.end method

.method public static unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
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

    move-result-object p0

    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_23

    if-nez p1, :cond_5

    goto :goto_23

    .line 180
    :cond_5
    :try_start_5
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1b

    .line 181
    :try_start_f
    const-string p1, ""

    invoke-static {p0, p1, v0, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 184
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    return p0

    :catchall_19
    move-exception p0

    goto :goto_1d

    :catchall_1b
    move-exception p0

    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 186
    :cond_22
    throw p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method private static zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->isSpace(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, ""

    goto :goto_13

    :cond_11
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/32 v1, 0x495b9700

    const/4 v3, 0x0

    if-eqz v0, :cond_68

    .line 196
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 197
    array-length v0, p0

    if-gtz v0, :cond_35

    goto :goto_45

    .line 204
    :cond_35
    array-length v0, p0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v0, :cond_97

    aget-object v2, p0, v1

    .line 205
    invoke-static {v2, p1, p2, p3}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    return v3

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 198
    :cond_45
    :goto_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 201
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 202
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_97

    :cond_68
    nop

    .line 211
    :try_start_69
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_9b

    .line 212
    :try_start_73
    new-instance p0, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 215
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 216
    const p0, 0x14000

    new-array p1, p0, [B

    .line 218
    :goto_86
    invoke-virtual {v0, p1, v3, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_91

    .line 219
    invoke-virtual {p2, p1, v3, p3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_86

    .line 221
    :cond_91
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_94
    .catchall {:try_start_73 .. :try_end_94} :catchall_99

    .line 224
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_97
    :goto_97
    const/4 p0, 0x1

    return p0

    :catchall_99
    move-exception p0

    goto :goto_9d

    :catchall_9b
    move-exception p0

    const/4 v0, 0x0

    :goto_9d
    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 226
    :cond_a2
    goto :goto_a4

    :goto_a3
    throw p0

    :goto_a4
    goto :goto_a3
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
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

    move-result p0

    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
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

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    if-nez p1, :cond_6

    goto :goto_44

    .line 107
    :cond_6
    :try_start_6
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_39

    .line 108
    :try_start_10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 109
    const-string v2, ""

    invoke-static {p1, v2, v1, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_37

    if-nez p1, :cond_14

    .line 114
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 115
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    return v0

    .line 114
    :cond_2f
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 115
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_37
    move-exception p0

    goto :goto_3b

    :catchall_39
    move-exception p0

    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_43

    .line 114
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 115
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 117
    :cond_43
    throw p0

    :cond_44
    :goto_44
    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
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

    move-result p0

    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
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

    const/4 v0, 0x0

    if-eqz p0, :cond_48

    if-nez p1, :cond_6

    goto :goto_48

    .line 65
    :cond_6
    :try_start_6
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3d

    .line 66
    :try_start_10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v2, ""

    invoke-static {p1, v2, v1, p2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_3b

    if-nez p1, :cond_14

    .line 72
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 73
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    return v0

    .line 72
    :cond_33
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 73
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_3b
    move-exception p0

    goto :goto_3f

    :catchall_3d
    move-exception p0

    const/4 v1, 0x0

    :goto_3f
    if-eqz v1, :cond_47

    .line 72
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 73
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 75
    :cond_47
    throw p0

    :cond_48
    :goto_48
    return v0
.end method
