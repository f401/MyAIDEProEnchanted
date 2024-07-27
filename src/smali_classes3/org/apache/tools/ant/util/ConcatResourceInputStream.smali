.class public Lorg/apache/tools/ant/util/ConcatResourceInputStream;
.super Ljava/io/InputStream;
.source "ConcatResourceInputStream.java"


# static fields
.field private static final EOF:I = -0x1


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private eof:Z

.field private ignoreErrors:Z

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private managingPc:Lorg/apache/tools/ant/ProjectComponent;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->ignoreErrors:Z

    .line 51
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->iter:Ljava/util/Iterator;

    .line 52
    return-void
.end method

.method private closeCurrent()V
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->currentStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->currentStream:Ljava/io/InputStream;

    .line 148
    return-void
.end method

.method private nextResource()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->closeCurrent()V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 128
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Concatenating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->log(Ljava/lang/String;I)V

    .line 133
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->currentStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    iget-boolean v2, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->ignoreErrors:Z

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get input stream for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->log(Ljava/lang/String;I)V

    .line 138
    throw v1

    .line 142
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    goto :goto_0
.end method

.method private readCurrent()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->currentStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->closeCurrent()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    .line 78
    return-void
.end method

.method public isIgnoreErrors()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->ignoreErrors:Z

    return v0
.end method

.method public log(Ljava/lang/String;I)V
    .registers 4

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_1
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    .line 87
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->readCurrent()I

    move-result v0

    .line 91
    if-ne v0, v1, :cond_0

    .line 92
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->nextResource()V

    .line 93
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->readCurrent()I

    move-result v0

    goto :goto_0
.end method

.method public setIgnoreErrors(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->ignoreErrors:Z

    .line 60
    return-void
.end method

.method public setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    .line 105
    return-void
.end method
