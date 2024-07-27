.class public Lorg/apache/tools/ant/util/OutputStreamFunneler;
.super Ljava/lang/Object;
.source "OutputStreamFunneler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_MILLIS:J = 0x3e8L


# instance fields
.field private closed:Z

.field private count:I

.field private out:Ljava/io/OutputStream;

.field private timeoutMillis:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    .line 96
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;-><init>(Ljava/io/OutputStream;J)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;J)V
    .registers 6

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    .line 108
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->out:Ljava/io/OutputStream;

    .line 113
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->closed:Z

    .line 114
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->setTimeout(J)V

    .line 115
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OutputStreamFunneler.<init>:  out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$004(Lorg/apache/tools/ant/util/OutputStreamFunneler;)I
    .registers 2

    .line 30
    iget v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/util/OutputStreamFunneler;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->dieIfClosed()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/util/OutputStreamFunneler;)Ljava/io/OutputStream;
    .registers 2

    .line 30
    iget-object v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/util/OutputStreamFunneler;Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->release(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)V

    return-void
.end method

.method private close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->dieIfClosed()V

    .line 175
    iget-object v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->closed:Z

    .line 178
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dieIfClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 185
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The funneled OutputStream has been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private release(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->access$500(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 150
    :try_start_1
    iget-wide v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->timeoutMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 151
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    iget-wide v2, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->timeoutMillis:J

    add-long/2addr v2, v0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 155
    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 156
    sub-long v0, v2, v0

    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 163
    :cond_0
    :try_start_4
    iget v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_1

    .line 164
    :try_start_5
    invoke-direct {p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 167
    :cond_1
    const/4 v0, 0x1

    :try_start_6
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->access$502(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    :cond_2
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    :goto_1
    const/4 v1, 0x1

    :try_start_7
    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->access$502(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;Z)Z

    .line 168
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 147
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :catchall_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getFunnelInstance()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->dieIfClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;-><init>(Lorg/apache/tools/ant/util/OutputStreamFunneler;Lorg/apache/tools/ant/util/OutputStreamFunneler$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    monitor-exit p0

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTimeout(J)V
    .registers 4

    monitor-enter p0

    .line 126
    :try_start_0
    iput-wide p1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->timeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
