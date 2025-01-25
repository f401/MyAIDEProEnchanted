.class abstract Lcom/google/common/util/concurrent/InterruptibleTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DONE:Ljava/lang/Runnable;

.field private static final INTERRUPTING:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 36
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method abstract afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method final interruptTask()V
    .registers 3

    .line 107
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 108
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 109
    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 110
    sget-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->set(Ljava/lang/Object;)V

    .line 112
    :cond_1c
    return-void
.end method

.method abstract isDone()Z
.end method

.method public final run()V
    .registers 6

    const/4 v1, 0x0

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 48
    invoke-virtual {p0, v1, v3}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 83
    :cond_b
    :goto_b
    return-void

    .line 52
    :cond_c
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->isDone()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    .line 56
    if-eqz v4, :cond_4c

    .line 57
    :try_start_14
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->runInterruptibly()Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2c

    move-result-object v0

    .line 63
    :goto_18
    sget-object v2, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v2}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 70
    :goto_20
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_48

    .line 71
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_20

    .line 59
    :catchall_2c
    move-exception v2

    .line 60
    sget-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 70
    :goto_35
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-ne v0, v3, :cond_41

    .line 71
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_35

    .line 79
    :cond_41
    if-eqz v4, :cond_b

    move-object v0, v1

    .line 80
    :goto_44
    invoke-virtual {p0, v0, v2}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 79
    :cond_48
    if-eqz v4, :cond_b

    move-object v2, v1

    .line 80
    goto :goto_44

    :cond_4c
    move-object v0, v1

    goto :goto_18
.end method

.method abstract runInterruptibly()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract toPendingString()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 116
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 118
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_25

    .line 119
    const-string v0, "running=[DONE]"

    .line 128
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->toPendingString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_25
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_2c

    .line 121
    const-string v0, "running=[INTERRUPTED]"

    goto :goto_c

    .line 122
    :cond_2c
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_4d

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running=[RUNNING ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 126
    :cond_4d
    const-string v0, "running=[NOT STARTED YET]"

    goto :goto_c
.end method
