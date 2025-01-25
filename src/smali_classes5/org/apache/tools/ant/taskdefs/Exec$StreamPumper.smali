.class Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;
.super Ljava/lang/Thread;
.source "Exec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Exec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamPumper"
.end annotation


# static fields
.field private static final SLEEP_TIME:I = 0x5


# instance fields
.field private din:Ljava/io/BufferedReader;

.field private endOfStream:Z

.field private messageLevel:I

.field final this$0:Lorg/apache/tools/ant/taskdefs/Exec;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Exec;Ljava/io/InputStream;I)V
    .registers 6

    .line 249
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->this$0:Lorg/apache/tools/ant/taskdefs/Exec;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->endOfStream:Z

    .line 250
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->din:Ljava/io/BufferedReader;

    .line 251
    iput p3, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->messageLevel:I

    .line 252
    return-void
.end method


# virtual methods
.method public pumpStream()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->endOfStream:Z

    if-nez v0, :cond_13

    .line 256
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->din:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_14

    .line 259
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->this$0:Lorg/apache/tools/ant/taskdefs/Exec;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->messageLevel:I

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Exec;->outputLog(Ljava/lang/String;I)V

    .line 264
    :cond_13
    :goto_13
    return-void

    .line 261
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->endOfStream:Z

    goto :goto_13
.end method

.method public run()V
    .registers 3

    .line 270
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->endOfStream:Z

    if-nez v0, :cond_e

    .line 271
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->pumpStream()V

    .line 272
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_14

    goto :goto_0

    .line 274
    :catch_d
    move-exception v0

    .line 277
    :cond_e
    :try_start_e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->din:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_14

    .line 281
    :goto_13
    return-void

    .line 278
    :catch_14
    move-exception v0

    goto :goto_13
.end method
