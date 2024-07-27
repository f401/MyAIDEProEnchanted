.class public Lorg/apache/tools/ant/taskdefs/TaskOutputStream;
.super Ljava/io/OutputStream;
.source "TaskOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private line:Ljava/lang/StringBuffer;

.field private msgOutputLevel:I

.field private task:Lorg/apache/tools/ant/Task;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/Task;I)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "As of Ant 1.2 released in October 2000, the TaskOutputStream class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "is considered to be dead code by the Ant developers and is unmaintained."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Don\'t use it!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->task:Lorg/apache/tools/ant/Task;

    .line 61
    iput p2, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->msgOutputLevel:I

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    .line 64
    return-void
.end method

.method private processLine()V
    .registers 4

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->task:Lorg/apache/tools/ant/Task;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->msgOutputLevel:I

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    .line 94
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    int-to-char v0, p1

    .line 76
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->processLine()V

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
