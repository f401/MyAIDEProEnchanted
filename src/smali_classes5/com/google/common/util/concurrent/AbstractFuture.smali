.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;,
        Lcom/google/common/util/concurrent/AbstractFuture$Failure;,
        Lcom/google/common/util/concurrent/AbstractFuture$Listener;,
        Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$Trusted;,
        Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v6, 0x0

    .line 71
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 123
    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 137
    :try_start_1b
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_42

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    .line 160
    :goto_24
    sput-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 165
    if-eqz v1, :cond_3a

    .line 170
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_3a
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void

    .line 138
    :catchall_42
    move-exception v7

    .line 139
    :try_start_43
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;

    .line 146
    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "thread"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 147
    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v4, "next"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 148
    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v5, "waiters"

    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    .line 149
    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    const-string v8, "listeners"

    invoke-static {v4, v5, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    .line 150
    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v8, Ljava/lang/Object;

    const-string v9, "value"

    invoke-static {v5, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_7a
    .catchall {:try_start_43 .. :try_end_7a} :catchall_7e

    move-object v1, v6

    move-object v2, v7

    move-object v3, v0

    .line 158
    goto :goto_24

    .line 151
    :catchall_7e
    move-exception v0

    .line 156
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;

    invoke-direct {v3, v6}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    move-object v1, v0

    move-object v2, v7

    goto :goto_24
.end method

.method protected constructor <init>()V
    .registers 1

    .line 360
    invoke-direct {p0}, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .registers 1

    .line 67
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 67
    sget-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 2

    .line 67
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .registers 1

    .line 67
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object p1
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 1110
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 1111
    const-string v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_15} :catch_30
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_15} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    .line 1118
    :goto_15
    return-void

    .line 1116
    :catch_16
    move-exception v0

    .line 1117
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 1114
    :catch_29
    move-exception v0

    .line 1115
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 1112
    :catch_30
    move-exception v0

    .line 1113
    const-string v1, "FAILURE, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3
    .param p0  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1351
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1353
    return-object v0
.end method

.method private clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 5

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1048
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    :goto_c
    if-eqz v0, :cond_15

    .line 1051
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1053
    iput-object p1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-object p1, v0

    move-object v0, v1

    .line 1055
    goto :goto_c

    .line 1056
    :cond_15
    return-object p1
.end method

.method private static complete(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<*>;)V"
        }
    .end annotation

    .line 925
    const/4 v0, 0x0

    .line 928
    :goto_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->releaseWaiters()V

    .line 934
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 936
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v1

    move-object v2, v1

    .line 937
    :goto_c
    if-eqz v2, :cond_35

    .line 939
    iget-object v1, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 941
    iget-object v0, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    .line 942
    instance-of v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v3, :cond_2e

    .line 943
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 949
    iget-object p0, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 950
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v2, v0, :cond_33

    .line 951
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 952
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v0, v1

    .line 953
    goto :goto_1

    .line 958
    :cond_2e
    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_33
    move-object v2, v1

    .line 960
    goto :goto_c

    .line 963
    :cond_35
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 1139
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1149
    :goto_3
    return-void

    .line 1140
    :catch_4
    move-exception v0

    .line 1144
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 549
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-nez v0, :cond_18

    .line 551
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-nez v0, :cond_e

    .line 553
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_d

    .line 554
    const/4 p1, 0x0

    .line 557
    :cond_d
    return-object p1

    .line 552
    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 550
    :cond_18
    const-string v0, "Task was cancelled."

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-object v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method private static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 833
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    if-eqz v0, :cond_23

    .line 838
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 839
    instance-of v0, v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v0, :cond_1f

    move-object v0, v1

    .line 843
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 844
    iget-boolean v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v2, :cond_1f

    .line 845
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_20

    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v1, v4, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 898
    :cond_1f
    :goto_1f
    return-object v1

    .line 845
    :cond_20
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_1f

    .line 853
    :cond_23
    instance-of v0, p0, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    if-eqz v0, :cond_36

    move-object v0, p0

    .line 854
    check-cast v0, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    .line 855
    invoke-static {v0}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_36

    .line 857
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 860
    :cond_36
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v2

    .line 862
    sget-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_44

    .line 863
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_1f

    .line 867
    :cond_44
    :try_start_44
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 868
    if-eqz v2, :cond_86

    .line 869
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V
    :try_end_66
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_44 .. :try_end_66} :catch_67
    .catch Ljava/util/concurrent/CancellationException; {:try_start_44 .. :try_end_66} :catch_93
    .catchall {:try_start_44 .. :try_end_66} :catchall_8c

    goto :goto_1f

    .line 877
    :catch_67
    move-exception v0

    .line 878
    if-eqz v2, :cond_ba

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v4, v3}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1f

    .line 876
    :cond_86
    if-nez v0, :cond_8a

    :try_start_88
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_88 .. :try_end_8a} :catch_67
    .catch Ljava/util/concurrent/CancellationException; {:try_start_88 .. :try_end_8a} :catch_93
    .catchall {:try_start_88 .. :try_end_8a} :catchall_8c

    :cond_8a
    move-object v1, v0

    goto :goto_1f

    .line 897
    :catchall_8c
    move-exception v0

    .line 898
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 888
    :catch_93
    move-exception v0

    .line 889
    if-nez v2, :cond_b3

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 896
    :cond_b3
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    invoke-direct {v1, v4, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 887
    :cond_ba
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1f
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 907
    const/4 v0, 0x0

    .line 911
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_1a
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v1

    .line 917
    if-eqz v0, :cond_e

    .line 918
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 911
    :cond_e
    return-object v1

    .line 917
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_19

    .line 918
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 920
    :cond_19
    throw v1

    .line 912
    :catch_1a
    move-exception v0

    .line 913
    const/4 v0, 0x1

    .line 914
    goto :goto_1
.end method

.method private releaseWaiters()V
    .registers 4

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1028
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    :goto_c
    if-eqz v0, :cond_14

    .line 1030
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->unpark()V

    .line 1029
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    goto :goto_c

    .line 1032
    :cond_14
    return-void
.end method

.method private removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .registers 7

    const/4 v2, 0x0

    .line 224
    iput-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 228
    :goto_3
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 229
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v1, v0, :cond_27

    .line 249
    :cond_9
    return-void

    .line 233
    :goto_a
    if-eqz v1, :cond_9

    .line 234
    iget-object v3, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 235
    iget-object v4, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_15

    move-object v0, v1

    :cond_13
    move-object v1, v3

    .line 245
    goto :goto_a

    .line 237
    :cond_15
    if-eqz v0, :cond_1e

    .line 238
    iput-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 239
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v1, :cond_13

    goto :goto_3

    .line 242
    :cond_1e
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v4, p0, v1, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_3

    :cond_27
    move-object v0, v2

    goto :goto_a
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1127
    if-ne p1, p0, :cond_5

    .line 1128
    const-string v0, "this future"

    .line 1130
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 681
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 693
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 694
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-eq v0, v1, :cond_2c

    .line 695
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 697
    :cond_1b
    iput-object v0, v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 698
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 708
    :goto_25
    return-void

    .line 701
    :cond_26
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 702
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-ne v0, v2, :cond_1b

    .line 707
    :cond_2c
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_25
.end method

.method protected afterDone()V
    .registers 1

    .line 978
    return-void
.end method

.method public cancel(Z)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 590
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 592
    if-nez v1, :cond_4b

    move v0, v2

    :goto_7
    instance-of v4, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v0, v4

    if-eqz v0, :cond_65

    .line 595
    sget-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v0, :cond_4d

    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    move-object v4, v0

    :goto_1d
    move-object v0, v1

    move v5, v3

    .line 604
    :cond_1f
    :goto_1f
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v1, p0, v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 608
    if-eqz p1, :cond_2c

    .line 609
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    .line 611
    :cond_2c
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 612
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v1, :cond_5c

    .line 615
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 616
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    if-eqz v1, :cond_59

    move-object v1, v0

    .line 624
    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 625
    iget-object v0, v1, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 626
    if-nez v0, :cond_57

    move v5, v2

    :goto_43
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v5, v6

    if-eqz v5, :cond_5c

    move-object p0, v1

    move v5, v2

    .line 627
    goto :goto_1f

    :cond_4b
    move v0, v3

    .line 592
    goto :goto_7

    .line 595
    :cond_4d
    if-eqz p1, :cond_53

    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    move-object v4, v0

    goto :goto_1d

    :cond_53
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    move-object v4, v0

    goto :goto_1d

    :cond_57
    move v5, v3

    .line 626
    goto :goto_43

    .line 632
    :cond_59
    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 647
    :cond_5c
    :goto_5c
    return v2

    .line 638
    :cond_5d
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 639
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v1, :cond_1f

    move v2, v5

    goto :goto_5c

    :cond_65
    move v2, v3

    goto :goto_5c
.end method

.method public get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 508
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_63

    .line 511
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 512
    if-eqz v3, :cond_19

    move v0, v1

    :goto_d
    instance-of v4, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v0, v4

    if-eqz v0, :cond_1b

    .line 513
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 542
    :goto_18
    return-object v0

    :cond_19
    move v0, v2

    .line 512
    goto :goto_d

    .line 515
    :cond_1b
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 516
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v0, v3, :cond_5c

    .line 517
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 519
    :cond_26
    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 520
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 523
    :cond_31
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 525
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 531
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 532
    if-eqz v4, :cond_4b

    move v0, v1

    :goto_3f
    instance-of v5, v4, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/lit8 v5, v5, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_31

    .line 533
    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    :cond_4b
    move v0, v2

    .line 532
    goto :goto_3f

    .line 526
    :cond_4d
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 527
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 537
    :cond_56
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 538
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v0, v4, :cond_26

    .line 542
    :cond_5c
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    .line 509
    :cond_63
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 400
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 401
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1c0

    .line 405
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 406
    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    :goto_f
    instance-of v4, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v0, v4

    if-eqz v0, :cond_1d

    .line 407
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 455
    :goto_1a
    return-object v0

    .line 406
    :cond_1b
    const/4 v0, 0x0

    goto :goto_f

    .line 410
    :cond_1d
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_60

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v4, v0

    .line 412
    :goto_29
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_76

    .line 413
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 414
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v0, v1, :cond_9c

    .line 415
    new-instance v6, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v6}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 417
    :cond_3a
    invoke-virtual {v6, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 418
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v1, p0, v0, v6}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v0

    if-eqz v0, :cond_96

    move-wide v0, v2

    .line 420
    :cond_46
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 422
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 429
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 430
    if-eqz v1, :cond_64

    const/4 v0, 0x1

    :goto_54
    instance-of v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_66

    .line 431
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    .line 410
    :cond_60
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_29

    .line 430
    :cond_64
    const/4 v0, 0x0

    goto :goto_54

    .line 435
    :cond_66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 436
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_46

    .line 438
    invoke-direct {p0, v6}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    move-wide v2, v0

    .line 452
    :cond_76
    :goto_76
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_ba

    .line 453
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 454
    if-eqz v1, :cond_a4

    const/4 v0, 0x1

    :goto_81
    instance-of v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_a6

    .line 455
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    .line 423
    :cond_8d
    invoke-direct {p0, v6}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 424
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 443
    :cond_96
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 444
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v0, v1, :cond_3a

    .line 448
    :cond_9c
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1a

    .line 454
    :cond_a4
    const/4 v0, 0x0

    goto :goto_81

    .line 457
    :cond_a6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 460
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    move-wide v2, v0

    goto :goto_76

    .line 458
    :cond_b4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 463
    :cond_ba
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waited "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_186

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (plus "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    neg-long v2, v2

    .line 471
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 472
    invoke-virtual {p3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 473
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_11d

    const-wide/16 v8, 0x3e8

    cmp-long v1, v2, v8

    if-lez v1, :cond_1a3

    :cond_11d
    const/4 v1, 0x1

    .line 475
    :goto_11e
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_15f

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    if-eqz v1, :cond_14e

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    :cond_14e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    :cond_15f
    if-eqz v1, :cond_175

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " nanoseconds "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "delay)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_186
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but future completed as timeout expired"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1a3
    const/4 v1, 0x0

    goto/16 :goto_11e

    .line 494
    :cond_1a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_1c0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected interruptTask()V
    .registers 1

    .line 661
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 571
    instance-of v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    return v0
.end method

.method public isDone()Z
    .registers 3

    .line 564
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 565
    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :goto_5
    instance-of v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .registers 4
    .param p1  # Ljava/util/concurrent/Future;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .line 1018
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 1019
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1021
    :cond_11
    return-void

    .line 1018
    :cond_12
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 1098
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v1, :cond_25

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    :goto_24
    return-object v0

    .line 1100
    :cond_25
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_48

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remaining delay=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1102
    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 1105
    :cond_48
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 724
    if-nez p1, :cond_4

    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 725
    :cond_4
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 726
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 727
    const/4 v0, 0x1

    .line 729
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 5

    .line 746
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 747
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 748
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 749
    const/4 v0, 0x1

    .line 751
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 783
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 785
    if-nez v0, :cond_4a

    .line 786
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 787
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 788
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v4, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 789
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    move v0, v1

    .line 823
    :goto_20
    return v0

    :cond_21
    move v0, v2

    .line 792
    goto :goto_20

    .line 794
    :cond_23
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    invoke-direct {v3, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 795
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v0, p0, v4, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 799
    :try_start_30
    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-interface {p1, v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_37

    :goto_35
    move v0, v1

    .line 813
    goto :goto_20

    .line 800
    :catchall_37
    move-exception v0

    move-object v2, v0

    .line 806
    :try_start_39
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_44

    .line 811
    :goto_3e
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_35

    .line 807
    :catchall_44
    move-exception v0

    .line 808
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    goto :goto_3e

    .line 815
    :cond_48
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 819
    :cond_4a
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_55

    .line 821
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_55
    move v0, v2

    .line 823
    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1063
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1064
    const-string v0, "CANCELLED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :goto_1d
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1065
    :cond_27
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1066
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_1d

    .line 1070
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_34} :catch_4b

    move-result-object v0

    .line 1078
    :goto_35
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 1079
    const-string v2, "PENDING, info=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 1071
    :catch_4b
    move-exception v0

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown from implementation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 1080
    :cond_62
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1081
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_1d

    .line 1083
    :cond_6c
    const-string v0, "PENDING"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d
.end method

.method protected final tryInternalFastPathGetFailure()Ljava/lang/Throwable;
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1004
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    if-eqz v0, :cond_f

    .line 1005
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 1006
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-eqz v1, :cond_f

    .line 1007
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    .line 1010
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected final wasInterrupted()Z
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 671
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
