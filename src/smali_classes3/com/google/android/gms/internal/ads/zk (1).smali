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

    sget-object v0, Lcom/google/android/gms/internal/ads/zk;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6

    throw v1
.end method
