.class public final Lcom/google/android/gms/measurement/internal/zzeb;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private final zzasb:Lcom/google/android/gms/measurement/internal/zzes;

.field private zzasc:Lcom/google/android/gms/measurement/internal/zzaj;

.field private volatile zzasd:Ljava/lang/Boolean;

.field private final zzase:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzasf:Lcom/google/android/gms/measurement/internal/zzfj;

.field private final zzasg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzash:Lcom/google/android/gms/measurement/internal/zzy;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasf:Lcom/google/android/gms/measurement/internal/zzfj;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasb:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzec;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzec;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzase:Lcom/google/android/gms/measurement/internal/zzy;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzek;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzek;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Lcom/google/android/gms/measurement/internal/zzy;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasc:Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasc:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzdj()V

    :cond_1d
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzaj;)Lcom/google/android/gms/measurement/internal/zzaj;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasc:Lcom/google/android/gms/measurement/internal/zzaj;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzes;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasb:Lcom/google/android/gms/measurement/internal/zzes;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzeb;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzeb;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzeb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzlj()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzeb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzcz()V

    return-void
.end method

.method private final zzcy()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasf:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->start()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzase:Lcom/google/android/gms/measurement/internal/zzy;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaka:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    return-void
.end method

.method private final zzcz()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->disconnect()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasc:Lcom/google/android/gms/measurement/internal/zzaj;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzcy()V

    return-void
.end method

.method private final zzf(Ljava/lang/Runnable;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_28

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Lcom/google/android/gms/measurement/internal/zzy;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzdj()V

    return-void
.end method

.method private final zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjq()Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzbs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object p1

    return-object p1
.end method

.method private final zzlh()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const/4 v0, 0x1

    return v0
.end method

.method private final zzlj()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_2c
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    :catch_30
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_20

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasb:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzlk()V

    :try_start_b
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasb:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_18} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_1c

    :catch_19
    move-exception v0

    goto :goto_1c

    :catch_1b
    move-exception v0

    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasc:Lcom/google/android/gms/measurement/internal/zzaj;

    return-void
.end method

.method public final getAppInstanceId(Lcom/google/android/gms/internal/measurement/h;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzk;Lcom/google/android/gms/internal/measurement/h;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasc:Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected final resetAnalyticsData()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzlh()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzao;->resetAnalyticsData()V

    :cond_1b
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzee;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzee;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/h;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzs(I)I

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Lcom/google/android/gms/internal/measurement/h;[B)V

    return-void

    :cond_2b
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzej;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzej;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/h;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/h;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzeq;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzk;Lcom/google/android/gms/internal/measurement/h;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzaj;)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasc:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzcy()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzlj()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 15

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzlh()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x64

    :goto_13
    const/16 v5, 0x3e9

    if-ge v3, v5, :cond_a1

    if-ne v4, v2, :cond_a1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzr(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_32

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_33

    :cond_32
    const/4 v5, 0x0

    :goto_33
    if-eqz p2, :cond_3a

    if-ge v5, v2, :cond_3a

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3f
    if-ge v7, v6, :cond_9c

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v9, :cond_62

    :try_start_4d
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_3f

    :catch_53
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v10, "Failed to send event to the service"

    :goto_5e
    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3f

    :cond_62
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzfv;

    if-eqz v9, :cond_78

    :try_start_66
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzk;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_3f

    :catch_6c
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v10, "Failed to send attribute to the service"

    goto :goto_5e

    :cond_78
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzo;

    if-eqz v9, :cond_8e

    :try_start_7c
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzo;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/measurement/internal/zzk;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_81} :catch_82

    goto :goto_3f

    :catch_82
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v10, "Failed to send conditional property to the service"

    goto :goto_5e

    :cond_8e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v8

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_3f

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_13

    :cond_a1
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzdx;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzei;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzei;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzdx;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzef;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzef;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzo;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzeo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzeo;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfv;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzep;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzep;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzk;)V

    invoke-direct {p0, v8}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfv;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzed;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzed;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzk;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/measurement/internal/zzfv;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzlh()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzfv;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzer;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v1

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;ZLcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc(Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;)V
    .registers 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzlh()Z

    move-result v2

    const/4 v0, 0x1

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1e
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzem;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;ZZLcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzen;

    const/4 v3, 0x1

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {v5, p1}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Lcom/google/android/gms/measurement/internal/zzo;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzen;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;ZZLcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/measurement/internal/zzk;Lcom/google/android/gms/measurement/internal/zzo;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzdj()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasd:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_112

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzjx()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto/16 :goto_10c

    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzje()I

    move-result v0

    if-ne v0, v2, :cond_3b

    goto/16 :goto_e7

    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    const v3, 0xbdfcb8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzs(I)I

    move-result v0

    if-eqz v0, :cond_da

    if-eq v0, v2, :cond_cb

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8d

    const/16 v3, 0x9

    if-eq v0, v3, :cond_82

    const/16 v3, 0x12

    if-eq v0, v3, :cond_77

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Unexpected service status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c6

    :cond_77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Service updating"

    goto :goto_e4

    :cond_82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Service invalid"

    goto :goto_97

    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Service disabled"

    :goto_97
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_c6

    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzml()I

    move-result v0

    const/16 v3, 0x38a4

    if-ge v0, v3, :cond_b5

    goto :goto_d8

    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzjx()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c6

    goto :goto_c8

    :cond_c6
    :goto_c6
    const/4 v0, 0x0

    goto :goto_c9

    :cond_c8
    :goto_c8
    const/4 v0, 0x1

    :goto_c9
    const/4 v3, 0x0

    goto :goto_e9

    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :goto_d8
    const/4 v0, 0x0

    goto :goto_e8

    :cond_da
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Service available"

    :goto_e4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :goto_e7
    const/4 v0, 0x1

    :goto_e8
    const/4 v3, 0x1

    :goto_e9
    if-nez v0, :cond_103

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzif()Z

    move-result v4

    if-eqz v4, :cond_103

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_103
    if-eqz v3, :cond_10c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzg(Z)V

    :cond_10c
    :goto_10c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasd:Ljava/lang/Boolean;

    :cond_112
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasb:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzll()V

    return-void

    :cond_120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzif()Z

    move-result v0

    if-nez v0, :cond_17e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_153

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_153

    const/4 v1, 0x1

    :cond_153
    if-eqz v1, :cond_171

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasb:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Landroid/content/Intent;)V

    return-void

    :cond_171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_17e
    return-void
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

.method protected final zzld()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeh;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzeh;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzlg()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzel;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzli()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasd:Ljava/lang/Boolean;

    return-object v0
.end method
