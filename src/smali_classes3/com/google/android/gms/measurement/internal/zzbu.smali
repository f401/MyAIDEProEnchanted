.class final Lcom/google/android/gms/measurement/internal/zzbu;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/measurement/internal/zzbu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzapa:Ljava/lang/String;

.field private final zzapb:Lcom/google/android/gms/measurement/internal/zzbr;

.field private final zzapc:J

.field final zzapd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapb:Lcom/google/android/gms/measurement/internal/zzbr;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzbr;->zzkh()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapc:J

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapa:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapd:Z

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p4, p2, v0

    if-nez p4, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapb:Lcom/google/android/gms/measurement/internal/zzbr;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzbr;->zzkh()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapc:J

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapa:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapd:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, v0, p2

    if-nez p4, :cond_2c

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 8

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzbu;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapd:Z

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzbu;->zzapd:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_e

    if-eqz v0, :cond_d

    return v3

    :cond_d
    return v2

    :cond_e
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapc:J

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbu;->zzapc:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_17

    return v3

    :cond_17
    cmp-long p1, v0, v4

    if-lez p1, :cond_1c

    return v2

    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapb:Lcom/google/android/gms/measurement/internal/zzbr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjh()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapc:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Two tasks share the same index. index"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapb:Lcom/google/android/gms/measurement/internal/zzbr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbu;->zzapa:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzbs;

    if-eqz v0, :cond_1e

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1e
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
