.class public Lorg/codehaus/groovy/util/ReleaseInfo;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lorg/codehaus/groovy/util/ReleaseInfo;->j6:Ljava/util/Properties;

    const-class v0, Lorg/codehaus/groovy/util/ReleaseInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    instance-of v3, v0, Ljava/net/URLClassLoader;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/net/URLClassLoader;

    const-string v3, "META-INF/groovy-release-info.properties"

    invoke-virtual {v0, v3}, Ljava/net/URLClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/codehaus/groovy/runtime/DefaultGroovyMethodsSupport;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :cond_3
    const-string v3, "META-INF/groovy-release-info.properties"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_2
    invoke-static {v2}, Lorg/codehaus/groovy/runtime/DefaultGroovyMethodsSupport;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
