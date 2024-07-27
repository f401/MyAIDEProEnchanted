.class Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;
.super Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;
.source "RedirectingStreamHandler.java"


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V
    .registers 4

    .line 32
    new-instance v0, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 34
    return-void
.end method


# virtual methods
.method getErrors()Ljava/lang/String;
    .registers 3

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getErr()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 41
    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .registers 2

    .line 49
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->stop()V

    .line 50
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getErr()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 51
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getOut()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 52
    return-void
.end method
