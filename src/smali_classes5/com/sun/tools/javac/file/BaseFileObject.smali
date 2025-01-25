.class public abstract Lcom/sun/tools/javac/file/BaseFileObject;
.super Ljava/lang/Object;
.source "BaseFileObject.java"

# interfaces
.implements Ljavax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/BaseFileObject$CannotCreateUriError;
    }
.end annotation


# instance fields
.field protected final fileManager:Lcom/sun/tools/javac/file/JavacFileManager;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sun/tools/javac/file/BaseFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    .line 52
    return-void
.end method

.method protected static createJarUri(Ljava/io/File;Ljava/lang/String;)Ljava/net/URI;
    .registers 6

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v2

    .line 88
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "!"

    move-object v1, v0

    .line 91
    :goto_13
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jar:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_2f} :catch_34

    return-object v3

    .line 88
    :cond_30
    const-string v0, "!/"

    move-object v1, v0

    goto :goto_13

    .line 92
    :catch_34
    move-exception v0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/sun/tools/javac/file/BaseFileObject$CannotCreateUriError;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sun/tools/javac/file/BaseFileObject$CannotCreateUriError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static getKind(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 78
    invoke-static {p0}, Lcom/sun/tools/javac/util/BaseFileManager;->getKind(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public static getSimpleName(Ljavax/tools/FileObject;)Ljava/lang/String;
    .registers 3

    .line 111
    invoke-interface {p0}, Ljavax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 82
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 83
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    :goto_9
    return-object p0

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public getAccessLevel()Ljavax/lang/model/element/Modifier;
    .registers 2

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDecoder(Z)Ljava/nio/charset/CharsetDecoder;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNestingKind()Ljavax/lang/model/element/NestingKind;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getShortName()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method protected abstract inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;
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
.end method

.method public openReader(Z)Ljava/io/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/sun/tools/javac/file/BaseFileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/BaseFileObject;->getDecoder(Z)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/tools/javac/file/BaseFileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
