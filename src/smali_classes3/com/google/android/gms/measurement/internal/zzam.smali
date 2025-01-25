.class public final Lcom/google/android/gms/measurement/internal/zzam;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private zzafi:Ljava/lang/String;

.field private zzafp:Ljava/lang/String;

.field private zzafs:J

.field private zzafv:Ljava/lang/String;

.field private zzagp:I

.field private zzalk:I

.field private zzall:J

.field private zztr:Ljava/lang/String;

.field private zzts:Ljava/lang/String;

.field private zztt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    return-void
.end method

.method private final zzjc()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_f} :catch_5e

    if-nez v1, :cond_12

    return-object v0

    :cond_12
    :try_start_12
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2c} :catch_4f

    if-nez v2, :cond_2f

    return-object v0

    :cond_2f
    :try_start_2f
    const-string v3, "getFirebaseInstanceId"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_40

    return-object v1

    :catch_40
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjl()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-object v0

    :catch_4f
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjk()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_5f

    :catch_5e
    move-exception v1

    :goto_5f
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final getGmpAppId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafi:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method final zzal()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zztt:Ljava/lang/String;

    return-object v0
.end method

.method final zzbs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzk;
    .registers 31

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgg()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzam;->zzts:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzjd()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzam;->zzafp:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzhh()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzaf()V

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzam;->zzall:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_4d

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zzfy;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzam;->zzall:J

    :cond_4d
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzam;->zzall:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-boolean v12, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanq:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgg()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzam;->zztt:Ljava/lang/String;

    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzq;->zzaz(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_77

    const/4 v1, 0x0

    goto :goto_7b

    :cond_77
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzjc()Ljava/lang/String;

    move-result-object v1

    :goto_7b
    move-object v15, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    move-wide/from16 v16, v10

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzam;->zzafs:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkt()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzje()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzgg()V

    const-string v14, "google_analytics_adid_collection_enabled"

    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzq;->zzar(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v21, 0x1

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a5

    goto :goto_a7

    :cond_a5
    const/4 v1, 0x0

    goto :goto_a8

    :cond_a7
    :goto_a7
    const/4 v1, 0x1

    :goto_a8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzgg()V

    const-string v14, "google_analytics_ssaid_collection_enabled"

    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzq;->zzar(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c6

    goto :goto_c9

    :cond_c6
    const/16 v22, 0x0

    goto :goto_cb

    :cond_c9
    :goto_c9
    const/16 v22, 0x1

    :goto_cb
    new-instance v26, Lcom/google/android/gms/measurement/internal/zzk;

    move-object/from16 v1, v26

    xor-int/lit8 v14, v12, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbd;->zzkb()Z

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzhb()Ljava/lang/String;

    move-result-object v24

    move-wide/from16 v27, v10

    move-wide/from16 v10, v16

    move-object/from16 v12, p1

    move-wide/from16 v16, v27

    move/from16 v21, v25

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/measurement/internal/zzk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    return-object v26
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

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgz()V
    .registers 14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Unknown"

    const-string v4, ""

    const-string v5, "unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v7, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7c

    :cond_2d
    :try_start_2d
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_31} :catch_32

    goto :goto_44

    :catch_32
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v8, "Error retrieving app installer package name. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_44
    if-nez v5, :cond_49

    const-string v5, "manual_install"

    goto :goto_52

    :cond_49
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    move-object v5, v4

    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_7c

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_71

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_70} :catch_7e

    goto :goto_72

    :cond_71
    move-object v1, v3

    :goto_72
    :try_start_72
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_72 .. :try_end_76} :catch_77

    goto :goto_94

    :catch_77
    move-exception v7

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    goto :goto_80

    :cond_7c
    :goto_7c
    move-object v1, v3

    goto :goto_94

    :catch_7e
    move-exception v1

    move-object v1, v3

    :goto_80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v8, "Error retrieving package info. appId, appName"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    :goto_94
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zztt:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafp:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzts:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzalk:I

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzam;->zztr:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzall:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/c;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->Hw()Z

    move-result v7

    if-eqz v7, :cond_b8

    const/4 v7, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v7, 0x0

    :goto_b9
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbw;->zzko()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "am"

    if-nez v8, :cond_d5

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d5

    const/4 v8, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v8, 0x0

    :goto_d6
    or-int/2addr v7, v8

    if-nez v7, :cond_102

    if-nez v1, :cond_e9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v8, "GoogleService failed to initialize (no status)"

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_102

    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->DW()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->FH()Ljava/lang/String;

    move-result-object v1

    const-string v11, "GoogleService failed to initialize, status"

    invoke-virtual {v8, v11, v10, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_102
    :goto_102
    if-eqz v7, :cond_168

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzia()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzhz()Z

    move-result v7

    if-eqz v7, :cond_12c

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkn()Z

    move-result v1

    if-eqz v1, :cond_168

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v3, "Collection disabled with firebase_analytics_collection_deactivated=1"

    :goto_128
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_168

    :cond_12c
    if-eqz v1, :cond_147

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_147

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkn()Z

    move-result v1

    if-eqz v1, :cond_168

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v3, "Collection disabled with firebase_analytics_collection_enabled=0"

    goto :goto_128

    :cond_147
    if-nez v1, :cond_15a

    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->DW()Z

    move-result v1

    if-eqz v1, :cond_15a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v3, "Collection disabled with google_app_measurement_enable=0"

    goto :goto_128

    :cond_15a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v7, "Collection enabled"

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_169

    :cond_168
    :goto_168
    const/4 v3, 0x0

    :goto_169
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafi:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafv:Ljava/lang/String;

    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafs:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzko()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_192

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_192

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzko()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafv:Ljava/lang/String;

    :cond_192
    :try_start_192
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19d

    goto :goto_19e

    :cond_19d
    move-object v4, v1

    :goto_19e
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b7

    new-instance v1, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string v4, "admob_app_id"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafv:Ljava/lang/String;

    :cond_1b7
    if-eqz v3, :cond_1dd

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v3, "App package, google app id"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzam;->zztt:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafi:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1ca
    .catch Ljava/lang/IllegalStateException; {:try_start_192 .. :try_end_1ca} :catch_1cb

    goto :goto_1dd

    :catch_1cb
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1dd
    :goto_1dd
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1ee

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/a;->j6(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzagp:I

    return-void

    :cond_1ee
    iput v2, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzagp:I

    return-void
.end method

.method final zzhb()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzafv:Ljava/lang/String;

    return-object v0
.end method

.method final zzjd()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzalk:I

    return v0
.end method

.method final zzje()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzagp:I

    return v0
.end method
