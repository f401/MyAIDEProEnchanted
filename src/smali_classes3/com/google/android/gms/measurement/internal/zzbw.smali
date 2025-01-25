.class public Lcom/google/android/gms/measurement/internal/zzbw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzct;


# static fields
.field private static volatile zzapg:Lcom/google/android/gms/measurement/internal/zzbw;


# instance fields
.field private final zzadg:Z

.field private final zzadi:Ljava/lang/String;

.field private final zzago:J

.field private final zzaih:Lcom/google/android/gms/measurement/internal/zzn;

.field private final zzaph:Ljava/lang/String;

.field private final zzapi:Ljava/lang/String;

.field private final zzapj:Lcom/google/android/gms/measurement/internal/zzq;

.field private final zzapk:Lcom/google/android/gms/measurement/internal/zzbd;

.field private final zzapl:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzapm:Lcom/google/android/gms/measurement/internal/zzbr;

.field private final zzapn:Lcom/google/android/gms/measurement/internal/zzfd;

.field private final zzapo:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzapp:Lcom/google/android/gms/measurement/internal/zzfy;

.field private final zzapq:Lcom/google/android/gms/measurement/internal/zzaq;

.field private final zzapr:Lcom/google/android/gms/measurement/internal/zzdy;

.field private final zzaps:Lcom/google/android/gms/measurement/internal/zzda;

.field private final zzapt:Lcom/google/android/gms/measurement/internal/zza;

.field private zzapu:Lcom/google/android/gms/measurement/internal/zzao;

.field private zzapv:Lcom/google/android/gms/measurement/internal/zzeb;

.field private zzapw:Lcom/google/android/gms/measurement/internal/zzaa;

.field private zzapx:Lcom/google/android/gms/measurement/internal/zzam;

.field private zzapy:Lcom/google/android/gms/measurement/internal/zzbj;

.field private zzapz:Ljava/lang/Boolean;

.field private zzaqa:J

.field private volatile zzaqb:Ljava/lang/Boolean;

.field private zzaqc:Ljava/lang/Boolean;

.field private zzaqd:Ljava/lang/Boolean;

.field private zzaqe:I

.field private zzaqf:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzri:Landroid/content/Context;

.field private final zzrz:Lcom/google/android/gms/common/util/e;

.field private zzvz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzcz;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzvz:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqf:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzcz;->zzri:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzn;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzcz;->zzri:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzri:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzcz;->zzadi:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzadi:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzcz;->zzaph:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaph:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzcz;->zzapi:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapi:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzcz;->zzadg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzadg:Z

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzcz;->zzaqb:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqb:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzcz;->zzaqw:Lcom/google/android/gms/measurement/internal/zzan;

    if-eqz v1, :cond_5a

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzan;->zzadj:Landroid/os/Bundle;

    if-eqz v2, :cond_5a

    const-string v3, "measurementEnabled"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4a

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqc:Ljava/lang/Boolean;

    :cond_4a
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzan;->zzadj:Landroid/os/Bundle;

    const-string v2, "measurementDeactivated"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_5a

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqd:Ljava/lang/Boolean;

    :cond_5a
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/h;->Hw()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzrz:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzago:J

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzq()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapk:Lcom/google/android/gms/measurement/internal/zzbd;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzq()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapl:Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzfy;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzq()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapp:Lcom/google/android/gms/measurement/internal/zzfy;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzq()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapq:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapt:Lcom/google/android/gms/measurement/internal/zza;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzdy;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapr:Lcom/google/android/gms/measurement/internal/zzdy;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzda;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzda;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaps:Lcom/google/android/gms/measurement/internal/zzda;

    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapo:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzfd;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapn:Lcom/google/android/gms/measurement/internal/zzfd;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzbr;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzq()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapm:Lcom/google/android/gms/measurement/internal/zzbr;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_111

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_11e

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqx:Lcom/google/android/gms/measurement/internal/zzdu;

    if-nez v3, :cond_fc

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzdu;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/measurement/internal/zzdu;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Lcom/google/android/gms/measurement/internal/zzdb;)V

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqx:Lcom/google/android/gms/measurement/internal/zzdu;

    :cond_fc
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqx:Lcom/google/android/gms/measurement/internal/zzdu;

    invoke-virtual {v2, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqx:Lcom/google/android/gms/measurement/internal/zzdu;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Registered activity lifecycle callback"

    goto :goto_11b

    :cond_111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Application context is not an Application"

    :goto_11b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_11e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzbx;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzcz;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzbw;
    .registers 13

    if-eqz p1, :cond_1d

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzan;->origin:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzadi:Ljava/lang/String;

    if-nez v0, :cond_1d

    :cond_a
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzan;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzade:J

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzadf:J

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzadg:Z

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzadh:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzadj:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    :cond_1d
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapg:Lcom/google/android/gms/measurement/internal/zzbw;

    if-nez v0, :cond_47

    const-class v0, Lcom/google/android/gms/measurement/internal/zzbw;

    monitor-enter v0

    :try_start_2e
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapg:Lcom/google/android/gms/measurement/internal/zzbw;

    if-nez v0, :cond_3e

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcz;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzan;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbw;-><init>(Lcom/google/android/gms/measurement/internal/zzcz;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapg:Lcom/google/android/gms/measurement/internal/zzbw;

    :cond_3e
    const-class p0, Lcom/google/android/gms/measurement/internal/zzbw;

    monitor-exit p0

    goto :goto_62

    :catchall_42
    move-exception p0

    const-class p1, Lcom/google/android/gms/measurement/internal/zzbw;

    monitor-exit p1
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_42

    throw p0

    :cond_47
    if-eqz p1, :cond_62

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzadj:Landroid/os/Bundle;

    if-eqz p0, :cond_62

    const-string v0, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_62

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapg:Lcom/google/android/gms/measurement/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzadj:Landroid/os/Bundle;

    const-string v0, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzd(Z)V

    :cond_62
    :goto_62
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapg:Lcom/google/android/gms/measurement/internal/zzbw;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzcz;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzcz;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzcr;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzcs;)V
    .registers 3

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzcz;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzhy()Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzq()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapw:Lcom/google/android/gms/measurement/internal/zzaa;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapx:Lcom/google/android/gms/measurement/internal/zzam;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzao;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapu:Lcom/google/android/gms/measurement/internal/zzao;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzeb;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapv:Lcom/google/android/gms/measurement/internal/zzeb;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapp:Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgx()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapk:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgx()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbj;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapy:Lcom/google/android/gms/measurement/internal/zzbj;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapx:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzhh()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement is starting up, version"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzadi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    goto :goto_ae

    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    if-eqz v1, :cond_a6

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_ab

    :cond_a6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_ab
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_ae
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_b1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqe:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqf:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_e5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqe:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqf:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzvz:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzf;)V
    .registers 3

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzcl()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzvz:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzri:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzalc:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzhz()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v2

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqd:Ljava/lang/Boolean;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    return v2

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzjz()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzia()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqc:Ljava/lang/Boolean;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4f
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->DW()Z

    move-result v0

    if-eqz v0, :cond_56

    return v2

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaky:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqb:Ljava/lang/Boolean;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6b
    return v1

    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzhz()Z

    move-result v0

    if-eqz v0, :cond_75

    return v2

    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzia()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_82

    :goto_7d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9e

    :cond_82
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->DW()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9e

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqb:Ljava/lang/Boolean;

    if-eqz v1, :cond_9e

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaky:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqb:Ljava/lang/Boolean;

    goto :goto_7d

    :cond_9e
    :goto_9e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzh(Z)Z

    move-result v0

    return v0
.end method

.method protected final start()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzrz:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzago:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Persisting first open"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzago:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkv()Z

    move-result v0

    if-nez v0, :cond_e5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_98

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzri:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6()Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzif()Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzri:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbm;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_c1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzri:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_d7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_e5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzhb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_199

    :cond_101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzjv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzhb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbd;->zzjw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzjy()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->resetAnalyticsData()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapv:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapv:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzdj()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzago:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanh:Lcom/google/android/gms/measurement/internal/zzbi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbi;->zzcd(Ljava/lang/String;)V

    :cond_164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzcb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzhb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzcc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_199

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapn:Lcom/google/android/gms/measurement/internal/zzfd;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzago:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaj(J)V

    :cond_199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanh:Lcom/google/android/gms/measurement/internal/zzbi;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbi;->zzkd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zzcp(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzhb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20a

    :cond_1c6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzkc()Z

    move-result v1

    if-nez v1, :cond_1e5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzhz()Z

    move-result v1

    if-nez v1, :cond_1e5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->zzi(Z)V

    :cond_1e5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f7

    if-eqz v0, :cond_1fe

    :cond_1f7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzld()V

    :cond_1fe
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_20a
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzcs;)V
    .registers 2

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqe:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqe:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzf;)V
    .registers 2

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqe:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqe:I

    return-void
.end method

.method public final zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzrz:Lcom/google/android/gms/common/util/e;

    return-object v0
.end method

.method final zzd(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqb:Ljava/lang/Boolean;

    return-void
.end method

.method final zzgf()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzgg()V
    .registers 1

    return-void
.end method

.method public final zzgi()Lcom/google/android/gms/measurement/internal/zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapt:Lcom/google/android/gms/measurement/internal/zza;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzgj()Lcom/google/android/gms/measurement/internal/zzda;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaps:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaps:Lcom/google/android/gms/measurement/internal/zzda;

    return-object v0
.end method

.method public final zzgk()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapx:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapx:Lcom/google/android/gms/measurement/internal/zzam;

    return-object v0
.end method

.method public final zzgl()Lcom/google/android/gms/measurement/internal/zzeb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapv:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapv:Lcom/google/android/gms/measurement/internal/zzeb;

    return-object v0
.end method

.method public final zzgm()Lcom/google/android/gms/measurement/internal/zzdy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapr:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapr:Lcom/google/android/gms/measurement/internal/zzdy;

    return-object v0
.end method

.method public final zzgn()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapu:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapu:Lcom/google/android/gms/measurement/internal/zzao;

    return-object v0
.end method

.method public final zzgo()Lcom/google/android/gms/measurement/internal/zzfd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapn:Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapn:Lcom/google/android/gms/measurement/internal/zzfd;

    return-object v0
.end method

.method public final zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapw:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzcs;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapw:Lcom/google/android/gms/measurement/internal/zzaa;

    return-object v0
.end method

.method public final zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapq:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzcr;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapq:Lcom/google/android/gms/measurement/internal/zzaq;

    return-object v0
.end method

.method public final zzgr()Lcom/google/android/gms/measurement/internal/zzfy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapp:Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzcr;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapp:Lcom/google/android/gms/measurement/internal/zzfy;

    return-object v0
.end method

.method public final zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapm:Lcom/google/android/gms/measurement/internal/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzcs;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapm:Lcom/google/android/gms/measurement/internal/zzbr;

    return-object v0
.end method

.method public final zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapl:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzcs;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapl:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapk:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzcr;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapk:Lcom/google/android/gms/measurement/internal/zzbd;

    return-object v0
.end method

.method public final zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    return-object v0
.end method

.method public final zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapl:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapl:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/measurement/internal/zzbj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapy:Lcom/google/android/gms/measurement/internal/zzbj;

    return-object v0
.end method

.method final zzkl()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapm:Lcom/google/android/gms/measurement/internal/zzbr;

    return-object v0
.end method

.method public final zzkm()Lcom/google/android/gms/measurement/AppMeasurement;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapo:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final zzkn()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzadi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final zzko()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzadi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzkp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaph:Ljava/lang/String;

    return-object v0
.end method

.method public final zzkq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzkr()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzadg:Z

    return v0
.end method

.method public final zzks()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqb:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method final zzkt()J
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1b

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzago:J

    return-wide v0

    :cond_1b
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzago:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzku()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqf:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final zzkv()Z
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapz:Ljava/lang/Boolean;

    if-eqz v0, :cond_31

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqa:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_31

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzrz:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqa:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_b6

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzrz:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqa:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzx(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzri:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapj:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzif()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzri:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbm;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzri:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_77
    const/4 v0, 0x1

    goto :goto_7a

    :cond_79
    const/4 v0, 0x0

    :goto_7a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzhb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzhb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_af

    goto :goto_b0

    :cond_af
    const/4 v1, 0x0

    :cond_b0
    :goto_b0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapz:Ljava/lang/Boolean;

    :cond_b6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzapz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
