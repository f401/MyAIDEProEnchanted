.class public abstract Lcom/sun/tools/javac/file/RelativePath;
.super Ljava/lang/Object;
.source "RelativePath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;,
        Lcom/sun/tools/javac/file/RelativePath$RelativeFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sun/tools/javac/file/RelativePath;",
        ">;"
    }
.end annotation


# instance fields
.field protected final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract basename()Ljava/lang/String;
.end method

.method public compareTo(Lcom/sun/tools/javac/file/RelativePath;)I
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 44
    check-cast p1, Lcom/sun/tools/javac/file/RelativePath;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/RelativePath;->compareTo(Lcom/sun/tools/javac/file/RelativePath;)I

    move-result v0

    return v0
.end method

.method public abstract dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 70
    instance-of v0, p1, Lcom/sun/tools/javac/file/RelativePath;

    if-nez v0, :cond_6

    .line 71
    const/4 v0, 0x0

    .line 72
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    check-cast p1, Lcom/sun/tools/javac/file/RelativePath;

    iget-object v1, p1, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public getFile(Ljava/io/File;)Ljava/io/File;
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 61
    :goto_8
    return-object p1

    :cond_9
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    const/16 v2, 0x2f

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_8
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelPath["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
