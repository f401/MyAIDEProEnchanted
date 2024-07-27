.class public Lorg/apache/tools/ant/taskdefs/LogOutputStream;
.super Lorg/apache/tools/ant/util/LineOrientedOutputStream;
.source "LogOutputStream.java"


# instance fields
.field private level:I

.field private pc:Lorg/apache/tools/ant/ProjectComponent;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;-><init>()V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->level:I

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->pc:Lorg/apache/tools/ant/ProjectComponent;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;I)V
    .registers 3

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 69
    iput p2, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->level:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;I)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    .line 58
    return-void
.end method


# virtual methods
.method public getMessageLevel()I
    .registers 2

    .line 108
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->level:I

    return v0
.end method

.method protected processBuffer()V
    .registers 4

    .line 77
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible IOException caught: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected processLine(Ljava/lang/String;)V
    .registers 3

    .line 90
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->level:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method protected processLine(Ljava/lang/String;I)V
    .registers 4

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->pc:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 101
    return-void
.end method
