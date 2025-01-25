.class public abstract Lorg/apache/tools/ant/types/resources/ContentTransformingResource;
.super Lorg/apache/tools/ant/types/resources/ResourceDecorator;
.source "ContentTransformingResource.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 50
    return-void
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 115
    const-class v0, Lorg/apache/tools/ant/types/resources/Appendable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->isAppendSupported()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    const-class v2, Lorg/apache/tools/ant/types/resources/Appendable;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Appendable;

    .line 118
    if-eqz v0, :cond_26

    .line 119
    new-instance v1, Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/resources/ContentTransformingResource;Lorg/apache/tools/ant/types/resources/Appendable;)V

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    :cond_26
    :goto_26
    return-object v1

    :cond_27
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object v0, v1

    :goto_30
    move-object v1, v0

    goto :goto_26

    .line 128
    :cond_32
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_30
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_e

    .line 88
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->wrapStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 90
    :cond_e
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_e

    .line 105
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 107
    :cond_e
    return-object v0
.end method

.method public getSize()J
    .registers 6

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->isExists()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 60
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getInputStream()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_27

    move-result-object v2

    .line 61
    const/16 v1, 0x2000

    :try_start_d
    new-array v1, v1, [B

    .line 64
    :goto_f
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_20

    move-result v3

    if-lez v3, :cond_19

    .line 65
    add-int/2addr v0, v3

    goto :goto_f

    .line 67
    :cond_19
    int-to-long v0, v0

    .line 68
    if-eqz v2, :cond_1f

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_27

    .line 73
    :cond_1f
    :goto_1f
    return-wide v0

    .line 60
    :catchall_20
    move-exception v0

    if-eqz v2, :cond_26

    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_46

    :cond_26
    :goto_26
    :try_start_26
    throw v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_27

    .line 68
    :catch_27
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 73
    :cond_43
    const-wide/16 v0, 0x0

    goto :goto_1f

    .line 60
    :catchall_46
    move-exception v1

    goto :goto_26
.end method

.method protected isAppendSupported()Z
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$as$0$ContentTransformingResource(Lorg/apache/tools/ant/types/resources/Appendable;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Lorg/apache/tools/ant/types/resources/Appendable;->getAppendOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 121
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_7
.end method

.method protected abstract wrapStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
