.class public Lorg/apache/commons/lang3/ClassLoaderUtils;
.super Ljava/lang/Object;
.source "ClassLoaderUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .registers 2

    .line 37
    instance-of v0, p0, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_b

    .line 38
    check-cast p0, Ljava/net/URLClassLoader;

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassLoaderUtils;->toString(Ljava/net/URLClassLoader;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static toString(Ljava/net/URLClassLoader;)Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
