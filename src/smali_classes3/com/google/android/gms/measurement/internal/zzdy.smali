.class public final Lcom/google/android/gms/measurement/internal/zzdy;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field protected zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

.field private volatile zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

.field private zzars:Lcom/google/android/gms/measurement/internal/zzdx;

.field private final zzart:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/measurement/internal/zzdx;",
            ">;"
        }
    .end annotation
.end field

.field private zzaru:Lcom/google/android/gms/measurement/internal/zzdx;

.field private zzarv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    new-instance p1, Labcd/k;

    invoke-direct {p1}, Labcd/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzart:Ljava/util/Map;

    return-void
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdx;Z)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzars:Lcom/google/android/gms/measurement/internal/zzdx;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    :goto_9
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    if-nez v1, :cond_23

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzdy;->zzcq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v3, p2, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdx;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object p2, v1

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzars:Lcom/google/android/gms/measurement/internal/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-direct {v1, p0, p3, v0, p2}, Lcom/google/android/gms/measurement/internal/zzdz;-><init>(Lcom/google/android/gms/measurement/internal/zzdy;ZLcom/google/android/gms/measurement/internal/zzdx;Lcom/google/android/gms/measurement/internal/zzdx;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzdx;Landroid/os/Bundle;Z)V
    .registers 7

    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_28

    if-eqz p0, :cond_28

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz p2, :cond_28

    :cond_12
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    if-eqz p2, :cond_1a

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1d
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_28
    if-eqz p1, :cond_37

    if-nez p0, :cond_37

    if-eqz p2, :cond_37

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzdx;Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zzm(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzdx;->zzarp:Z

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(ZZ)Z

    move-result p2

    if-eqz p2, :cond_1e

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/google/android/gms/measurement/internal/zzdx;->zzarp:Z

    :cond_1e
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzdy;Lcom/google/android/gms/measurement/internal/zzdx;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdx;Z)V

    return-void
.end method

.method private static zzcq(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_f

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_11

    :cond_f
    const-string p0, ""

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1e
    return-object p0
.end method

.method private final zze(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdx;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzart:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez v0, :cond_2c

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzdy;->zzcq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmj()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzdx;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzart:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_c

    return-void

    :cond_c
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdx;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdx;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzart:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzart:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdy;->zze(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzars:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzea;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzea;-><init>(Lcom/google/android/gms/measurement/internal/zzdy;Lcom/google/android/gms/measurement/internal/zzdx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdy;->zze(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdx;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zza;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zza;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzd;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzd;-><init>(Lcom/google/android/gms/measurement/internal/zza;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzart:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez p1, :cond_e

    return-void

    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer_name"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzart:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_28
    if-nez p3, :cond_36

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzdy;->zzcq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_58

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjl()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_58
    const/16 v0, 0x64

    if-eqz p2, :cond_7e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_68

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_7e

    :cond_68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7e
    if-eqz p3, :cond_a2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_a2

    :cond_8c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_a2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    if-nez p2, :cond_af

    const-string v1, "null"

    goto :goto_b0

    :cond_af
    move-object v1, p2

    :goto_b0
    const-string v2, "Setting current screen to name, class"

    invoke-virtual {v0, v2, v1, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmj()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzdx;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzart:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdx;Z)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzaf()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarv:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p2, :cond_14

    :cond_10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzaru:Lcom/google/android/gms/measurement/internal/zzdx;

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/measurement/internal/zzda;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzeb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzdy;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzfd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v0

    return-object v0
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

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzle()Lcom/google/android/gms/measurement/internal/zzdx;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    return-object v0
.end method

.method public final zzlf()Lcom/google/android/gms/measurement/internal/zzdx;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarr:Lcom/google/android/gms/measurement/internal/zzdx;

    return-object v0
.end method
