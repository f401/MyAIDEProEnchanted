.class Lcom/s1243808733/android/multidex/ArchivePathElement;
.super Ljava/lang/Object;
.source "ArchivePathElement.java"

# interfaces
.implements Lcom/s1243808733/android/multidex/ClassPathElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/multidex/ArchivePathElement$DirectoryEntryException;
    }
.end annotation


# instance fields
.field private final archive:Ljava/util/zip/ZipFile;


# direct methods
.method static bridge synthetic -$$Nest$fgetarchive(Lcom/s1243808733/android/multidex/ArchivePathElement;)Ljava/util/zip/ZipFile;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement;->archive:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement;->archive:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement;->archive:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method public list()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/s1243808733/android/multidex/ArchivePathElement$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/multidex/ArchivePathElement$1;-><init>(Lcom/s1243808733/android/multidex/ArchivePathElement;)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement;->archive:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement;->archive:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/s1243808733/android/multidex/ArchivePathElement$DirectoryEntryException;

    invoke-direct {v0}, Lcom/s1243808733/android/multidex/ArchivePathElement$DirectoryEntryException;-><init>()V

    throw v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
