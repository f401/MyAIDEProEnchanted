.class final Lcom/google/android/gms/measurement/internal/zzbt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final zzapa:Ljava/lang/String;

.field private final zzapb:Lcom/google/android/gms/measurement/internal/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapb:Lcom/google/android/gms/measurement/internal/zzbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapb:Lcom/google/android/gms/measurement/internal/zzbr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapa:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
