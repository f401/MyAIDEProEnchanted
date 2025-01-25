.class public Lsun/misc/RequestProcessor;
.super Ljava/lang/Object;
.source "RequestProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static dispatcher:Ljava/lang/Thread;

.field private static requestQueue:Lsun/misc/Queue;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lazyInitialize()V
    .registers 2

    const-class v0, Lsun/misc/RequestProcessor;

    monitor-enter v0

    .line 94
    :try_start_3
    sget-object v0, Lsun/misc/RequestProcessor;->requestQueue:Lsun/misc/Queue;

    if-nez v0, :cond_e

    .line 95
    new-instance v0, Lsun/misc/Queue;

    invoke-direct {v0}, Lsun/misc/Queue;-><init>()V

    sput-object v0, Lsun/misc/RequestProcessor;->requestQueue:Lsun/misc/Queue;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    .line 97
    :cond_e
    const-class v0, Lsun/misc/RequestProcessor;

    monitor-exit v0

    return-void

    .line 93
    :catchall_12
    move-exception v0

    const-class v1, Lsun/misc/RequestProcessor;

    monitor-exit v1

    throw v0
.end method

.method public static postRequest(Lsun/misc/Request;)V
    .registers 2

    .line 47
    invoke-static {}, Lsun/misc/RequestProcessor;->lazyInitialize()V

    .line 48
    sget-object v0, Lsun/misc/RequestProcessor;->requestQueue:Lsun/misc/Queue;

    invoke-virtual {v0, p0}, Lsun/misc/Queue;->enqueue(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static startProcessing()V
    .registers 3

    const-class v0, Lsun/misc/RequestProcessor;

    monitor-enter v0

    .line 82
    :try_start_3
    sget-object v0, Lsun/misc/RequestProcessor;->dispatcher:Ljava/lang/Thread;

    if-nez v0, :cond_1e

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsun/misc/RequestProcessor;

    invoke-direct {v1}, Lsun/misc/RequestProcessor;-><init>()V

    const-string v2, "Request Processor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lsun/misc/RequestProcessor;->dispatcher:Ljava/lang/Thread;

    .line 84
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 85
    sget-object v0, Lsun/misc/RequestProcessor;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 87
    :cond_1e
    const-class v0, Lsun/misc/RequestProcessor;

    monitor-exit v0

    return-void

    .line 81
    :catchall_22
    move-exception v0

    const-class v1, Lsun/misc/RequestProcessor;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 55
    invoke-static {}, Lsun/misc/RequestProcessor;->lazyInitialize()V

    .line 58
    :cond_3
    :goto_3
    :try_start_3
    sget-object v0, Lsun/misc/RequestProcessor;->requestQueue:Lsun/misc/Queue;

    invoke-virtual {v0}, Lsun/misc/Queue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lsun/misc/Request;

    if-eqz v1, :cond_3

    .line 60
    check-cast v0, Lsun/misc/Request;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_f} :catch_15

    .line 62
    :try_start_f
    invoke-virtual {v0}, Lsun/misc/Request;->execute()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_3

    .line 63
    :catchall_13
    move-exception v0

    goto :goto_3

    .line 68
    :catch_15
    move-exception v0

    goto :goto_3
.end method
