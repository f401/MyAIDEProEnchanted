.class final Lcom/google/android/gms/measurement/internal/zzfj;
.super Ljava/lang/Object;


# instance fields
.field private startTime:J

.field private final zzrz:Lcom/google/android/gms/common/util/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzrz:Lcom/google/android/gms/common/util/e;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->startTime:J

    return-void
.end method

.method public final start()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzrz:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->startTime:J

    return-void
.end method

.method public final zzj(J)Z
    .registers 9

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfj;->startTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzrz:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzfj;->startTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
