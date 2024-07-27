.class public Lorg/apache/tools/ant/util/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"


# instance fields
.field private retriesAllowed:I

.field private task:Lorg/apache/tools/ant/Task;


# direct methods
.method public constructor <init>(ILorg/apache/tools/ant/Task;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    .line 42
    iput p1, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    .line 43
    iput-object p2, p0, Lorg/apache/tools/ant/util/RetryHandler;->task:Lorg/apache/tools/ant/Task;

    .line 44
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/tools/ant/util/Retryable;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/tools/ant/util/Retryable;->execute()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    iget v2, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    if-le v0, v2, :cond_0

    iget v2, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_1

    .line 67
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/RetryHandler;->task:Lorg/apache/tools/ant/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": IO error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), retrying"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/util/RetryHandler;->task:Lorg/apache/tools/ant/Task;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": IO error ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), number of maximum retries reached ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), giving up"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 65
    throw v1
.end method
