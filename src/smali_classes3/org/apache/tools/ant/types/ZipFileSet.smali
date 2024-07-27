.class public Lorg/apache/tools/ant/types/ZipFileSet;
.super Lorg/apache/tools/ant/types/ArchiveFileSet;
.source "ZipFileSet.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>()V

    .line 39
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/AbstractFileSet;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    return-object v0
.end method

.method protected getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;
    .registers 4

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ZipFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    instance-of v1, v0, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Lorg/apache/tools/ant/types/ZipFileSet;

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 83
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    move-object v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t denote a zipfileset or a fileset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected newArchiveScanner()Lorg/apache/tools/ant/types/ArchiveScanner;
    .registers 3

    .line 63
    new-instance v0, Lorg/apache/tools/ant/types/ZipScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ZipScanner;-><init>()V

    .line 64
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipScanner;->setEncoding(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method
