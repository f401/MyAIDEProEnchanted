.class public Lcom/sun/tools/javac/file/RelativePath$RelativeFile;
.super Lcom/sun/tools/javac/file/RelativePath;
.source "RelativePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/RelativePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeFile"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Lcom/sun/tools/javac/file/RelativePath;)V
    .registers 4

    .line 167
    iget-object v0, p2, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V
    .registers 5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 154
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/RelativePath;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 157
    return-void

    .line 156
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static forClass(Ljava/lang/CharSequence;Ljavax/tools/JavaFileObject$Kind;)Lcom/sun/tools/javac/file/RelativePath$RelativeFile;
    .registers 6

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public basename()Ljava/lang/String;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->path:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->path:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 152
    check-cast p1, Lcom/sun/tools/javac/file/RelativePath;

    invoke-super {p0, p1}, Lcom/sun/tools/javac/file/RelativePath;->compareTo(Lcom/sun/tools/javac/file/RelativePath;)I

    move-result v0

    return v0
.end method

.method public dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->path:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 177
    new-instance v1, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v2, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->path:Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method getZipEntry(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelativeFile["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
