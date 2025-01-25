.class public final Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"


# instance fields
.field private backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private daemon:Ljava/lang/Boolean;

.field private nameFormat:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->nameFormat:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->daemon:Ljava/lang/Boolean;

    .line 51
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->priority:Ljava/lang/Integer;

    .line 52
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 53
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 56
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 48
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static doBuild(Lcom/google/common/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
    .registers 11

    .line 151
    iget-object v2, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->nameFormat:Ljava/lang/String;

    .line 152
    iget-object v4, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->daemon:Ljava/lang/Boolean;

    .line 153
    iget-object v5, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->priority:Ljava/lang/Integer;

    .line 154
    iget-object v6, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 155
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v1, :cond_1b

    .line 159
    :goto_c
    if-eqz v2, :cond_20

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x0

    invoke-direct {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 160
    :goto_15
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0

    .line 158
    :cond_1b
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    goto :goto_c

    .line 159
    :cond_20
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 182
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Ljava/util/concurrent/ThreadFactory;
    .registers 2
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 145
    invoke-static {p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->doBuild(Lcom/google/common/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .registers 3

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->daemon:Ljava/lang/Boolean;

    .line 83
    return-object p0
.end method

.method public setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .registers 5

    const/4 v2, 0x0

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->nameFormat:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setPriority(I)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .registers 7

    const/16 v4, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    if-lt p1, v1, :cond_1a

    move v0, v1

    :goto_7
    const-string v3, "Thread priority (%s) must be >= %s"

    invoke-static {v0, v3, p1, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 100
    if-gt p1, v4, :cond_1c

    :goto_e
    const-string v0, "Thread priority (%s) must be <= %s"

    invoke-static {v1, v0, p1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->priority:Ljava/lang/Integer;

    .line 106
    return-object p0

    :cond_1a
    move v0, v2

    .line 95
    goto :goto_7

    :cond_1c
    move v1, v2

    goto :goto_e
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .registers 3

    .line 132
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 133
    return-object p0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .registers 3

    .line 118
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 119
    return-object p0
.end method
