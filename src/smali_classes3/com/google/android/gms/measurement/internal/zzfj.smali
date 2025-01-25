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
    .registers 7

    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfj;->startTime:J

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzrz:Lcom/google/android/gms/common/util/e;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->startTime:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x36ee80

    cmp-long v3, p1, v0

    if-ltz v3, :cond_1b

    return v2

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method
