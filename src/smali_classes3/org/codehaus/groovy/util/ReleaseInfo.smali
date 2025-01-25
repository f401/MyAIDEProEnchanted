.class public Lorg/codehaus/groovy/util/ReleaseInfo;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/util/ReleaseInfo;->j6:Ljava/util/Properties;

    const-class v1, Lorg/codehaus/groovy/util/ReleaseInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :cond_13
    instance-of v2, v1, Ljava/net/URLClassLoader;

    const-string v3, "META-INF/groovy-release-info.properties"

    if-eqz v2, :cond_20

    check-cast v1, Ljava/net/URLClassLoader;

    invoke-virtual {v1, v3}, Ljava/net/URLClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_24

    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    :goto_24
    if-eqz v1, :cond_3a

    const/4 v2, 0x0

    :try_start_27
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_36
    .catchall {:try_start_27 .. :try_end_30} :catchall_31

    goto :goto_37

    :catchall_31
    move-exception v0

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/DefaultGroovyMethodsSupport;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_36
    move-exception v0

    :cond_37
    :goto_37
    invoke-static {v2}, Lorg/codehaus/groovy/runtime/DefaultGroovyMethodsSupport;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
