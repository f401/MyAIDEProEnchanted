.class final Lcom/google/android/gms/measurement/internal/zzat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzamd:I

.field private final zzame:Ljava/lang/String;

.field private final zzamf:Ljava/lang/Object;

.field private final zzamg:Ljava/lang/Object;

.field private final zzamh:Ljava/lang/Object;

.field private final zzami:Lcom/google/android/gms/measurement/internal/zzas;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzas;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamd:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzame:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamf:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamg:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamh:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zza(ILjava/lang/String;)V

    return-void

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Lcom/google/android/gms/measurement/internal/zzas;)C

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzdw()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const/16 v2, 0x43

    goto :goto_3a

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const/16 v2, 0x63

    :goto_3a
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Lcom/google/android/gms/measurement/internal/zzas;C)C

    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzb(Lcom/google/android/gms/measurement/internal/zzas;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_56

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzhh()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Lcom/google/android/gms/measurement/internal/zzas;J)J

    :cond_56
    const-string v1, "01VDIWEA?"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamd:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Lcom/google/android/gms/measurement/internal/zzas;)C

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzb(Lcom/google/android/gms/measurement/internal/zzas;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzame:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamf:Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamg:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamh:Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-static {v9, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x18

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_af

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzame:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_af
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzamz:Lcom/google/android/gms/measurement/internal/zzbh;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbh;->zzc(Ljava/lang/String;J)V

    return-void
.end method
