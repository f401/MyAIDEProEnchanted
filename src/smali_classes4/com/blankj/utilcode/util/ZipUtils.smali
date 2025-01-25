.class public final Lcom/blankj/utilcode/util/ZipUtils;
.super Ljava/lang/Object;


# static fields
.field private static final BUFFER_LEN:I = 0x2000


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getComments(Ljava/io/File;)Ljava/util/List;
    .registers 5
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

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    goto :goto_3
.end method

.method public static getComments(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ZipUtils;->getComments(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFilesPath(Ljava/io/File;)Ljava/util/List;
    .registers 7
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

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "../"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_51

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entryName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is dangerous!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ZipUtils"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_51
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_55
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    goto :goto_3
.end method

.method public static getFilesPath(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .registers 10
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

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v4}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsDir(Ljava/io/File;)Z

    move-result v0

    :cond_14
    :goto_14
    return v0

    :cond_15
    invoke-static {v4}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_14

    :try_start_1b
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_53

    :try_start_24
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_56

    const/16 v0, 0x2000

    :try_start_30
    new-array v0, v0, [B

    :goto_32
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4b

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3e

    goto :goto_32

    :catchall_3e
    move-exception v0

    move-object v2, v3

    :goto_40
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_45
    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4a
    throw v0

    :cond_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    goto :goto_14

    :catchall_53
    move-exception v0

    move-object v1, v2

    goto :goto_40

    :catchall_56
    move-exception v0

    goto :goto_40
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 3
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 10
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

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :try_start_14
    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entryName: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is dangerous!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ZipUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_14 .. :try_end_55} :catchall_56

    goto :goto_1a

    :catchall_56
    move-exception v0

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    throw v0

    :cond_5b
    :try_start_5b
    invoke-static {p1, v1, v2, v0, v4}, Lcom/blankj/utilcode/util/ZipUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_56

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    goto :goto_5

    :cond_66
    :goto_66
    :try_start_66
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entryName: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is dangerous!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ZipUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :cond_a2
    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-static {p1, v1, v2, v0, v4}, Lcom/blankj/utilcode/util/ZipUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    :try_end_ab
    .catchall {:try_start_66 .. :try_end_ab} :catchall_56

    move-result v0

    if-nez v0, :cond_66

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    goto/16 :goto_5

    :cond_b4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    goto/16 :goto_5
.end method

.method public static unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
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

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v2, 0x0

    :try_start_7
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1b

    :try_start_11
    const-string v0, ""

    invoke-static {p0, v0, v1, p2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_23

    move-result v0

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_5

    :catchall_1b
    move-exception v0

    move-object v1, v2

    :goto_1d
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_22
    throw v0

    :catchall_23
    move-exception v0

    goto :goto_1d
.end method

.method private static zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, ""

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2e

    array-length v0, v2

    if-gtz v0, :cond_52

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_4d
    :goto_4d
    const/4 v0, 0x1

    :goto_4e
    return v0

    :cond_4f
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_11

    :cond_52
    array-length v4, v2

    move v0, v1

    :goto_54
    if-ge v0, v4, :cond_4d

    aget-object v5, v2, v0

    invoke-static {v5, v3, p2, p3}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_60

    move v0, v1

    goto :goto_4e

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_63
    const/4 v2, 0x0

    :try_start_64
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_9a

    :try_start_6e
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_7d
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_93

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_8b
    .catchall {:try_start_6e .. :try_end_8b} :catchall_8c

    goto :goto_7d

    :catchall_8c
    move-exception v0

    :goto_8d
    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_92
    throw v0

    :cond_93
    :try_start_93
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_8c

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_4d

    :catchall_9a
    move-exception v0

    move-object v1, v2

    goto :goto_8d
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .registers 3
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z
    .registers 8
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

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v3, 0x0

    :try_start_8
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_45

    :try_start_12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const-string v4, ""

    invoke-static {v0, v4, v2, p2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_3a

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    move v0, v1

    goto :goto_6

    :cond_32
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    const/4 v0, 0x1

    goto :goto_6

    :catchall_3a
    move-exception v0

    move-object v1, v2

    :goto_3c
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_44
    throw v0

    :catchall_45
    move-exception v0

    move-object v1, v3

    goto :goto_3c
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 3
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
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

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v3, 0x0

    :try_start_8
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_49

    :try_start_12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v4, v2, p2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_3e

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    move v0, v1

    goto :goto_6

    :cond_36
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    const/4 v0, 0x1

    goto :goto_6

    :catchall_3e
    move-exception v0

    move-object v1, v2

    :goto_40
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_48
    throw v0

    :catchall_49
    move-exception v0

    move-object v1, v3

    goto :goto_40
.end method
