.class final Lcom/google/android/gms/measurement/internal/zzdg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;

.field private final zzark:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzark:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzark:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Resetting analytics data (FE)"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfd;->zzln()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzbc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_3c
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzhz()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->zzi(Z)V

    :cond_55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->resetAnalyticsData()V

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzda;->zzarc:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzalb:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_7c
    return-void
.end method
