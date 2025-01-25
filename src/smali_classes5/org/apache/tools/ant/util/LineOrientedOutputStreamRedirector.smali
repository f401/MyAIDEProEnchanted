.class public Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;
.super Lorg/apache/tools/ant/util/LineOrientedOutputStream;
.source "LineOrientedOutputStreamRedirector.java"


# instance fields
.field private stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-super {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->close()V

    .line 55
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 56
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->flush()V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 62
    return-void
.end method

.method protected processLine(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    const-string v1, "%s%n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 50
    return-void
.end method

.method protected processLine([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 44
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 45
    return-void
.end method
