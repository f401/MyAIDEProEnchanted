.class public final Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;
.super Ljava/lang/Object;


# instance fields
.field private mFogClassName:Ljava/lang/String;

.field private mFogPackages:[Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mMappingPrinter:Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

.field private mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mFogPackages:[Ljava/lang/String;

    iput-object p2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mKey:Ljava/lang/String;

    new-instance v0, Lcom/github/megatronking/stringfog/StringFogWrapper;

    invoke-direct {v0, p3}, Lcom/github/megatronking/stringfog/StringFogWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;

    iput-object p4, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mFogClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mMappingPrinter:Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Closeable;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private processClass(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v7, Lorg/objectweb/asm/ClassReader;

    invoke-direct {v7, p1}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Lorg/objectweb/asm/ClassWriter;

    invoke-direct {v6, v8}, Lorg/objectweb/asm/ClassWriter;-><init>(I)V

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mMappingPrinter:Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mFogPackages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->mFogClassName:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/objectweb/asm/ClassReader;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/github/megatronking/stringfog/plugin/ClassVisitorFactory;->create(Lcom/github/megatronking/stringfog/IStringFog;Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/ClassWriter;)Lorg/objectweb/asm/ClassVisitor;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    invoke-virtual {v6}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public doFog2Class(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    check-cast v1, Ljava/io/OutputStream;

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->processClass(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v3}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->closeQuietly(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v2

    move-object v4, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->closeQuietly(Ljava/io/Closeable;)V

    invoke-direct {p0, v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    :catchall_1
    move-exception v3

    move-object v0, v2

    move-object v4, v3

    goto :goto_0

    :catchall_2
    move-exception v4

    move-object v0, v2

    move-object v1, v3

    goto :goto_0
.end method

.method public doFog2ClassInDir(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->doFog2ClassInDir(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->doFog2Class(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method
