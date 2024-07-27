.class public Lorg/apache/tools/ant/taskdefs/Redirector;
.super Ljava/lang/Object;
.source "Redirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String;

.field private static final STREAMPUMPER_WAIT_INTERVAL:I = 0x3e8


# instance fields
.field private alwaysLogErr:Z

.field private alwaysLogOut:Z

.field private appendErr:Z

.field private appendOut:Z

.field private appendProperties:Z

.field private baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

.field private createEmptyFilesErr:Z

.field private createEmptyFilesOut:Z

.field private discardErr:Z

.field private discardOut:Z

.field private final errMutex:Ljava/lang/Object;

.field private error:[Ljava/io/File;

.field private errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

.field private errorEncoding:Ljava/lang/String;

.field private errorFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private errorPrintStream:Ljava/io/PrintStream;

.field private errorProperty:Ljava/lang/String;

.field private errorStream:Ljava/io/OutputStream;

.field private final inMutex:Ljava/lang/Object;

.field private input:[Ljava/io/File;

.field private inputEncoding:Ljava/lang/String;

.field private inputFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;

.field private inputString:Ljava/lang/String;

.field private logError:Z

.field private logInputString:Z

.field private final managingTask:Lorg/apache/tools/ant/ProjectComponent;

.field private out:[Ljava/io/File;

.field private final outMutex:Ljava/lang/Object;

.field private outPrintStream:Ljava/io/PrintStream;

.field private outputEncoding:Ljava/lang/String;

.field private outputFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private outputIsBinary:Z

.field private outputProperty:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field private final threadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Redirector;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logError:Z

    .line 113
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 130
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    .line 132
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendErr:Z

    .line 135
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogOut:Z

    .line 137
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogErr:Z

    .line 140
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesOut:Z

    .line 142
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesErr:Z

    .line 148
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 151
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 154
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    .line 157
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    .line 160
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    .line 172
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Redirector;->DEFAULT_ENCODING:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputEncoding:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorEncoding:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    .line 181
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendProperties:Z

    .line 184
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "redirector"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    .line 187
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logInputString:Z

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    .line 199
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputIsBinary:Z

    .line 202
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardOut:Z

    .line 204
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardErr:Z

    .line 224
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    .line 225
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .registers 2

    .line 213
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Redirector;)Ljava/lang/Object;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Redirector;)Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Redirector;)Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendProperties:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setPropertyFromBAOS(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private errorStreams()V
    .registers 7

    const/4 v3, 0x3

    .line 769
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 770
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardErr:Z

    if-eqz v1, :cond_2

    .line 771
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logError:Z

    if-nez v0, :cond_1

    .line 775
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    const-string v1, "Discarding error output"

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 776
    sget-object v0, Lorg/apache/tools/ant/util/NullOutputStream;->INSTANCE:Lorg/apache/tools/ant/util/NullOutputStream;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 813
    :goto_1
    return-void

    .line 769
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 772
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cant discard error output when error, errorProperty or logError are set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_2
    if-eqz v0, :cond_7

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendErr:Z

    if-eqz v0, :cond_6

    const-string v0, "appended"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 782
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendErr:Z

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesErr:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Redirector;->foldFiles([Ljava/io/File;Ljava/lang/String;IZZ)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 784
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 801
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    if-nez v0, :cond_4

    .line 802
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 803
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error redirected to property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 807
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/util/KeepAliveOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 808
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-nez v1, :cond_8

    :cond_5
    :goto_4
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    goto :goto_1

    .line 781
    :cond_6
    const-string v0, "redirected"

    goto :goto_2

    .line 784
    :cond_7
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logError:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 785
    new-instance v1, Lorg/apache/tools/ant/util/OutputStreamFunneler;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v0, v4, v5}, Lorg/apache/tools/ant/util/OutputStreamFunneler;-><init>(Ljava/io/OutputStream;J)V

    .line 789
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->getFunnelInstance()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 790
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->getFunnelInstance()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 791
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputIsBinary:Z

    if-nez v0, :cond_3

    .line 792
    new-instance v0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 793
    new-instance v0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 795
    :catch_0
    move-exception v0

    .line 796
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "error splitting output/error streams"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 809
    :cond_8
    new-instance v1, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_4

    .line 811
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    goto/16 :goto_1
.end method

.method private foldFiles([Ljava/io/File;Ljava/lang/String;IZZ)Ljava/io/OutputStream;
    .registers 13

    const/4 v3, 0x0

    .line 1043
    new-instance v1, Lorg/apache/tools/ant/util/LazyFileOutputStream;

    aget-object v0, p1, v3

    invoke-direct {v1, v0, p4, p5}, Lorg/apache/tools/ant/util/LazyFileOutputStream;-><init>(Ljava/io/File;ZZ)V

    .line 1046
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 1047
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 1048
    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1049
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 1051
    const/4 v0, 0x1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 1052
    new-instance v3, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    new-instance v5, Lorg/apache/tools/ant/util/LazyFileOutputStream;

    aget-object v6, p1, v0

    invoke-direct {v5, v6, p4, p5}, Lorg/apache/tools/ant/util/LazyFileOutputStream;-><init>(Ljava/io/File;ZZ)V

    invoke-direct {v3, v4, v5}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 1054
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    :cond_0
    return-object v1
.end method

.method private outStreams()V
    .registers 7

    const/4 v3, 0x3

    .line 737
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->out:[Ljava/io/File;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 738
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardOut:Z

    if-eqz v1, :cond_2

    .line 739
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 743
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    const-string v1, "Discarding output"

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 744
    sget-object v0, Lorg/apache/tools/ant/util/NullOutputStream;->INSTANCE:Lorg/apache/tools/ant/util/NullOutputStream;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 766
    :goto_1
    return-void

    .line 737
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 740
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cant discard output when output or outputProperty are set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_2
    if-eqz v0, :cond_3

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Output "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    if-eqz v0, :cond_5

    const-string v0, "appended"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->out:[Ljava/io/File;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesOut:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Redirector;->foldFiles([Ljava/io/File;Ljava/lang/String;IZZ)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 753
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 754
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    if-nez v0, :cond_4

    .line 755
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 756
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output redirected to property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 760
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/util/KeepAliveOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 761
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_6

    .line 762
    :goto_3
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    goto :goto_1

    .line 749
    :cond_5
    const-string v0, "redirected"

    goto :goto_2

    .line 762
    :cond_6
    new-instance v1, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_3

    .line 764
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    goto :goto_1
.end method

.method private setPropertyFromBAOS(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 6

    .line 595
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->toString(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 596
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 597
    invoke-virtual {v0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    invoke-virtual {v1, p2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 967
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 968
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 970
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 971
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 974
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 976
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 977
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 978
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 979
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 981
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 982
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 983
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 984
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 987
    monitor-enter p0

    .line 988
    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v0

    if-lez v0, :cond_3

    .line 990
    :try_start_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Threads:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 992
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Thread;

    .line 993
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move v0, v1

    .line 994
    :goto_1
    array-length v3, v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 996
    :try_start_5
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 994
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1002
    :cond_2
    const-wide/16 v2, 0x3e8

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    :try_start_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Thread;

    .line 1005
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move v0, v1

    .line 1006
    :goto_3
    array-length v3, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    .line 1007
    :try_start_8
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1011
    :cond_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1013
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setProperties()V

    .line 1015
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    .line 1017
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1018
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1019
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    .line 1021
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1022
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1023
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 1024
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    .line 1025
    monitor-exit v1

    .line 1026
    return-void

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    .line 1021
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0

    .line 1017
    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    .line 1011
    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0

    .line 984
    :catchall_4
    move-exception v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0

    .line 979
    :catchall_5
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v0

    .line 974
    :catchall_6
    move-exception v0

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    .line 998
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->createStreams()V

    .line 826
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 827
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 828
    new-instance v3, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Z)V

    .line 827
    return-object v3

    .line 826
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createStreams()V
    .registers 10

    const/4 v8, 0x1

    .line 606
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 607
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->outStreams()V

    .line 608
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogOut:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 609
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    .line 611
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_e

    .line 612
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 615
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputFilterChains:Ljava/util/Vector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputEncoding:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 618
    :cond_3
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/util/LeadPipeInputStream;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/LeadPipeInputStream;-><init>()V

    .line 619
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 621
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 626
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputFilterChains:Ljava/util/Vector;

    if-eqz v3, :cond_4

    .line 627
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 628
    new-instance v3, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 629
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v4}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 630
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 631
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputFilterChains:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 632
    invoke-virtual {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v0

    .line 634
    :cond_4
    new-instance v3, Lorg/apache/tools/ant/util/ReaderInputStream;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputEncoding:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v6, v7}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    const-string v3, "output pumper"

    invoke-direct {v0, v4, v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 638
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 639
    new-instance v3, Ljava/io/PipedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 640
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    :cond_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 649
    :try_start_3
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStreams()V

    .line 650
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogErr:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    if-nez v0, :cond_7

    .line 651
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    .line 653
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    if-nez v1, :cond_f

    .line 654
    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 657
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorFilterChains:Ljava/util/Vector;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorEncoding:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_b

    .line 660
    :cond_9
    :try_start_4
    new-instance v1, Lorg/apache/tools/ant/util/LeadPipeInputStream;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/LeadPipeInputStream;-><init>()V

    .line 661
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 663
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 668
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorFilterChains:Ljava/util/Vector;

    if-eqz v3, :cond_a

    .line 669
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 670
    new-instance v3, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 671
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v4}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 672
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 673
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorFilterChains:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 674
    invoke-virtual {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v0

    .line 676
    :cond_a
    new-instance v3, Lorg/apache/tools/ant/util/ReaderInputStream;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorEncoding:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 678
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v6, v7}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    const-string v3, "error pumper"

    invoke-direct {v0, v4, v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 680
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 681
    new-instance v3, Ljava/io/PipedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 682
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 688
    :cond_b
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 690
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 695
    :try_start_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    .line 696
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Redirecting input from file"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    array-length v0, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v0, v8, :cond_10

    const-string v0, ""

    :goto_2
    :try_start_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 701
    :try_start_8
    new-instance v0, Lorg/apache/tools/ant/util/ConcatFileInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/util/ConcatFileInputStream;-><init>([Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 704
    :try_start_9
    check-cast v0, Lorg/apache/tools/ant/util/ConcatFileInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 717
    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputFilterChains:Ljava/util/Vector;

    if-eqz v0, :cond_d

    .line 718
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 719
    new-instance v0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 720
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v2}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 722
    :try_start_a
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 727
    :try_start_b
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputFilterChains:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 729
    new-instance v2, Lorg/apache/tools/ant/util/ReaderInputStream;

    .line 730
    invoke-virtual {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    .line 732
    :cond_d
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 733
    return-void

    .line 612
    :cond_e
    :try_start_c
    new-instance v1, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v1, v0, v3}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "error setting up output stream"

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0

    .line 654
    :cond_f
    :try_start_d
    new-instance v1, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v1, v0, v3}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 683
    :catch_1
    move-exception v0

    .line 684
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "error setting up error stream"

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 688
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 698
    :cond_10
    const-string v0, "s"

    goto/16 :goto_2

    .line 702
    :catch_2
    move-exception v0

    .line 703
    :try_start_e
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 732
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    .line 706
    :cond_11
    :try_start_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Using input "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logInputString:Z

    if-eqz v2, :cond_12

    .line 709
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    :goto_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 714
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    goto/16 :goto_3

    .line 711
    :cond_12
    const-string v2, "string"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 724
    :catch_3
    move-exception v0

    .line 725
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "error setting up input stream"

    invoke-direct {v2, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
.end method

.method public getErrorStream()Ljava/io/OutputStream;
    .registers 3

    .line 939
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 940
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    monitor-exit v1

    return-object v0

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    .line 951
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    monitor-exit v1

    return-object v0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 927
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 928
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    monitor-exit v1

    return-object v0

    .line 929
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleErrorFlush(Ljava/lang/String;)V
    .registers 5

    .line 911
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 913
    new-instance v0, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    .line 915
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 917
    monitor-exit v1

    .line 918
    return-void

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleErrorOutput(Ljava/lang/String;)V
    .registers 5

    .line 896
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 898
    new-instance v0, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    .line 900
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 901
    monitor-exit v1

    .line 902
    return-void

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleFlush(Ljava/lang/String;)V
    .registers 5

    .line 880
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 881
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    .line 884
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 886
    monitor-exit v1

    .line 887
    return-void

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleInput([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 864
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->defaultInput([BII)I

    move-result v0

    monitor-exit v1

    .line 868
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleOutput(Ljava/lang/String;)V
    .registers 5

    .line 838
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    .line 842
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 843
    monitor-exit v1

    .line 844
    return-void

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlwaysLog(Z)V
    .registers 4

    .line 495
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogOut:Z

    .line 497
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogErr:Z

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 497
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setAppend(Z)V
    .registers 4

    .line 443
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    .line 445
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 446
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendErr:Z

    .line 448
    monitor-exit v1

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 445
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setAppendProperties(Z)V
    .registers 4

    .line 387
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendProperties:Z

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBinaryOutput(Z)V
    .registers 2

    .line 582
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputIsBinary:Z

    .line 583
    return-void
.end method

.method public setCreateEmptyFiles(Z)V
    .registers 4

    .line 511
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesOut:Z

    .line 513
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 514
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesErr:Z

    .line 516
    monitor-exit v1

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 513
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setDiscardError(Z)V
    .registers 4

    .line 480
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardErr:Z

    .line 482
    monitor-exit v1

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDiscardOutput(Z)V
    .registers 4

    .line 463
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 464
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardOut:Z

    .line 465
    monitor-exit v1

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setError(Ljava/io/File;)V
    .registers 4

    .line 399
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setError([Ljava/io/File;)V

    .line 400
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public setError([Ljava/io/File;)V
    .registers 4

    .line 409
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    if-nez p1, :cond_0

    .line 411
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    .line 415
    :goto_0
    monitor-exit v1

    .line 416
    return-void

    .line 413
    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setErrorEncoding(Ljava/lang/String;)V
    .registers 4

    .line 341
    if-eqz p1, :cond_0

    .line 344
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorEncoding:Ljava/lang/String;

    .line 346
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorEncoding must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorFilterChains(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 566
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 567
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorFilterChains:Ljava/util/Vector;

    .line 568
    monitor-exit v1

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .registers 4

    .line 526
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    .line 528
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 532
    :cond_1
    monitor-exit v1

    .line 533
    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInput(Ljava/io/File;)V
    .registers 4

    .line 234
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInput([Ljava/io/File;)V

    .line 235
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public setInput([Ljava/io/File;)V
    .registers 4

    .line 244
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    if-nez p1, :cond_0

    .line 246
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    .line 250
    :goto_0
    monitor-exit v1

    .line 251
    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .registers 4

    .line 356
    if-eqz p1, :cond_0

    .line 359
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputEncoding must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputFilterChains(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 542
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputFilterChains:Ljava/util/Vector;

    .line 544
    monitor-exit v1

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setInputStream(Ljava/io/InputStream;)V
    .registers 4

    .line 285
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    .line 287
    monitor-exit v1

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputString(Ljava/lang/String;)V
    .registers 4

    .line 260
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLogError(Z)V
    .registers 4

    .line 373
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logError:Z

    .line 375
    monitor-exit v1

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLogInputString(Z)V
    .registers 2

    .line 274
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logInputString:Z

    .line 275
    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 4

    .line 298
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutput([Ljava/io/File;)V

    .line 299
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public setOutput([Ljava/io/File;)V
    .registers 4

    .line 309
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    if-nez p1, :cond_0

    .line 311
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->out:[Ljava/io/File;

    .line 315
    :goto_0
    monitor-exit v1

    .line 316
    return-void

    .line 313
    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->out:[Ljava/io/File;

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .registers 4

    .line 325
    if-eqz p1, :cond_0

    .line 329
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputEncoding:Ljava/lang/String;

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputEncoding must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputFilterChains(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 554
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputFilterChains:Ljava/util/Vector;

    .line 556
    monitor-exit v1

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOutputProperty(Ljava/lang/String;)V
    .registers 4

    .line 425
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 430
    monitor-exit v1

    .line 432
    :cond_1
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties()V
    .registers 3

    .line 1033
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1034
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1035
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1036
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1037
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1038
    monitor-exit v1

    .line 1039
    return-void

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1035
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
