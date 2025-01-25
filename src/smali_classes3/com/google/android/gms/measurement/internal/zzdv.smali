.class final Lcom/google/android/gms/measurement/internal/zzdv;
.super Lcom/google/android/gms/measurement/internal/zzfn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfn;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    return-void
.end method

.method private static zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;)[B
    .registers 11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzalf:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Generating ScionPayload disabled. packageName"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_28
    new-array p1, v1, [B

    return-object p1

    :cond_2b
    const-string v0, "_iap"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_50

    const-string v0, "_iapx"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Generating a payload for this event is not available. package_name, event_name"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/measurement/ja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ja;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_5c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3

    if-nez v3, :cond_7b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Log and bundle not available. package_name"

    :goto_70
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_199

    :goto_73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    goto :goto_28

    :cond_7b
    :try_start_7b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v4

    if-nez v4, :cond_8c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Log and bundle disabled. package_name"

    goto :goto_70

    :cond_8c
    new-instance p2, Lcom/google/android/gms/internal/measurement/ka;

    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/ka;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/android/gms/internal/measurement/ka;

    aput-object p2, v5, v1

    iput-object v5, v0, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->Hw:Ljava/lang/Integer;

    const-string v0, "android"

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->we:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->XL:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->j3:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v0, v4, v6

    if-nez v0, :cond_c1

    move-object v0, v2

    goto :goto_c6

    :cond_c1
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_c6
    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->nw:Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->Mr:Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->BT:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->BT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->ef:Ljava/lang/String;

    :cond_e6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->er:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzie()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzas(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iput-object v2, p2, Lcom/google/android/gms/internal/measurement/ka;->cb:Ljava/lang/String;

    :cond_10c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzbd;->zzbz(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v4

    if-eqz v4, :cond_14c

    if-eqz v0, :cond_14c

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_128
    .catchall {:try_start_7b .. :try_end_128} :catchall_199

    if-nez v4, :cond_14c

    :try_start_12a
    iget-object p2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzag;->zzaig:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/measurement/internal/zzdv;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_137
    .catch Ljava/lang/SecurityException; {:try_start_12a .. :try_end_137} :catch_138
    .catchall {:try_start_12a .. :try_end_137} :catchall_199

    throw v2

    :catch_138
    move-exception p1

    :try_start_139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Resettable device id encryption failed"

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_147
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_73

    :cond_14c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->J8:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->J0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zziw()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->QX:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zzix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ka;->Ws:Ljava/lang/String;
    :try_end_17b
    .catchall {:try_start_139 .. :try_end_17b} :catchall_199

    :try_start_17b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object p2

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzag;->zzaig:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/measurement/internal/zzdv;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_188
    .catch Ljava/lang/SecurityException; {:try_start_17b .. :try_end_188} :catch_189
    .catchall {:try_start_17b .. :try_end_188} :catchall_199

    throw v2

    :catch_189
    move-exception p1

    :try_start_18a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "app instance id encryption failed"

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_198
    .catchall {:try_start_18a .. :try_end_198} :catchall_199

    goto :goto_147

    :catchall_199
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    goto :goto_1a3

    :goto_1a2
    throw p1

    :goto_1a3
    goto :goto_1a2
.end method

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
