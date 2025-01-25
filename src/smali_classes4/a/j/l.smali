.class public La/j/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, La/j/l;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a()V
    .registers 2

    sget-object v1, La/j/l;->a:Ljava/lang/StringBuilder;

    monitor-enter v1

    const/16 v0, 0xa

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-object v1, La/j/l;->a:Ljava/lang/StringBuilder;

    monitor-enter v1

    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static b()V
    .registers 2

    sget-object v1, La/j/l;->a:Ljava/lang/StringBuilder;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    monitor-exit v1

    return-void

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    sget-object v1, La/j/l;->a:Ljava/lang/StringBuilder;

    monitor-enter v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method
