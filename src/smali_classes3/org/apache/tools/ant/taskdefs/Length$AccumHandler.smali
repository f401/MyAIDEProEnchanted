.class Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;
.super Lorg/apache/tools/ant/taskdefs/Length$Handler;
.source "Length.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Length;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccumHandler"
.end annotation


# instance fields
.field private accum:J

.field final this$0:Lorg/apache/tools/ant/taskdefs/Length;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Length;)V
    .registers 4

    .line 318
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->this$0:Lorg/apache/tools/ant/taskdefs/Length;

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Length$Handler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J

    .line 320
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V
    .registers 5

    .line 322
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->this$0:Lorg/apache/tools/ant/taskdefs/Length;

    .line 323
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Length$Handler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J

    .line 324
    return-void
.end method


# virtual methods
.method protected getAccum()J
    .registers 3

    .line 327
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J

    return-wide v0
.end method

.method protected handle(Lorg/apache/tools/ant/types/Resource;)V
    .registers 6

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    .line 333
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 334
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->this$0:Lorg/apache/tools/ant/taskdefs/Length;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size unknown for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Length;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->accum:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
