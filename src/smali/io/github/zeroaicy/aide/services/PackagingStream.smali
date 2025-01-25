.class public Lio/github/zeroaicy/aide/services/PackagingStream;
.super Ljava/util/zip/ZipOutputStream;
.source "PackagingStream.java"


# instance fields
.field private zipEntryNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .line 18
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/aide/services/PackagingStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/aide/services/PackagingStream;->zipEntryNameSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3

    .line 26
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingStream;->zipEntryNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getZipEntryCount()I
    .registers 2

    .line 29
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingStream;->zipEntryNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/services/PackagingStream;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 37
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingStream;->zipEntryNameSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-super {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    return-void

    .line 35
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry already exists: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
