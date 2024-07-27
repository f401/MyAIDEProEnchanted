.class public final Lcom/google/android/gms/internal/ads/zk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zk;->j6:Ljava/lang/Object;

    return-void
.end method

.method public static j6()Ljava/lang/String;
    .registers 2

    sget-object v1, Lcom/google/android/gms/internal/ads/zk;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
