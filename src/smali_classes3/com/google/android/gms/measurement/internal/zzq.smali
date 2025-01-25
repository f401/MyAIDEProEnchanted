.class public final Lcom/google/android/gms/measurement/internal/zzq;
.super Lcom/google/android/gms/measurement/internal/zzcr;


# instance fields
.field private zzagw:Ljava/lang/Boolean;

.field private zzagx:Lcom/google/android/gms/measurement/internal/zzs;

.field private zzyk:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcr;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzagy:Lcom/google/android/gms/measurement/internal/zzs;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzbw;)V

    return-void
.end method

.method static zzhy()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaiu:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static zzib()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzajx:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzic()J
    .registers 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaix:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzie()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzait:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static zzig()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakt:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    if-nez p1, :cond_d

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzs;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2

    :cond_1e
    :try_start_1e
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_30} :catch_31

    return-wide p1

    :catch_31
    move-exception p1

    goto :goto_2
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    return-void
.end method

.method public final zzaq(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaji:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I

    move-result p1

    return p1
.end method

.method final zzar(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v1, "Failed to load metadata: PackageManager is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-object v0

    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_42

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v1, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-object v0

    :cond_42
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_54

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v1, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-object v0

    :cond_54
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    return-object v0

    :cond_5d
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_63} :catch_68

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_68
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to load metadata: Package name not found"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzas(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    const-string v1, "gaia_collection_enabled"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzs;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzat(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    const-string v1, "measurement.event_sampling_enabled"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzs;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzau(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakh:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzav(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakj:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzaw(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakk:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzax(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakb:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzay(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakc:Lcom/google/android/gms/measurement/internal/zzai$zza;

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_8
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzs;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8
.end method

.method final zzaz(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakl:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_d

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzs;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2

    :cond_1e
    :try_start_1e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_30} :catch_31

    return p1

    :catch_31
    move-exception p1

    goto :goto_2
.end method

.method final zzba(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakm:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbb(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzako:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbc(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakp:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbd(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakq:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbe(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaks:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbf(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakr:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbg(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaku:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbh(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakv:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbi(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakw:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbj(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakx:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method final zzbk(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakz:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    if-nez p1, :cond_d

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzs;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2

    :cond_1e
    :try_start_1e
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_30} :catch_31

    return-wide p1

    :catch_31
    move-exception p1

    goto :goto_2
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_d

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagx:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzs;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2

    :cond_1e
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6
.end method

.method public final zzdw()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzyk:Ljava/lang/Boolean;

    if-nez v0, :cond_44

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzyk:Ljava/lang/Boolean;

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/q;->j6()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2a

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzyk:Ljava/lang/Boolean;

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzyk:Ljava/lang/Boolean;

    if-nez v0, :cond_3f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzyk:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_3f
    monitor-exit p0

    goto :goto_44

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzyk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfy;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final zzhh()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const-wide/16 v0, 0x3976

    return-wide v0
.end method

.method public final zzhz()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const-string v0, "firebase_analytics_collection_deactivated"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzar(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final zzia()Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const-string v0, "firebase_analytics_collection_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzar(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final zzid()Ljava/lang/String;
    .registers 9

    const-string v0, ""

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "debug.firebase.analytics.app"

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2a} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2a} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2a} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2a} :catch_2b

    return-object v1

    :catch_2b
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "SystemProperties.get() threw an exception"

    goto :goto_5a

    :catch_37
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Could not access SystemProperties.get()"

    goto :goto_5a

    :catch_43
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Could not find SystemProperties.get() method"

    goto :goto_5a

    :catch_4f
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Could not find SystemProperties class"

    :goto_5a
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method final zzif()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagw:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string v0, "app_measurement_lite"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzar(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagw:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagw:Ljava/lang/Boolean;

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzagw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkr()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    return v1

    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method
