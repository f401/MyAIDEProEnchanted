.class public Lcom/sun/tools/javac/file/ZipFileIndexArchive;
.super Ljava/lang/Object;
.source "ZipFileIndexArchive.java"

# interfaces
.implements Lcom/sun/tools/javac/file/JavacFileManager$Archive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;
    }
.end annotation


# instance fields
.field private fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

.field private final zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;Lcom/sun/tools/javac/file/ZipFileIndex;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    .line 62
    iput-object p2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 63
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->close()V

    .line 86
    return-void
.end method

.method public contains(Lcom/sun/tools/javac/file/RelativePath;)Z
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->contains(Lcom/sun/tools/javac/file/RelativePath;)Z

    move-result v0

    return v0
.end method

.method public getFileObject(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)Ljavax/tools/JavaFileObject;
    .registers 8

    .line 74
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->getZipIndexEntry(Lcom/sun/tools/javac/file/RelativePath;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    new-instance v3, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;

    invoke-virtual {v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Lcom/sun/tools/javac/file/ZipFileIndex;Lcom/sun/tools/javac/file/ZipFileIndex$Entry;Ljava/io/File;)V

    .line 77
    return-object v3
.end method

.method public getFiles(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getFiles(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubdirectories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->getAllDirectories()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipFileIndexArchive["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
