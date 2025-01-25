.class public Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;
.super Lcom/sun/tools/javac/file/RelativePath;
.source "RelativePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/RelativePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeDirectory"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V
    .registers 5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    :goto_e
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/RelativePath;-><init>(Ljava/lang/String;)V

    .line 102
    return-void

    .line 101
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_e
.end method

.method static forPackage(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;
    .registers 5

    .line 112
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public basename()Ljava/lang/String;
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 127
    if-nez v0, :cond_b

    .line 128
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    .line 130
    :goto_a
    return-object v0

    .line 129
    :cond_b
    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    const/16 v2, 0x2f

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 95
    check-cast p1, Lcom/sun/tools/javac/file/RelativePath;

    invoke-super {p0, p1}, Lcom/sun/tools/javac/file/RelativePath;->compareTo(Lcom/sun/tools/javac/file/RelativePath;)I

    move-result v0

    return v0
.end method

.method contains(Lcom/sun/tools/javac/file/RelativePath;)Z
    .registers 4

    .line 138
    iget-object v0, p1, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1a

    iget-object v0, p1, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 118
    if-nez v0, :cond_9

    .line 121
    :goto_8
    return-object p0

    .line 120
    :cond_9
    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    const/16 v2, 0x2f

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 121
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v2, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelativeDirectory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
