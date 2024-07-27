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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Labcd/Ww$e;->DW:Labcd/Ww$a;

    iput p2, p0, Labcd/Ww$e;->FH:I

    mul-int/lit16 v0, p3, 0x3e8

    iput v0, p0, Labcd/Ww$e;->Hw:I

    return-void
.end method

.method public static j6(Labcd/Ww$a;II)V
    .registers 5

    const-class v0, Labcd/Ww$e;

    monitor-enter v0

    :try_start_0
    sget-object v0, Labcd/Ww$e;->j6:Labcd/Ww$e;

    if-nez v0, :cond_0

    new-instance v0, Labcd/Ww$e;

    invoke-direct {v0, p0, p1, p2}, Labcd/Ww$e;-><init>(Labcd/Ww$a;II)V

    sput-object v0, Labcd/Ww$e;->j6:Labcd/Ww$e;

    sget-object v0, Labcd/Ww$e;->j6:Labcd/Ww$e;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-class v0, Labcd/Ww$e;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Labcd/Ww$e;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p0, Labcd/Ww$e;->Hw:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Labcd/Ww$e;->DW:Labcd/Ww$a;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->closeExpiredConnections()V

    iget-object v0, p0, Labcd/Ww$e;->DW:Labcd/Ww$a;

    iget v1, p0, Labcd/Ww$e;->FH:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    const-class v0, Labcd/Ww$e;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Labcd/Ww$e;->DW:Labcd/Ww$a;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->getConnectionsInPool()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Labcd/Ww$e;->j6:Labcd/Ww$e;

    const-class v0, Labcd/Ww$e;

    monitor-exit v0

    :goto_1
    return-void

    :cond_0
    const-class v0, Labcd/Ww$e;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Labcd/Ww$e;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sput-object v4, Labcd/Ww$e;->j6:Labcd/Ww$e;

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
.end method
