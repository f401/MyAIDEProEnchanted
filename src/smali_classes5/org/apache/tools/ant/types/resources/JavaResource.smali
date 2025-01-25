.class public Lorg/apache/tools/ant/types/resources/JavaResource;
.super Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;
.source "JavaResource.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/URLProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/resources/JavaResource;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 32
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .registers 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->isReference()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getRef()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    .line 139
    :cond_10
    :goto_10
    return v0

    .line 111
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 112
    check-cast p1, Lorg/apache/tools/ant/types/resources/JavaResource;

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_10

    .line 116
    :cond_3c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v3

    if-eq v2, v3, :cond_69

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 120
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    if-nez v0, :cond_54

    move v0, v1

    .line 121
    goto :goto_10

    .line 123
    :cond_54
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_10

    .line 126
    :cond_69
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    .line 127
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    .line 128
    if-eq v2, v3, :cond_86

    .line 129
    if-eqz v2, :cond_10

    .line 132
    if-nez v3, :cond_79

    move v0, v1

    .line 133
    goto :goto_10

    .line 135
    :cond_79
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_10

    .line 137
    :cond_86
    const/4 v0, 0x0

    goto :goto_10

    .line 139
    :cond_88
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    goto :goto_10
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getRef()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getRef()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/JavaResource;
    .registers 2

    .line 144
    const-class v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 4

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getRef()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 93
    :goto_e
    return-object v0

    .line 87
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getClassLoader()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_22

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_e

    .line 93
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_32

    move-result-object v0

    .line 95
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup()V

    goto :goto_e

    :catchall_32
    move-exception v0

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup()V

    .line 96
    throw v0
.end method

.method protected openInputStream(Ljava/lang/ClassLoader;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    if-nez p1, :cond_2d

    .line 63
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_d

    .line 75
    :cond_c
    return-object v0

    .line 65
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on Ant\'s classpath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2d
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 70
    if-nez v0, :cond_c

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on the classpath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
