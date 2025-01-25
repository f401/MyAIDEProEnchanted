.class final Lcom/google/android/gms/measurement/internal/zzg;
.super Ljava/lang/Object;


# instance fields
.field private final zzada:Lcom/google/android/gms/measurement/internal/zzbw;

.field private zzade:J

.field private zzafh:Ljava/lang/String;

.field private zzafi:Ljava/lang/String;

.field private zzafj:Ljava/lang/String;

.field private zzafk:Ljava/lang/String;

.field private zzafl:J

.field private zzafm:J

.field private zzafn:J

.field private zzafo:J

.field private zzafp:Ljava/lang/String;

.field private zzafq:J

.field private zzafr:Z

.field private zzafs:J

.field private zzaft:Z

.field private zzafu:Z

.field private zzafv:Ljava/lang/String;

.field private zzafw:J

.field private zzafx:J

.field private zzafy:J

.field private zzafz:J

.field private zzaga:J

.field private zzagb:J

.field private zzagc:Ljava/lang/String;

.field private zzagd:Z

.field private zzage:J

.field private zzagf:J

.field private zzts:Ljava/lang/String;

.field private final zztt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzg;->zztt:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    return-void
.end method


# virtual methods
.method public final getAppInstanceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafh:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafk:Ljava/lang/String;

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafi:Ljava/lang/String;

    return-object v0
.end method

.method public final isMeasurementEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafr:Z

    return v0
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzts:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzts:Ljava/lang/String;

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafr:Z

    if-eq v1, p1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafr:Z

    return-void
.end method

.method public final zzaa(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagb:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagb:J

    return-void
.end method

.method public final zzab(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaga:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaga:J

    return-void
.end method

.method public final zzac(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafs:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafs:J

    return-void
.end method

.method public final zzaj(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafh:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafh:Ljava/lang/String;

    return-void
.end method

.method public final zzak()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzts:Ljava/lang/String;

    return-object v0
.end method

.method public final zzak(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafi:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafi:Ljava/lang/String;

    return-void
.end method

.method public final zzal()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zztt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzal(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafv:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafv:Ljava/lang/String;

    return-void
.end method

.method public final zzam(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafj:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafj:Ljava/lang/String;

    return-void
.end method

.method public final zzan(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafk:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafk:Ljava/lang/String;

    return-void
.end method

.method public final zzao(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafp:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafp:Ljava/lang/String;

    return-void
.end method

.method public final zzap(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagc:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagc:Ljava/lang/String;

    return-void
.end method

.method public final zze(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaft:Z

    if-eq v0, p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaft:Z

    return-void
.end method

.method public final zzf(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafu:Z

    if-eq v0, p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafu:Z

    return-void
.end method

.method public final zzha()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    return-void
.end method

.method public final zzhb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafv:Ljava/lang/String;

    return-object v0
.end method

.method public final zzhc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzhd()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafm:J

    return-wide v0
.end method

.method public final zzhe()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafn:J

    return-wide v0
.end method

.method public final zzhf()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafo:J

    return-wide v0
.end method

.method public final zzhg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzhh()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzade:J

    return-wide v0
.end method

.method public final zzhi()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafq:J

    return-wide v0
.end method

.method public final zzhj()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafl:J

    return-wide v0
.end method

.method public final zzhk()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzage:J

    return-wide v0
.end method

.method public final zzhl()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagf:J

    return-wide v0
.end method

.method public final zzhm()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafl:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zztt:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_2c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafl:J

    return-void
.end method

.method public final zzhn()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafw:J

    return-wide v0
.end method

.method public final zzho()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafx:J

    return-wide v0
.end method

.method public final zzhp()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafy:J

    return-wide v0
.end method

.method public final zzhq()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafz:J

    return-wide v0
.end method

.method public final zzhr()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagb:J

    return-wide v0
.end method

.method public final zzhs()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaga:J

    return-wide v0
.end method

.method public final zzht()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzhu()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzhv()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafs:J

    return-wide v0
.end method

.method public final zzhw()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaft:Z

    return v0
.end method

.method public final zzhx()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafu:Z

    return v0
.end method

.method public final zzo(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafm:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafm:J

    return-void
.end method

.method public final zzp(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafn:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafn:J

    return-void
.end method

.method public final zzq(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafo:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafo:J

    return-void
.end method

.method public final zzr(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzade:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzade:J

    return-void
.end method

.method public final zzs(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafq:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafq:J

    return-void
.end method

.method public final zzt(J)V
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafl:J

    cmp-long v1, v4, p1

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    :cond_20
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafl:J

    return-void
.end method

.method public final zzu(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzage:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzage:J

    return-void
.end method

.method public final zzv(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagf:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagf:J

    return-void
.end method

.method public final zzw(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafw:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafw:J

    return-void
.end method

.method public final zzx(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafx:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafx:J

    return-void
.end method

.method public final zzy(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafy:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafy:J

    return-void
.end method

.method public final zzz(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafz:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafz:J

    return-void
.end method
