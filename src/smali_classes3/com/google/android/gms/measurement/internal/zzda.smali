.class public final Lcom/google/android/gms/measurement/internal/zzda;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field protected zzaqx:Lcom/google/android/gms/measurement/internal/zzdu;

.field private zzaqy:Lcom/google/android/gms/measurement/internal/zzcx;

.field private final zzaqz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/internal/zzcy;",
            ">;"
        }
    .end annotation
.end field

.field private zzara:Z

.field private final zzarb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected zzarc:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqz:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzarc:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzarb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcv(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid conditional user property name"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid conditional user property value"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_80

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to normalize conditional user property value"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_80
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v3, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x1

    const-wide v6, 0x39ef8b000L

    if-nez v3, :cond_b5

    cmp-long v3, v1, v6

    if-gtz v3, :cond_9b

    cmp-long v3, v1, v4

    if-gez v3, :cond_b5

    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Invalid conditional user property timeout"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_b5
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    cmp-long v3, v1, v6

    if-gtz v3, :cond_cd

    cmp-long v3, v1, v4

    if-gez v3, :cond_c0

    goto :goto_cd

    :cond_c0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdi;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void

    :cond_cd
    :goto_cd
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Invalid conditional user property time to live"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzda;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzlc()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzda;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzda;->zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzda;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzda;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzda;->zzj(Z)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 40

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p5

    move-object/from16 v7, p9

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzalg:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v7, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    :cond_1c
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_3b
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzda;->zzara:Z

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_80

    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzda;->zzara:Z

    :try_start_45
    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_45 .. :try_end_4b} :catch_72

    :try_start_4b
    const-string v3, "initialize"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v16

    invoke-virtual {v0, v3, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->getContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v3, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_62} :catch_63

    goto :goto_80

    :catch_63
    move-exception v0

    :try_start_64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v9, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v3, v9, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_71
    .catch Ljava/lang/ClassNotFoundException; {:try_start_64 .. :try_end_71} :catch_72

    goto :goto_80

    :catch_72
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_80
    :goto_80
    const/4 v0, 0x2

    const/16 v3, 0x28

    if-eqz p8, :cond_e9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const-string v9, "_iap"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e9

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v9

    const-string v10, "event"

    invoke-virtual {v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9f

    goto :goto_b0

    :cond_9f
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzcu;->zzaqq:[Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_aa

    const/16 v9, 0xd

    goto :goto_b3

    :cond_aa
    invoke-virtual {v9, v10, v3, v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b2

    :goto_b0
    const/4 v9, 0x2

    goto :goto_b3

    :cond_b2
    const/4 v9, 0x0

    :goto_b3
    if-eqz v9, :cond_e9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzji()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Invalid public event name. Event will not be logged (FE)"

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-static {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_dc

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v2, v16

    goto :goto_dd

    :cond_dc
    const/4 v2, 0x0

    :goto_dd
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v9, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_e9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzdy;->zzle()Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v15

    const-string v14, "_sc"

    if-eqz v15, :cond_100

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_100

    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzdx;->zzarp:Z

    :cond_100
    if-eqz p6, :cond_106

    if-eqz p8, :cond_106

    const/4 v9, 0x1

    goto :goto_107

    :cond_106
    const/4 v9, 0x0

    :goto_107
    invoke-static {v15, v5, v9}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdx;Landroid/os/Bundle;Z)V

    const-string v9, "am"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcy(Ljava/lang/String;)Z

    move-result v9

    if-eqz p6, :cond_149

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzda;->zzaqy:Lcom/google/android/gms/measurement/internal/zzcx;

    if-eqz v10, :cond_149

    if-nez v9, :cond_149

    if-nez v17, :cond_149

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzda;->zzaqy:Lcom/google/android/gms/measurement/internal/zzcx;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzcx;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_149
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkv()Z

    move-result v9

    if-nez v9, :cond_152

    return-void

    :cond_152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcu(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_198

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzji()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Invalid event name. Event will not be logged (FE)"

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-static {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_180

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v16, v2

    :cond_180
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    const-string v3, "_ev"

    move-object/from16 p1, v2

    move-object/from16 p2, p9

    move/from16 p3, v9

    move-object/from16 p4, v3

    move-object/from16 p5, v0

    move/from16 p6, v16

    invoke-virtual/range {p1 .. p6}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_198
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v13, "_o"

    aput-object v13, v3, v16

    const-string v12, "_sn"

    aput-object v12, v3, v4

    aput-object v14, v3, v0

    const/4 v0, 0x3

    const-string v11, "_si"

    aput-object v11, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/common/util/f;->j6([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v9

    const/4 v3, 0x1

    move-object/from16 v10, p9

    move-object v2, v11

    move-object/from16 v11, p2

    move-object v4, v12

    move-object/from16 v12, p5

    move-object/from16 v20, v13

    move-object v13, v0

    move-object v5, v14

    move/from16 v14, p8

    move-object/from16 v21, v15

    move v15, v3

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1f2

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f2

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d7

    goto :goto_1f2

    :cond_1d7
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v4, v5, v10, v11}, Lcom/google/android/gms/measurement/internal/zzdx;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object v2, v9

    goto :goto_1f3

    :cond_1f2
    :goto_1f2
    const/4 v2, 0x0

    :goto_1f3
    if-nez v2, :cond_1f7

    move-object/from16 v2, v21

    :cond_1f7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v9, 0x0

    const-string v5, "_ae"

    if-eqz v4, :cond_22b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzdy;->zzle()Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v4

    if-eqz v4, :cond_22b

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlp()J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-lez v4, :cond_22b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v4

    invoke-virtual {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;J)V

    :cond_22b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmk()Ljava/security/SecureRandom;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzq;->zzbj(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_277

    const-string v11, "extend_session"

    invoke-virtual {v3, v11, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v13, v9, v11

    if-nez v13, :cond_277

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v10, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v9

    move-wide/from16 v12, p3

    const/4 v10, 0x1

    invoke-virtual {v9, v12, v13, v10}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(JZ)V

    goto :goto_279

    :cond_277
    move-wide/from16 v12, p3

    :goto_279
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, [Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v10, v11

    move-wide/from16 v23, v14

    const/4 v9, 0x0

    const/16 v22, 0x0

    :goto_293
    const-string v15, "_eid"

    if-ge v9, v10, :cond_35f

    aget-object v14, v11, v9

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-object/from16 p5, v15

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzfy;->zzf(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_331

    move-object/from16 p6, v5

    array-length v5, v15

    invoke-virtual {v3, v14, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v5, 0x0

    :goto_2af
    array-length v7, v15

    if-ge v5, v7, :cond_31a

    aget-object v7, v15, v5

    move-object/from16 v18, v15

    const/4 v15, 0x1

    invoke-static {v2, v7, v15}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdx;Landroid/os/Bundle;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v19

    const-string v21, "_ep"

    const/16 v25, 0x0

    move/from16 v26, v9

    move-object/from16 v9, v19

    move/from16 v19, v10

    move-object/from16 v10, p9

    move-object/from16 v27, v11

    move-object/from16 v11, v21

    move-object v12, v7

    move-object v13, v0

    move-object v7, v0

    move-object/from16 v21, v2

    move-object v2, v14

    move-wide/from16 v0, v23

    move/from16 v14, p8

    move-object/from16 v8, p5

    move-object/from16 v23, v7

    move-object/from16 v7, v18

    const/16 v18, 0x1

    move/from16 v15, v25

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "_en"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "_gn"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "_ll"

    array-length v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "_i"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v12, p3

    move-object v14, v2

    move-object v15, v7

    move/from16 v10, v19

    move-object/from16 v2, v21

    move/from16 v9, v26

    move-object/from16 v11, v27

    move-object/from16 v8, p1

    move-wide/from16 v28, v0

    move-object/from16 v1, p0

    move-object/from16 v0, v23

    move-wide/from16 v23, v28

    goto :goto_2af

    :cond_31a
    move-object/from16 v21, v2

    move/from16 v26, v9

    move/from16 v19, v10

    move-object/from16 v27, v11

    move-object v7, v15

    const/16 v18, 0x1

    move-wide/from16 v28, v23

    move-object/from16 v23, v0

    move-wide/from16 v0, v28

    array-length v2, v7

    move/from16 v5, v22

    add-int v22, v5, v2

    goto :goto_345

    :cond_331
    move-object/from16 v21, v2

    move-object/from16 p6, v5

    move/from16 v26, v9

    move/from16 v19, v10

    move-object/from16 v27, v11

    move/from16 v5, v22

    const/16 v18, 0x1

    move-wide/from16 v28, v23

    move-object/from16 v23, v0

    move-wide/from16 v0, v28

    :goto_345
    add-int/lit8 v9, v26, 0x1

    move-object/from16 v8, p1

    move-wide/from16 v12, p3

    move-object/from16 v5, p6

    move-object/from16 v7, p9

    move/from16 v10, v19

    move-object/from16 v2, v21

    move-object/from16 v11, v27

    move-wide/from16 v28, v0

    move-object/from16 v1, p0

    move-object/from16 v0, v23

    move-wide/from16 v23, v28

    goto/16 :goto_293

    :cond_35f
    move-object/from16 p6, v5

    move-object v8, v15

    move/from16 v5, v22

    move-wide/from16 v0, v23

    const/16 v18, 0x1

    if-eqz v5, :cond_372

    invoke-virtual {v3, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_epc"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_372
    const/4 v0, 0x0

    :goto_373
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_40a

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v0, :cond_383

    const/4 v10, 0x1

    goto :goto_384

    :cond_383
    const/4 v10, 0x0

    :goto_384
    if-eqz v10, :cond_38c

    const-string v2, "_ep"

    move-object/from16 v8, p1

    move-object v3, v2

    goto :goto_38f

    :cond_38c
    move-object/from16 v8, p1

    move-object v3, v6

    :goto_38f
    move-object/from16 v9, v20

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_39e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_39e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Logging event (FE)"

    invoke-virtual {v2, v10, v5, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v5, v1}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Landroid/os/Bundle;)V

    move-object v2, v10

    move-object v11, v4

    const/4 v12, 0x1

    move-object v4, v5

    move-object/from16 v13, p6

    move-object/from16 v5, p1

    move-object/from16 v15, p9

    move-object v14, v6

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v2

    invoke-virtual {v2, v10, v15}, Lcom/google/android/gms/measurement/internal/zzeb;->zzc(Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;)V

    move-object/from16 v10, p0

    if-nez v17, :cond_3fe

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzda;->zzaqz:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3e3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3fe

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzcy;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzcy;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_3e3

    :cond_3fe
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v20, v9

    move-object v4, v11

    move-object/from16 p6, v13

    move-object v6, v14

    const/16 v18, 0x1

    goto/16 :goto_373

    :cond_40a
    move-object/from16 v10, p0

    move-object/from16 v13, p6

    move-object v14, v6

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzle()Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v0

    if-eqz v0, :cond_42a

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v0

    invoke-virtual {v0, v12, v12}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(ZZ)Z

    :cond_42a
    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .registers 15

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzdd;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzdd;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_1c

    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzdj;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/measurement/internal/zzdj;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzah(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzdf;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzdf;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_2e

    :try_start_12
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_1d
    .catchall {:try_start_12 .. :try_end_15} :catchall_2e

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2e

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :catch_1d
    move-exception p1

    :try_start_1e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Interrupted waiting for app instance id"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzkf()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    :goto_14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    goto :goto_14

    :cond_2d
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v7

    :try_start_33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzdm;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzdm;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_94

    const-wide/16 p1, 0x1388

    :try_start_4a
    invoke-virtual {v7, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_94

    goto :goto_5c

    :catch_4e
    move-exception p1

    :try_start_4f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Interrupted waiting for get user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_94

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_70

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Timed out waiting for get user properties"

    goto :goto_14

    :cond_70
    new-instance p2, Labcd/k;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Labcd/k;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object p4, p3, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_93
    return-object p2

    :catchall_94
    move-exception p1

    :try_start_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97
.end method

.method private final zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 26

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Conditional property not sent since collection is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_32
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    iget-object v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v15

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v15 .. v23}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v17
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_88} :catch_ae

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzo;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    move-object/from16 v18, v10

    iget-wide v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v19, v9

    const/4 v0, 0x0

    move v9, v0

    move-object/from16 v10, v18

    move-object v0, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_af

    :catch_ae
    move-exception v0

    :goto_af
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzda;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzda;->zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 23

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/zzfy;->zzf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzdc;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzdc;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 24

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Conditional property not cleared since collection is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_28
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v14, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v17
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_4a} :catch_73

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzo;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-boolean v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v14, 0x0

    move-wide/from16 v18, v12

    iget-wide v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v20, v11

    const/4 v0, 0x0

    move-object v11, v0

    move-wide/from16 v12, v18

    move-object v0, v15

    move-wide/from16 v15, v20

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_74

    :catch_73
    move-exception v0

    :goto_74
    return-void
.end method

.method private final zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzkf()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    :goto_14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :goto_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    goto :goto_14

    :cond_2d
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v6

    :try_start_33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzdk;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzdk;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_f9

    const-wide/16 p2, 0x1388

    :try_start_49
    invoke-virtual {v6, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_f9

    goto :goto_5b

    :catch_4d
    move-exception p2

    :try_start_4e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string v0, "Interrupted waiting for get conditional user properties"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5b
    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_f9

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_72

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Timed out waiting for get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17

    :cond_72
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzo;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->creationTimestamp:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-boolean v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->triggerEventName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->zzagt:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v1, :cond_c2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zziy()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    :cond_c2
    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->triggerTimeout:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->zzagu:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v1, :cond_d8

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_d8

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zziy()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    :cond_d8
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/zzfv;->zzauk:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzo;->timeToLive:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz p3, :cond_f4

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz p3, :cond_f4

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzad;->zziy()Landroid/os/Bundle;

    move-result-object p3

    iput-object p3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_f4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    :cond_f8
    return-object p1

    :catchall_f9
    move-exception p1

    :try_start_fa
    monitor-exit v6
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    goto :goto_fd

    :goto_fc
    throw p1

    :goto_fd
    goto :goto_fc
.end method

.method private final zzj(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzbd;->setMeasurementEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzlc()V

    return-void
.end method

.method private final zzlc()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzarc:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzld()V

    return-void

    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzlg()V

    return-void
.end method


# virtual methods
.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgf()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzda;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgf()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzda;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentScreenClass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzlf()Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentScreenName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzlf()Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzko()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzko()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->j6()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzda;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgf()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzda;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .registers 20

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    if-nez p1, :cond_9

    const-string v0, "app"

    move-object v2, v0

    goto :goto_a

    :cond_9
    move-object v2, p1

    :goto_a
    if-nez p3, :cond_13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    goto :goto_14

    :cond_13
    move-object v6, p3

    :goto_14
    const/4 v0, 0x1

    move-object v11, p0

    if-eqz p5, :cond_26

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzda;->zzaqy:Lcom/google/android/gms/measurement/internal/zzcx;

    if-eqz v1, :cond_26

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcy(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_26

    :cond_23
    const/4 v1, 0x0

    const/4 v8, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v8, 0x1

    :goto_27
    xor-int/lit8 v9, p4, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-wide/from16 v4, p6

    move/from16 v7, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzda;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final resetAnalyticsData(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzalb:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzcp(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdg;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdg;-><init>(Lcom/google/android/gms/measurement/internal/zzda;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    iget-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v1, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_20
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgf()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdq;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzds;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzds;-><init>(Lcom/google/android/gms/measurement/internal/zzda;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdt;-><init>(Lcom/google/android/gms/measurement/internal/zzda;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzcx;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqy:Lcom/google/android/gms/measurement/internal/zzcx;

    if-eq p1, v0, :cond_19

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const-string v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    :cond_19
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqy:Lcom/google/android/gms/measurement/internal/zzcx;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzcy;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqz:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 17

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    move-object v10, p0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzda;->zzaqy:Lcom/google/android/gms/measurement/internal/zzcx;

    if-eqz v0, :cond_15

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_17

    :cond_15
    :goto_15
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_17
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 13

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 15

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkv()Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting user property (FE)"

    invoke-virtual {v0, v2, v1, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfv;

    move-object v3, v0

    move-object v4, p2

    move-wide v5, p4

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzb(Lcom/google/android/gms/measurement/internal/zzfv;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .registers 13

    if-nez p1, :cond_4

    const-string p1, "app"

    :cond_4
    move-object v1, p1

    const/16 p1, 0x18

    const/4 v0, 0x0

    if-eqz p4, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcv(Ljava/lang/String;)I

    move-result p4

    goto :goto_34

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object p4

    const-string v2, "user property"

    invoke-virtual {p4, v2, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_31

    :cond_20
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzcw;->zzaqu:[Ljava/lang/String;

    invoke-virtual {p4, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    const/16 p4, 0xf

    goto :goto_34

    :cond_2b
    invoke-virtual {p4, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_33

    :goto_31
    const/4 p4, 0x6

    goto :goto_34

    :cond_33
    const/4 p4, 0x0

    :goto_34
    const-string v2, "_ev"

    const/4 v3, 0x1

    if-eqz p4, :cond_50

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-static {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_46

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_46
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object p2

    invoke-virtual {p2, p4, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_50
    if-eqz p3, :cond_8e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p4

    if-eqz p4, :cond_7d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-static {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    instance-of p2, p3, Ljava/lang/String;

    if-nez p2, :cond_6b

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_73

    :cond_6b
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_73
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object p2

    invoke-virtual {p2, p4, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_7d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8d

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_8d
    return-void

    :cond_8e
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method public final zzag(J)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzkf()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Cannot retrieve app instance id from analytics worker thread"

    :goto_15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-object p2

    :cond_19
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Cannot retrieve app instance id from main thread"

    goto :goto_15

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide p1

    const-wide/32 v0, 0x1d4c0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zzah(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v3

    sub-long/2addr v3, p1

    if-nez v2, :cond_4d

    cmp-long p1, v3, v0

    if-gez p1, :cond_4d

    sub-long/2addr v0, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zzah(J)Ljava/lang/String;

    move-result-object v2

    :cond_4d
    return-object v2
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzcy;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqz:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method final zzcp(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzarb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdr;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzgc()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzarb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

.method public final zzk(Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfv;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Fetching user attributes (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzkf()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Cannot get all user properties from analytics worker thread"

    :goto_27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Cannot get all user properties from main thread"

    goto :goto_27

    :cond_40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_46
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzde;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzde;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_83

    const-wide/16 v1, 0x1388

    :try_start_56
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_83

    goto :goto_68

    :catch_5a
    move-exception p1

    :try_start_5b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Interrupted waiting for get user properties"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_83

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_82

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Timed out waiting for get user properties"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_82
    return-object p1

    :catchall_83
    move-exception p1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    goto :goto_87

    :goto_86
    throw p1

    :goto_87
    goto :goto_86
.end method

.method public final zzkw()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzaqx:Lcom/google/android/gms/measurement/internal/zzdu;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1b
    return-void
.end method

.method public final zzkx()Ljava/lang/Boolean;
    .registers 7

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string v4, "boolean test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdb;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdb;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzky()Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string v4, "String test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdl;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdl;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzkz()Ljava/lang/Long;
    .registers 7

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string v4, "long test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdn;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final zzla()Ljava/lang/Integer;
    .registers 7

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string v4, "int test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdo;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdo;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzlb()Ljava/lang/Double;
    .registers 7

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string v4, "double test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdp;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdp;-><init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final zzld()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkv()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzld()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzda;->zzarc:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzka()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v2, "_ou"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4a
    return-void
.end method
