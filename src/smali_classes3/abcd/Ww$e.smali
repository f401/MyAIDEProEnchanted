.class Labcd/Ww$e;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static j6:Labcd/Ww$e;


# instance fields
.field private final DW:Labcd/Ww$a;

.field private final FH:I

.field private final Hw:I


# direct methods
.method public constructor <init>(Labcd/Ww$a;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Labcd/Ww$e;->DW:Labcd/Ww$a;

    iput p2, p0, Labcd/Ww$e;->FH:I

    mul-int/lit16 p3, p3, 0x3e8

    iput p3, p0, Labcd/Ww$e;->Hw:I

    return-void
.end method

.method public static j6(Labcd/Ww$a;II)V
    .registers 4

    const-class v0, Labcd/Ww$e;

    monitor-enter v0

    :try_start_3
    sget-object v0, Labcd/Ww$e;->j6:Labcd/Ww$e;

    if-nez v0, :cond_11

    new-instance v0, Labcd/Ww$e;

    invoke-direct {v0, p0, p1, p2}, Labcd/Ww$e;-><init>(Labcd/Ww$a;II)V

    sput-object v0, Labcd/Ww$e;->j6:Labcd/Ww$e;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    :cond_11
    const-class p0, Labcd/Ww$e;

    monitor-exit p0

    return-void

    :catchall_15
    move-exception p0

    const-class p1, Labcd/Ww$e;

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public run()V
    .registers 6

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_2} :catch_35

    :try_start_2
    iget v1, p0, Labcd/Ww$e;->Hw:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_32

    :try_start_9
    iget-object v1, p0, Labcd/Ww$e;->DW:Labcd/Ww$a;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->closeExpiredConnections()V

    iget-object v1, p0, Labcd/Ww$e;->DW:Labcd/Ww$a;

    iget v2, p0, Labcd/Ww$e;->FH:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    const-class v1, Labcd/Ww$e;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1b} :catch_35

    :try_start_1b
    iget-object v1, p0, Labcd/Ww$e;->DW:Labcd/Ww$a;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->getConnectionsInPool()I

    move-result v1

    if-nez v1, :cond_29

    sput-object v0, Labcd/Ww$e;->j6:Labcd/Ww$e;

    const-class v1, Labcd/Ww$e;

    monitor-exit v1

    return-void

    :cond_29
    const-class v1, Labcd/Ww$e;

    monitor-exit v1

    goto :goto_0

    :catchall_2d
    move-exception v1

    const-class v2, Labcd/Ww$e;

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_2d

    :try_start_31
    throw v1
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_32} :catch_35

    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v1
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_35} :catch_35

    :catch_35
    move-exception v1

    sput-object v0, Labcd/Ww$e;->j6:Labcd/Ww$e;

    return-void
.end method
