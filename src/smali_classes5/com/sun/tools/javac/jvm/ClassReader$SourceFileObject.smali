.class Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;
.super Lcom/sun/tools/javac/file/BaseFileObject;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceFileObject"
.end annotation


# instance fields
.field private flatname:Lcom/sun/tools/javac/util/Name;

.field private name:Lcom/sun/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Name;)V
    .registers 4

    .line 2706
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/file/BaseFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;)V

    .line 2707
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lcom/sun/tools/javac/util/Name;

    .line 2708
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 2709
    return-void
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 2767
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 2788
    if-ne p0, p1, :cond_4

    .line 2789
    const/4 v0, 0x1

    .line 2795
    :goto_3
    return v0

    .line 2791
    :cond_4
    instance-of v0, p1, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;

    if-nez v0, :cond_a

    .line 2792
    const/4 v0, 0x0

    goto :goto_3

    .line 2794
    :cond_a
    check-cast p1, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;

    .line 2795
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public bridge synthetic getCharContent(Z)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2697
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->getCharContent(Z)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/nio/CharBuffer;
    .registers 3

    .line 2747
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 2732
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->getKind(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .registers 2

    .line 2762
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 2722
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .registers 2

    .line 2727
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 2800
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2772
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 4

    .line 2777
    const/4 v0, 0x1

    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2

    .line 2737
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 2742
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .registers 3

    .line 2752
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 2

    .line 2757
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 5

    .line 2714
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 2715
    :catch_e
    move-exception v0

    .line 2716
    new-instance v1, Lcom/sun/tools/javac/file/BaseFileObject$CannotCreateUriError;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sun/tools/javac/file/BaseFileObject$CannotCreateUriError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
