.class public Lcom/google/android/gms/measurement/internal/zzfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzfo$zza;
    }
.end annotation


# static fields
.field private static volatile zzatg:Lcom/google/android/gms/measurement/internal/zzfo;


# instance fields
.field private final zzada:Lcom/google/android/gms/measurement/internal/zzbw;

.field private zzath:Lcom/google/android/gms/measurement/internal/zzbq;

.field private zzati:Lcom/google/android/gms/measurement/internal/zzaw;

.field private zzatj:Lcom/google/android/gms/measurement/internal/zzt;

.field private zzatk:Lcom/google/android/gms/measurement/internal/zzbb;

.field private zzatl:Lcom/google/android/gms/measurement/internal/zzfk;

.field private zzatm:Lcom/google/android/gms/measurement/internal/zzm;

.field private final zzatn:Lcom/google/android/gms/measurement/internal/zzfu;

.field private zzato:Lcom/google/android/gms/measurement/internal/zzdv;

.field private zzatp:Z

.field private zzatq:Z

.field private zzatr:J

.field private zzats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzatt:I

.field private zzatu:I

.field private zzatv:Z

.field private zzatw:Z

.field private zzatx:Z

.field private zzaty:Ljava/nio/channels/FileLock;

.field private zzatz:Ljava/nio/channels/FileChannel;

.field private zzaua:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzaub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzauc:J

.field private zzvz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzft;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzft;Lcom/google/android/gms/measurement/internal/zzbw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzft;Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzvz:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzft;->zzri:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzauc:J

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzfu;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzq()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatn:Lcom/google/android/gms/measurement/internal/zzfu;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzq()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzati:Lcom/google/android/gms/measurement/internal/zzaw;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbq;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzq()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzath:Lcom/google/android/gms/measurement/internal/zzbq;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfp;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;Lcom/google/android/gms/measurement/internal/zzft;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4d

    :cond_d
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_14
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_34

    const/4 v1, -0x1

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    return v0

    :cond_34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3b} :catch_3c

    goto :goto_4c

    :catch_3c
    move-exception p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4c
    return v0

    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfo;Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzk;
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    const-string v2, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "PackageManager is null, can not log app install information"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-object v4

    :cond_1d
    :try_start_1d
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_21} :catch_22

    goto :goto_37

    :catch_22
    move-exception v0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v5, "Error retrieving installer package name. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_37
    if-nez v0, :cond_3c

    const-string v0, "manual_install"

    goto :goto_46

    :cond_3c
    const-string v5, "com.android.vending"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const-string v0, ""

    :cond_46
    :goto_46
    move-object v8, v0

    :try_start_47
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_64

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_64
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_68} :catch_b9

    goto :goto_6c

    :cond_69
    const/high16 v0, -0x80000000

    move-object v5, v2

    :goto_6c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzbc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    move-wide/from16 v19, p7

    goto :goto_84

    :cond_80
    const-wide/16 v6, 0x0

    move-wide/from16 v19, v6

    :goto_84
    new-instance v26, Lcom/google/android/gms/measurement/internal/zzk;

    move-object/from16 v2, v26

    int-to-long v6, v0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzhh()J

    move-result-wide v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const-wide/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v14, p4

    move/from16 v22, p5

    move/from16 v23, p6

    move-object/from16 v25, p9

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/measurement/internal/zzk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    return-object v26

    :catch_b9
    move-exception v0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v5, "Error retrieving newly installed package info. appId, appName"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzfn;)V
    .registers 3

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->isInitialized()Z

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

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfo;Lcom/google/android/gms/measurement/internal/zzft;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzft;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzft;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzq()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatj:Lcom/google/android/gms/measurement/internal/zzt;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzath:Lcom/google/android/gms/measurement/internal/zzbq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzs;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzq()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatm:Lcom/google/android/gms/measurement/internal/zzm;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzdv;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzq()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzato:Lcom/google/android/gms/measurement/internal/zzdv;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfk;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzq()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatl:Lcom/google/android/gms/measurement/internal/zzfk;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatk:Lcom/google/android/gms/measurement/internal/zzbb;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatt:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatu:I

    if-eq p1, v0, :cond_64

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzvz:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .registers 9

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    const/4 v0, 0x0

    if-eqz p2, :cond_57

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_57

    :cond_d
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_1a
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_45

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_45} :catch_46

    :cond_45
    return p1

    :catch_46
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/ha;Lcom/google/android/gms/internal/measurement/ha;)Z
    .registers 12

    const-string v0, "_e"

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v0, "_sc"

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_1b

    :cond_19
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v2, "_pc"

    invoke-static {p2, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v2

    if-nez v2, :cond_27

    goto :goto_29

    :cond_27
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    :goto_29
    if-eqz v1, :cond_8f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v0, "_et"

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_49

    goto :goto_8d

    :cond_49
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v3

    if-eqz v3, :cond_6b

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-eqz v6, :cond_6b

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_6b

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_fr"

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    :cond_8d
    :goto_8d
    const/4 p1, 0x1

    return p1

    :cond_8f
    const/4 p1, 0x0

    return p1
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/ia;I)[Lcom/google/android/gms/internal/measurement/ia;
    .registers 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Lcom/google/android/gms/internal/measurement/ia;

    if-lez p1, :cond_b

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    if-ge p1, v0, :cond_13

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    return-object v1
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/ia;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/ia;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    const-string v3, "_err"

    if-ge v1, v2, :cond_15

    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lcom/google/android/gms/internal/measurement/ia;

    array-length v4, p0

    invoke-static {p0, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/measurement/ia;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ia;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    new-instance p1, Lcom/google/android/gms/internal/measurement/ia;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ia;-><init>()V

    const-string v0, "_ev"

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    add-int/lit8 p2, v1, -0x2

    aput-object p0, v2, p2

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v2, v1

    return-object v2
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/ia;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_12

    aget-object v1, p0, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_13

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 v0, -0x1

    :goto_13
    if-gez v0, :cond_16

    return-object p0

    :cond_16
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza([Lcom/google/android/gms/internal/measurement/ia;I)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object p0

    return-object p0
.end method

.method private final zzaf()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzig()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzig()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v2

    :cond_4a
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzaiy:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzaiz:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "config/app/"

    if-eqz v4, :cond_73

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_78

    :cond_73
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_78
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "app_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzhh()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_a3
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/da;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbq;->zzch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_e6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e6

    new-instance v1, Labcd/k;

    invoke-direct {v1}, Labcd/k;-><init>()V

    const-string v3, "If-Modified-Since"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e7

    :cond_e6
    const/4 v1, 0x0

    :goto_e7
    move-object v6, v1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatv:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlt()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaf()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzba;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzay;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzbr;->zzd(Ljava/lang/Runnable;)V
    :try_end_112
    .catch Ljava/net/MalformedURLException; {:try_start_a3 .. :try_end_112} :catch_113

    return-void

    :catch_113
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .registers 10

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_58

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_51} :catch_5d

    if-eqz p1, :cond_58

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_58
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_5d
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzcr(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzk;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    const/4 v1, 0x0

    if-eqz v15, :cond_80

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_80

    :cond_1a
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_36
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_3a
    new-instance v25, Lcom/google/android/gms/measurement/internal/zzk;

    move-object/from16 v1, v25

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v5

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v8

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhv()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v21

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhx()Z

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/measurement/internal/zzk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    return-object v25

    :cond_80
    :goto_80
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "No app data available; dropping"

    goto :goto_36
.end method

.method private final zzd(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_sno"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zze(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    :cond_27
    iget-boolean v0, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    if-nez v0, :cond_2f

    invoke-direct {v1, v3}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v0, v15, v7}, Lcom/google/android/gms/measurement/internal/zzbq;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v14, "_err"

    const/4 v13, 0x0

    const/16 v22, 0x1

    if-eqz v0, :cond_d9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropping blacklisted event. appId"

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_73
    const/4 v13, 0x1

    :cond_74
    if-nez v13, :cond_8f

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v7

    const/16 v9, 0xb

    const-string v10, "_ev"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v8, v15

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_8f
    if-eqz v13, :cond_d8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhl()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhk()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzajt:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_d8

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Fetching config for blacklisted app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_d8
    return-void

    :cond_d9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzas;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Lcom/google/android/gms/measurement/internal/zzag;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Logging event"

    invoke-virtual {v0, v8, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_ff
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_106
    invoke-direct {v1, v3}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v0, "_iap"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_111
    .catchall {:try_start_106 .. :try_end_111} :catchall_807

    const-string v7, "ecommerce_purchase"

    if-nez v0, :cond_124

    :try_start_115
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    goto :goto_124

    :cond_11e
    move-wide/from16 v23, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto/16 :goto_2af

    :cond_124
    :goto_124
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    const-string v8, "currency"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzad;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_132
    .catchall {:try_start_115 .. :try_end_132} :catchall_807

    const-string v8, "value"

    if-eqz v7, :cond_18e

    :try_start_136
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzad;->zzbr(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v16, 0x412e848000000000L  # 1000000.0

    mul-double v9, v9, v16

    const-wide/16 v18, 0x0

    cmpl-double v7, v9, v18

    if-nez v7, :cond_160

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzad;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_157
    .catchall {:try_start_136 .. :try_end_157} :catchall_807

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v7, v16

    :cond_160
    const-wide/high16 v7, 0x43e0000000000000L  # 9.223372036854776E18

    cmpg-double v12, v9, v7

    if-gtz v12, :cond_171

    const-wide/high16 v7, -0x3c20000000000000L  # -9.223372036854776E18

    cmpl-double v12, v9, v7

    if-ltz v12, :cond_171

    :try_start_16c
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    goto :goto_198

    :cond_171
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v7, "Data lost. Currency value is too big. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v23, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto/16 :goto_29e

    :cond_18e
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzad;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_299

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "[A-Z]{3}"

    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_299

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_1b4
    .catchall {:try_start_16c .. :try_end_1b4} :catchall_807

    const-string v10, "_ltv_"

    if-eqz v9, :cond_1be

    :try_start_1b8
    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1bc
    move-object v10, v0

    goto :goto_1c4

    :cond_1be
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1bc

    :goto_1c4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0, v15, v10}, Lcom/google/android/gms/measurement/internal/zzt;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    if-eqz v0, :cond_1ff

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-nez v9, :cond_1d5

    goto :goto_1ff

    :cond_1d5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzag;->origin:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v18

    add-long v16, v16, v7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v7, v0

    move-object v8, v15

    move-wide/from16 v23, v5

    const/4 v5, 0x2

    move-wide/from16 v11, v18

    const/4 v6, 0x0

    move-object/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_25e

    :cond_1ff
    :goto_1ff
    move-wide/from16 v23, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzai;->zzajy:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v15, v11}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I

    move-result v0

    invoke-static {v15}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V
    :try_end_21c
    .catchall {:try_start_1b8 .. :try_end_21c} :catchall_807

    :try_start_21c
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    aput-object v15, v13, v6

    aput-object v15, v13, v22

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v5

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_234
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21c .. :try_end_234} :catch_235
    .catchall {:try_start_21c .. :try_end_234} :catchall_807

    goto :goto_247

    :catch_235
    move-exception v0

    :try_start_236
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v11, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_247
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzag;->origin:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v0

    move-object v8, v15

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_25e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v7

    if-nez v7, :cond_29d

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v7

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v15

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_29d

    :cond_299
    move-wide/from16 v23, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    :cond_29d
    :goto_29d
    const/4 v13, 0x1

    :goto_29e
    if-nez v13, :cond_2af

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_2a7
    .catchall {:try_start_236 .. :try_end_2a7} :catchall_807

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :cond_2af
    :goto_2af
    :try_start_2af
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzct(Ljava/lang/String;)Z

    move-result v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzly()J

    move-result-wide v8

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move v12, v0

    move/from16 v14, v16

    move-object/from16 v18, v15

    move/from16 v15, v17

    invoke-virtual/range {v7 .. v15}, Lcom/google/android/gms/measurement/internal/zzt;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzu;->zzahi:J

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzai;->zzaje:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_2e1
    .catchall {:try_start_2af .. :try_end_2e1} :catchall_807

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    cmp-long v17, v8, v14

    if-lez v17, :cond_31a

    rem-long/2addr v8, v10

    cmp-long v0, v8, v12

    if-nez v0, :cond_30b

    :try_start_2f2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Data loss. Too many events logged. appId, count"

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v7, Lcom/google/android/gms/measurement/internal/zzu;->zzahi:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_312
    .catchall {:try_start_2f2 .. :try_end_312} :catchall_807

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :cond_31a
    if-eqz v0, :cond_376

    :try_start_31c
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzu;->zzahh:J

    sget-object v17, Lcom/google/android/gms/measurement/internal/zzai;->zzajg:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_32a
    .catchall {:try_start_31c .. :try_end_32a} :catchall_807

    move-object/from16 v17, v7

    int-to-long v6, v5

    sub-long/2addr v8, v6

    cmp-long v5, v8, v14

    if-lez v5, :cond_373

    rem-long/2addr v8, v10

    cmp-long v0, v8, v12

    if-nez v0, :cond_352

    :try_start_337
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Data loss. Too many public events logged. appId, count"

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v17

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzu;->zzahh:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_352
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v7

    const/16 v9, 0x10

    const-string v10, "_ev"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v8, v18

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_36b
    .catchall {:try_start_337 .. :try_end_36b} :catchall_807

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :cond_373
    move-object/from16 v5, v17

    goto :goto_377

    :cond_376
    move-object v5, v7

    :goto_377
    if-eqz v16, :cond_3c7

    :try_start_379
    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzu;->zzahk:J

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzai;->zzajf:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I

    move-result v8

    const v9, 0xf4240

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v11, 0x0

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, v14

    if-lez v8, :cond_3c8

    cmp-long v0, v6, v12

    if-nez v0, :cond_3b8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Too many error events logged. appId, count"

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v5, Lcom/google/android/gms/measurement/internal/zzu;->zzahk:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_3bf
    .catchall {:try_start_379 .. :try_end_3bf} :catchall_807

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :cond_3c7
    const/4 v11, 0x0

    :cond_3c8
    :try_start_3c8
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzad;->zziy()Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    const-string v7, "_o"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzag;->origin:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    move-object/from16 v10, v18

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcz(Ljava/lang/String;)Z

    move-result v6
    :try_end_3e7
    .catchall {:try_start_3c8 .. :try_end_3e7} :catchall_807

    const-string v9, "_r"

    if-eqz v6, :cond_407

    :try_start_3eb
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    const-string v7, "_dbg"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v9, v7}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_407
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzbh(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43c

    const-string v6, "_s"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzt;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v6

    if-eqz v6, :cond_43c

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Long;

    if-eqz v7, :cond_43c

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    invoke-virtual {v7, v5, v4, v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_43c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzt;->zzbn(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v6, v14

    if-lez v4, :cond_45f

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v8, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v8, v12, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45f
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzag;->origin:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzag;->zzaig:J

    const-wide/16 v18, 0x0

    move-object v7, v4

    move-object v2, v9

    move-object v9, v6

    move-object v6, v10

    const/16 v25, 0x0

    move-object v11, v12

    move-wide v12, v14

    move-wide/from16 v14, v18

    move-object/from16 v16, v5

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzab;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzt;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    if-nez v5, :cond_4ec

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzt;->zzbq(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    cmp-long v5, v7, v9

    if-ltz v5, :cond_4d2

    if-eqz v0, :cond_4d2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzab;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v6

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4ca
    .catchall {:try_start_3eb .. :try_end_4ca} :catchall_807

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :cond_4d2
    :try_start_4d2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzab;->name:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/zzab;->timestamp:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v0

    move-object v8, v6

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_4fa

    :cond_4ec
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    invoke-virtual {v4, v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzbw;J)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzab;->timestamp:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zzae(J)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    :goto_4fa
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    new-instance v5, Lcom/google/android/gms/internal/measurement/ka;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/ka;-><init>()V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->Hw:Ljava/lang/Integer;

    const-string v0, "android"

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->we:Ljava/lang/String;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafp:Ljava/lang/String;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->XL:Ljava/lang/String;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->j3:Ljava/lang/String;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    const-wide/32 v8, -0x80000000

    const/4 v0, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_544

    move-object v6, v0

    goto :goto_54b

    :cond_544
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_54b
    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->nw:Ljava/lang/Integer;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzade:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->Mr:Ljava/lang/Long;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->BT:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->ef:Ljava/lang/String;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafq:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_567

    move-object v6, v0

    goto :goto_56d

    :cond_567
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafq:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_56d
    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->er:Ljava/lang/Long;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzai;->zzale:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v6

    if-eqz v6, :cond_589

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmi()[I

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->vJ:[I

    :cond_589
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzbd;->zzbz(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_5b2

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5b2

    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzaft:Z

    if-eqz v7, :cond_60f

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/google/android/gms/internal/measurement/ka;->a8:Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->lg:Ljava/lang/Boolean;

    goto :goto_60f

    :cond_5b2
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zzl(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_60f

    iget-boolean v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafu:Z

    if-eqz v6, :cond_60f

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5f2

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v6

    const-string v7, "null secure ID. appId"

    iget-object v10, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5ef
    .catchall {:try_start_4d2 .. :try_end_5ef} :catchall_807

    const-string v6, "null"

    goto :goto_60d

    :cond_5f2
    :try_start_5f2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_60d

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v10, "empty secure ID. appId"

    iget-object v11, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_60d
    :goto_60d
    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->ro:Ljava/lang/String;

    :cond_60f
    :goto_60f
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->J8:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->J0:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zziw()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->QX:Ljava/lang/Integer;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zzix()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->Ws:Ljava/lang/String;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->U2:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->VH:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->gn:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->sh:Ljava/lang/Long;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_666

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzie()Z

    move-result v6

    if-eqz v6, :cond_666

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->cb:Ljava/lang/String;

    :cond_666
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-nez v0, :cond_6d4

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafk:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzan(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzak(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzbd;->zzca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(J)V

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->setAppVersion(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafp:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzao(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzade:J

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafq:J

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    iget-boolean v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->setMeasurementEnabled(Z)V

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzk;->zzafs:J

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_6d4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->rN:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/ka;->ei:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zzbl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/na;

    iput-object v3, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    const/4 v13, 0x0

    :goto_6f3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_72c

    new-instance v3, Lcom/google/android/gms/internal/measurement/na;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/na;-><init>()V

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    aput-object v3, v6, v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    iput-object v6, v3, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzfx;->zzauk:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lcom/google/android/gms/internal/measurement/na;->Hw:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/na;Ljava/lang/Object;)V
    :try_end_729
    .catchall {:try_start_5f2 .. :try_end_729} :catchall_807

    add-int/lit8 v13, v13, 0x1

    goto :goto_6f3

    :cond_72c
    :try_start_72c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/internal/measurement/ka;)J

    move-result-wide v5
    :try_end_734
    .catch Ljava/io/IOException; {:try_start_72c .. :try_end_734} :catch_798
    .catchall {:try_start_72c .. :try_end_734} :catchall_807

    :try_start_734
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzab;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v3, :cond_78e

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzab;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzad;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_742
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_755

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_742

    goto :goto_78c

    :cond_755
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzab;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/measurement/internal/zzbq;->zzp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzly()J

    move-result-wide v11

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/measurement/internal/zzt;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v3

    if-eqz v2, :cond_78e

    iget-wide v2, v3, Lcom/google/android/gms/measurement/internal/zzu;->zzahl:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzq;->zzaq(Ljava/lang/String;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v2, v10

    if-gez v7, :cond_78e

    :goto_78c
    const/4 v13, 0x1

    goto :goto_78f

    :cond_78e
    const/4 v13, 0x0

    :goto_78f
    invoke-virtual {v0, v4, v5, v6, v13}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzab;JZ)Z

    move-result v0

    if-eqz v0, :cond_7ae

    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzatr:J

    goto :goto_7ae

    :catch_798
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7ae
    :goto_7ae
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_7db

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Event recorded"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Lcom/google/android/gms/measurement/internal/zzab;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7db
    .catchall {:try_start_734 .. :try_end_7db} :catchall_807

    :cond_7db
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v23

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_807
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    goto :goto_811

    :goto_810
    throw v0

    :goto_811
    goto :goto_810
.end method

.method private final zzd(Ljava/lang/String;J)Z
    .registers 46

    move-object/from16 v1, p0

    const-string v2, "_dbg"

    const-string v3, "_lte"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_d
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/zzfo$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;Lcom/google/android/gms/measurement/internal/zzfp;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v6

    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzauc:J

    invoke-static {v4}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_d8a

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2f} :catch_23b
    .catchall {:try_start_27 .. :try_end_2f} :catchall_235

    const-string v17, ""

    if-eqz v16, :cond_9a

    cmp-long v16, v7, v10

    if-eqz v16, :cond_4b

    :try_start_37
    new-array v9, v12, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v9, v13

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v9, v14
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_45} :catch_46
    .catchall {:try_start_37 .. :try_end_45} :catchall_22c

    goto :goto_53

    :catch_46
    move-exception v0

    move-object v7, v0

    move-object v9, v5

    goto/16 :goto_23f

    :cond_4b
    :try_start_4b
    new-array v9, v14, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v9, v13
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_53} :catch_23b
    .catchall {:try_start_4b .. :try_end_53} :catchall_235

    :goto_53
    cmp-long v16, v7, v10

    if-eqz v16, :cond_59

    const-string v17, "rowid <= ? and "

    :cond_59
    move-object/from16 p2, v17

    :try_start_5b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/lit16 v5, v5, 0x94

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_7d} :catch_23b
    .catchall {:try_start_5b .. :try_end_7d} :catchall_235

    :try_start_7d
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_81} :catch_231
    .catchall {:try_start_7d .. :try_end_81} :catchall_22c

    if-nez v9, :cond_8a

    if-eqz v5, :cond_254

    :goto_85
    :try_start_85
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_d8a

    goto/16 :goto_254

    :cond_8a
    :try_start_8a
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8a .. :try_end_8e} :catch_231
    .catchall {:try_start_8a .. :try_end_8e} :catchall_22c

    :try_start_8e
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_95
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8e .. :try_end_95} :catch_96
    .catchall {:try_start_8e .. :try_end_95} :catchall_22c

    goto :goto_e9

    :catch_96
    move-exception v0

    move-object v7, v0

    goto/16 :goto_23f

    :cond_9a
    cmp-long v5, v7, v10

    if-eqz v5, :cond_ab

    const/4 v5, 0x2

    :try_start_9f
    new-array v9, v5, [Ljava/lang/String;
    :try_end_a1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f .. :try_end_a1} :catch_23b
    .catchall {:try_start_9f .. :try_end_a1} :catchall_235

    const/4 v5, 0x0

    aput-object v5, v9, v13

    :try_start_a4
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v14

    goto :goto_b0

    :cond_ab
    new-array v9, v14, [Ljava/lang/String;
    :try_end_ad
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a4 .. :try_end_ad} :catch_23b
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_235

    const/4 v5, 0x0

    aput-object v5, v9, v13

    :goto_b0
    cmp-long v5, v7, v10

    if-eqz v5, :cond_b6

    const-string v17, " and rowid <= ?"

    :cond_b6
    move-object/from16 v5, v17

    :try_start_b8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x54

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " order by rowid limit 1;"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_d8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b8 .. :try_end_d8} :catch_23b
    .catchall {:try_start_b8 .. :try_end_d8} :catchall_235

    :try_start_d8
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_e1

    if-eqz v5, :cond_254

    goto :goto_85

    :cond_e1
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_e8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d8 .. :try_end_e8} :catch_231
    .catchall {:try_start_d8 .. :try_end_e8} :catchall_22c

    const/4 v9, 0x0

    :goto_e9
    :try_start_e9
    const-string v16, "raw_events_metadata"

    new-array v10, v14, [Ljava/lang/String;

    const-string v11, "metadata"

    aput-object v11, v10, v13

    const-string v18, "app_id = ? and metadata_fingerprint = ?"

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    aput-object v9, v14, v13

    const/4 v11, 0x1

    aput-object v12, v14, v11

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "rowid"

    const-string v23, "2"

    move-object v11, v15

    move-object v15, v11

    move-object/from16 v17, v10

    move-object/from16 v19, v14

    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_128

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v8, "Raw event metadata record is missing. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v5, :cond_254

    goto/16 :goto_85

    :cond_128
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    array-length v14, v10

    invoke-static {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object v10

    new-instance v14, Lcom/google/android/gms/internal/measurement/ka;

    invoke-direct {v14}, Lcom/google/android/gms/internal/measurement/ka;-><init>()V
    :try_end_136
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e9 .. :try_end_136} :catch_96
    .catchall {:try_start_e9 .. :try_end_136} :catchall_22c

    :try_start_136
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/measurement/ka;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_215
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_136 .. :try_end_139} :catch_96
    .catchall {:try_start_136 .. :try_end_139} :catchall_22c

    :try_start_139
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_150

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v10

    const-string v15, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v15, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_150
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-interface {v4, v14}, Lcom/google/android/gms/measurement/internal/zzv;->zzb(Lcom/google/android/gms/internal/measurement/ka;)V

    const-wide/16 v13, -0x1

    cmp-long v10, v7, v13

    if-eqz v10, :cond_173

    const/4 v10, 0x3

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v13, v10

    const/4 v10, 0x1

    aput-object v12, v13, v10

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v13, v8
    :try_end_16c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_139 .. :try_end_16c} :catch_96
    .catchall {:try_start_139 .. :try_end_16c} :catchall_22c

    const-string v7, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    goto :goto_182

    :cond_173
    const/4 v7, 0x2

    :try_start_174
    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v9, v8, v7

    const/4 v7, 0x1

    aput-object v12, v8, v7
    :try_end_17c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_174 .. :try_end_17c} :catch_96
    .catchall {:try_start_174 .. :try_end_17c} :catchall_22c

    const-string v7, "app_id = ? and metadata_fingerprint = ?"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    :goto_182
    :try_start_182
    const-string v16, "raw_events"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "rowid"

    const/4 v10, 0x0

    aput-object v8, v7, v10

    const-string v8, "name"

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "timestamp"

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-string v8, "data"

    const/4 v10, 0x3

    aput-object v8, v7, v10

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "rowid"

    const/16 v23, 0x0

    move-object v15, v11

    move-object/from16 v17, v7

    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1c5

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v8, "Raw event data disappeared while in transaction. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v5, :cond_254

    goto/16 :goto_85

    :cond_1c5
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    array-length v8, v12

    invoke-static {v12, v7, v8}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object v8

    new-instance v7, Lcom/google/android/gms/internal/measurement/ha;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/ha;-><init>()V
    :try_end_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_182 .. :try_end_1d9} :catch_96
    .catchall {:try_start_182 .. :try_end_1d9} :catchall_22c

    :try_start_1d9
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/ha;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1dc} :catch_1f8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d9 .. :try_end_1dc} :catch_96
    .catchall {:try_start_1d9 .. :try_end_1dc} :catchall_22c

    const/4 v8, 0x1

    :try_start_1dd
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-interface {v4, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzv;->zza(JLcom/google/android/gms/internal/measurement/ha;)Z

    move-result v7

    if-nez v7, :cond_20b

    if-eqz v5, :cond_254

    goto/16 :goto_85

    :catch_1f8
    move-exception v0

    move-object v7, v0

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v8

    const-string v10, "Data loss. Failed to merge raw event. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1c5

    if-eqz v5, :cond_254

    goto/16 :goto_85

    :catch_215
    move-exception v0

    move-object v7, v0

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v8

    const-string v10, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_228
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1dd .. :try_end_228} :catch_96
    .catchall {:try_start_1dd .. :try_end_228} :catchall_22c

    if-eqz v5, :cond_254

    goto/16 :goto_85

    :catchall_22c
    move-exception v0

    move-object v2, v0

    move-object v6, v1

    goto/16 :goto_d82

    :catch_231
    move-exception v0

    move-object v7, v0

    :goto_233
    const/4 v9, 0x0

    goto :goto_23f

    :catchall_235
    move-exception v0

    move-object v2, v0

    move-object v6, v1

    const/4 v5, 0x0

    goto/16 :goto_d82

    :catch_23b
    move-exception v0

    move-object v7, v0

    const/4 v5, 0x0

    goto :goto_233

    :goto_23f
    :try_start_23f
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v6

    const-string v8, "Data loss. Error selecting raw event. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_250
    .catchall {:try_start_23f .. :try_end_250} :catchall_d7f

    if-eqz v5, :cond_254

    goto/16 :goto_85

    :cond_254
    :goto_254
    :try_start_254
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaui:Ljava/util/List;

    if-eqz v5, :cond_263

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaui:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_261

    goto :goto_263

    :cond_261
    const/4 v5, 0x0

    goto :goto_264

    :cond_263
    :goto_263
    const/4 v5, 0x1

    :goto_264
    if-nez v5, :cond_d6e

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaui:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/ha;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzau(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzai;->zzala:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    :goto_295
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaui:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_29b
    .catchall {:try_start_254 .. :try_end_29b} :catchall_d8a

    const-string v9, "_fr"

    move/from16 v17, v14

    const-string v14, "_et"

    move-object/from16 v18, v2

    const-string v2, "_e"

    const-wide/16 v19, 0x1

    if-ge v12, v8, :cond_73e

    :try_start_2a9
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaui:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ha;

    move-object/from16 v21, v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v3

    move/from16 v22, v12

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    move/from16 v23, v13

    iget-object v13, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/measurement/internal/zzbq;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2c5
    .catchall {:try_start_2a9 .. :try_end_2c5} :catchall_d8a

    const-string v12, "_err"

    if-eqz v3, :cond_33d

    :try_start_2c9
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Dropping blacklisted raw event. appId"

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v3, v9, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30b

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_309

    goto :goto_30b

    :cond_309
    const/4 v2, 0x0

    goto :goto_30c

    :cond_30b
    :goto_30b
    const/4 v2, 0x1

    :goto_30c
    if-nez v2, :cond_32f

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32f

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v24

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    const/16 v26, 0xb

    const-string v27, "_ev"

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v25, v2

    move-object/from16 v28, v3

    invoke-virtual/range {v24 .. v29}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_32f
    move/from16 v28, v6

    move-wide/from16 v26, v15

    move/from16 v14, v17

    move/from16 v13, v23

    move/from16 v16, v7

    move-object v7, v10

    const/4 v10, 0x3

    goto/16 :goto_72f

    :cond_33d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v3

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v3, v13, v5}, Lcom/google/android/gms/measurement/internal/zzbq;->zzp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_34d
    .catchall {:try_start_2c9 .. :try_end_34d} :catchall_d8a

    const-string v13, "_c"

    if-nez v3, :cond_3a8

    :try_start_351
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-wide/from16 v26, v15

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v15

    move/from16 v16, v7

    const v7, 0x171c4

    if-eq v15, v7, :cond_385

    const v7, 0x17331

    if-eq v15, v7, :cond_37b

    const v7, 0x17333

    if-eq v15, v7, :cond_371

    goto :goto_38f

    :cond_371
    const-string v7, "_ui"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38f

    const/4 v5, 0x1

    goto :goto_390

    :cond_37b
    const-string v7, "_ug"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38f

    const/4 v5, 0x2

    goto :goto_390

    :cond_385
    const-string v7, "_in"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38f

    const/4 v5, 0x0

    goto :goto_390

    :cond_38f
    :goto_38f
    const/4 v5, -0x1

    :goto_390
    if-eqz v5, :cond_39a

    const/4 v7, 0x1

    if-eq v5, v7, :cond_39a

    const/4 v7, 0x2

    if-eq v5, v7, :cond_39a

    const/4 v5, 0x0

    goto :goto_39b

    :cond_39a
    const/4 v5, 0x1

    :goto_39b
    if-eqz v5, :cond_39e

    goto :goto_3ac

    :cond_39e
    move/from16 v28, v6

    move-object/from16 v30, v10

    move-object/from16 v29, v14

    :cond_3a4
    :goto_3a4
    move/from16 v14, v17

    goto/16 :goto_58a

    :cond_3a8
    move-wide/from16 v26, v15

    move/from16 v16, v7

    :goto_3ac
    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    if-nez v5, :cond_3b5

    const/4 v5, 0x0

    new-array v7, v5, [Lcom/google/android/gms/internal/measurement/ia;

    iput-object v7, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    :cond_3b5
    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v7, v5
    :try_end_3b8
    .catchall {:try_start_351 .. :try_end_3b8} :catchall_d8a

    move/from16 v28, v6

    move-object/from16 v30, v10

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v29, 0x0

    :goto_3c0
    const-string v10, "_r"

    if-ge v6, v7, :cond_3f1

    move/from16 v31, v7

    aget-object v7, v5, v6

    move-object/from16 v32, v5

    :try_start_3ca
    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3da

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    const/4 v15, 0x1

    goto :goto_3ea

    :cond_3da
    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3ea

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    const/16 v29, 0x1

    :cond_3ea
    :goto_3ea
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v31

    move-object/from16 v5, v32

    goto :goto_3c0

    :cond_3f1
    if-nez v15, :cond_431

    if-eqz v3, :cond_431

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v6, "Marking event as conversion"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    iget-object v15, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v7, v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    iget-object v6, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/measurement/ia;

    new-instance v6, Lcom/google/android/gms/internal/measurement/ia;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/ia;-><init>()V

    iput-object v13, v6, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    array-length v7, v5

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    aput-object v6, v5, v7

    iput-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    :cond_431
    if-nez v29, :cond_46f

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v6, "Marking event as real-time"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    iget-object v15, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v7, v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    iget-object v6, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/measurement/ia;

    new-instance v6, Lcom/google/android/gms/internal/measurement/ia;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/ia;-><init>()V

    iput-object v10, v6, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    array-length v7, v5

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    aput-object v6, v5, v7

    iput-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    :cond_46f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v31

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzly()J

    move-result-wide v32

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    move-object/from16 v34, v5

    invoke-virtual/range {v31 .. v39}, Lcom/google/android/gms/measurement/internal/zzt;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzu;->zzahl:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v15, v15, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v7, v15}, Lcom/google/android/gms/measurement/internal/zzq;->zzaq(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v29, v14

    int-to-long v14, v7

    cmp-long v7, v5, v14

    if-lez v7, :cond_4d3

    const/4 v5, 0x0

    :goto_4a3
    iget-object v6, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v6, v6

    if-ge v5, v6, :cond_4d5

    iget-object v6, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d0

    iget-object v6, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    new-array v7, v6, [Lcom/google/android/gms/internal/measurement/ia;

    if-lez v5, :cond_4c3

    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    const/4 v14, 0x0

    invoke-static {v10, v14, v7, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4c3
    if-ge v5, v6, :cond_4cd

    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    add-int/lit8 v14, v5, 0x1

    sub-int/2addr v6, v5

    invoke-static {v10, v14, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4cd
    iput-object v7, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    goto :goto_4d5

    :cond_4d0
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a3

    :cond_4d3
    const/16 v17, 0x1

    :cond_4d5
    :goto_4d5
    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zzct(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a4

    if-eqz v3, :cond_3a4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v31

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzly()J

    move-result-wide v32

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v34, v5

    invoke-virtual/range {v31 .. v39}, Lcom/google/android/gms/measurement/internal/zzt;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzu;->zzahj:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzai;->zzajh:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v7, v10, v14}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I

    move-result v7

    int-to-long v14, v7

    cmp-long v7, v5, v14

    if-lez v7, :cond_3a4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v6, "Too many conversions. Not logging as conversion. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v6, v5
    :try_end_52c
    .catchall {:try_start_3ca .. :try_end_52c} :catchall_d8a

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_52f
    if-ge v14, v6, :cond_54d

    aget-object v15, v5, v14

    move-object/from16 v19, v5

    :try_start_535
    iget-object v5, v15, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53f

    move-object v7, v15

    goto :goto_548

    :cond_53f
    iget-object v5, v15, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_548

    const/4 v10, 0x1

    :cond_548
    :goto_548
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v19

    goto :goto_52f

    :cond_54d
    if-eqz v10, :cond_563

    if-eqz v7, :cond_563

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    const/4 v6, 0x1

    new-array v10, v6, [Lcom/google/android/gms/internal/measurement/ia;

    const/4 v6, 0x0

    aput-object v7, v10, v6

    invoke-static {v5, v10}, Lcom/google/android/gms/common/util/b;->j6([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/measurement/ia;

    iput-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    goto/16 :goto_3a4

    :cond_563
    if-eqz v7, :cond_571

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    goto/16 :goto_3a4

    :cond_571
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v6, "Did not find conversion parameter. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3a4

    :goto_58a
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzbd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_643

    if-eqz v3, :cond_643

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_5a1
    array-length v10, v3
    :try_end_5a2
    .catchall {:try_start_535 .. :try_end_5a2} :catchall_d8a

    const-string v12, "currency"

    const-string v15, "value"

    if-ge v5, v10, :cond_5c2

    :try_start_5a8
    aget-object v10, v3, v5

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5b4

    move v6, v5

    goto :goto_5bf

    :cond_5b4
    aget-object v10, v3, v5

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5bf

    move v7, v5

    :cond_5bf
    :goto_5bf
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a1

    :cond_5c2
    const/4 v5, -0x1

    if-eq v6, v5, :cond_63f

    aget-object v5, v3, v6

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-nez v5, :cond_5ef

    aget-object v5, v3, v6

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    if-nez v5, :cond_5ef

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjl()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v7, "Value must be specified with a numeric type."

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zza([Lcom/google/android/gms/internal/measurement/ia;I)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/google/android/gms/measurement/internal/zzfo;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v3

    const/16 v5, 0x12

    invoke-static {v3, v5, v15}, Lcom/google/android/gms/measurement/internal/zzfo;->zza([Lcom/google/android/gms/internal/measurement/ia;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v3

    goto :goto_63f

    :cond_5ef
    const/4 v5, -0x1

    if-ne v7, v5, :cond_5f5

    const/4 v5, 0x1

    const/4 v10, 0x3

    goto :goto_61f

    :cond_5f5
    aget-object v5, v3, v7

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    if-eqz v5, :cond_61d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x3

    if-eq v7, v10, :cond_603

    goto :goto_61e

    :cond_603
    const/4 v7, 0x0

    :goto_604
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_61b

    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetter(I)Z

    move-result v17

    if-nez v17, :cond_615

    goto :goto_61e

    :cond_615
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_604

    :cond_61b
    const/4 v5, 0x0

    goto :goto_61f

    :cond_61d
    const/4 v10, 0x3

    :goto_61e
    const/4 v5, 0x1

    :goto_61f
    if-eqz v5, :cond_640

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjl()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v7, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zza([Lcom/google/android/gms/internal/measurement/ia;I)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/google/android/gms/measurement/internal/zzfo;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v3

    const/16 v5, 0x13

    invoke-static {v3, v5, v12}, Lcom/google/android/gms/measurement/internal/zzfo;->zza([Lcom/google/android/gms/internal/measurement/ia;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v3

    goto :goto_640

    :cond_63f
    :goto_63f
    const/4 v10, 0x3

    :cond_640
    :goto_640
    iput-object v3, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    goto :goto_644

    :cond_643
    const/4 v10, 0x3

    :goto_644
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzai;->zzakz:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v3

    if-eqz v3, :cond_6cd

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v5, 0x3e8

    if-eqz v3, :cond_68e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v3

    if-nez v3, :cond_6cd

    if-eqz v11, :cond_68a

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v12, v12, v19

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v3, v12, v5

    if-gtz v3, :cond_68a

    invoke-direct {v1, v8, v11}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/internal/measurement/ha;Lcom/google/android/gms/internal/measurement/ha;)Z

    move-result v3

    if-eqz v3, :cond_68a

    move-object/from16 v3, v29

    goto :goto_6c3

    :cond_68a
    move-object v7, v8

    move-object/from16 v3, v29

    goto :goto_6d0

    :cond_68e
    const-string v3, "_vs"

    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6cd

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-object/from16 v3, v29

    invoke-static {v8, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    if-nez v7, :cond_6ca

    if-eqz v30, :cond_6c6

    move-object/from16 v7, v30

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v11, v11, v19

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v9, v11, v5

    if-gtz v9, :cond_6c8

    invoke-direct {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/internal/measurement/ha;Lcom/google/android/gms/internal/measurement/ha;)Z

    move-result v5

    if-eqz v5, :cond_6c8

    :goto_6c3
    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_6d0

    :cond_6c6
    move-object/from16 v7, v30

    :cond_6c8
    move-object v11, v8

    goto :goto_6d0

    :cond_6ca
    :goto_6ca
    move-object/from16 v7, v30

    goto :goto_6d0

    :cond_6cd
    move-object/from16 v3, v29

    goto :goto_6ca

    :goto_6d0
    if-eqz v28, :cond_727

    if-nez v16, :cond_727

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_727

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    if-eqz v2, :cond_712

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v2, v2

    if-nez v2, :cond_6e6

    goto :goto_712

    :cond_6e6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v8, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_709

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Engagement event does not include duration. appId"

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    :goto_705
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_727

    :cond_709
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v2, v26, v2

    move-wide/from16 v26, v2

    goto :goto_727

    :cond_712
    :goto_712
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Engagement event does not contain any parameters. appId"

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_705

    :cond_727
    :goto_727
    move-object/from16 v5, v24

    iget-object v2, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;
    :try_end_72b
    .catchall {:try_start_5a8 .. :try_end_72b} :catchall_d8a

    add-int/lit8 v13, v23, 0x1

    aput-object v8, v2, v23

    :goto_72f
    add-int/lit8 v12, v22, 0x1

    move-object v10, v7

    move/from16 v7, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-wide/from16 v15, v26

    move/from16 v6, v28

    goto/16 :goto_295

    :cond_73e
    move-object/from16 v21, v3

    move/from16 v28, v6

    move/from16 v23, v13

    move-object v3, v14

    move-wide/from16 v26, v15

    move/from16 v16, v7

    if-eqz v16, :cond_798

    move-wide/from16 v15, v26

    const/4 v6, 0x0

    :goto_74e
    if-ge v6, v13, :cond_79a

    :try_start_750
    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    aget-object v7, v7, v6

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_777

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v7, v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v8

    if-eqz v8, :cond_777

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    add-int/lit8 v8, v6, 0x1

    iget-object v10, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    sub-int v11, v13, v6

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v10, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_795

    :cond_777
    if-eqz v28, :cond_795

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v7, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    if-eqz v7, :cond_795

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-eqz v7, :cond_795

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v22, 0x0

    cmp-long v8, v10, v22

    if-lez v8, :cond_795

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v15, v7

    :cond_795
    :goto_795
    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_74e

    :cond_798
    move-wide/from16 v15, v26

    :cond_79a
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaui:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_7ac

    iget-object v2, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    invoke-static {v2, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/ha;

    iput-object v2, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    :cond_7ac
    if-eqz v28, :cond_875

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    move-object/from16 v6, v21

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzt;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v2

    if-eqz v2, :cond_7e5

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    if-nez v3, :cond_7c1

    goto :goto_7e5

    :cond_7c1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    const-string v9, "auto"

    const-string v10, "_lte"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v11

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_802

    :cond_7e5
    :goto_7e5
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v2, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    const-string v26, "auto"

    const-string v27, "_lte"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v28

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v24, v3

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v30}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_802
    new-instance v2, Lcom/google/android/gms/internal/measurement/na;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/na;-><init>()V

    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lcom/google/android/gms/internal/measurement/na;->Hw:Ljava/lang/Long;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iput-object v7, v2, Lcom/google/android/gms/internal/measurement/na;->VH:Ljava/lang/Long;

    const/4 v7, 0x0

    :goto_820
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    array-length v8, v8

    if-ge v7, v8, :cond_83a

    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_837

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    aput-object v2, v6, v7

    const/4 v6, 0x1

    goto :goto_83b

    :cond_837
    add-int/lit8 v7, v7, 0x1

    goto :goto_820

    :cond_83a
    const/4 v6, 0x0

    :goto_83b
    if-nez v6, :cond_857

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/measurement/na;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v2, v6, v7

    :cond_857
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-lez v2, :cond_875

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzfx;)Z

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v6, "Updated lifetime engagement user property with value. Value"

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_875
    iget-object v2, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjs()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v7

    invoke-virtual {v7, v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/ha;[Lcom/google/android/gms/internal/measurement/na;)[Lcom/google/android/gms/internal/measurement/fa;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/measurement/ka;->P8:[Lcom/google/android/gms/internal/measurement/fa;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzat(Ljava/lang/String;)Z

    move-result v2
    :try_end_896
    .catchall {:try_start_750 .. :try_end_896} :catchall_d8a

    if-eqz v2, :cond_ba8

    :try_start_898
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/ha;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmk()Ljava/security/SecureRandom;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    array-length v8, v7
    :try_end_8af
    .catchall {:try_start_898 .. :try_end_8af} :catchall_d69

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8b1
    if-ge v9, v8, :cond_b77

    aget-object v11, v7, v9

    :try_start_8b5
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    const-string v13, "_ep"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_8bd
    .catchall {:try_start_8b5 .. :try_end_8bd} :catchall_d69

    const-string v13, "_efs"

    const-string v14, "_sr"

    if-eqz v12, :cond_92e

    :try_start_8c3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v12, "_en"

    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzac;

    if-nez v15, :cond_8e8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v15

    move-object/from16 v16, v7

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v15, v7, v12}, Lcom/google/android/gms/measurement/internal/zzt;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v15

    invoke-interface {v2, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8ea

    :cond_8e8
    move-object/from16 v16, v7

    :goto_8ea
    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    if-nez v7, :cond_924

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v7, v21, v19

    if-lez v7, :cond_905

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    iget-object v12, v15, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    invoke-static {v7, v14, v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    iput-object v7, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    :cond_905
    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    if-eqz v7, :cond_920

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_920

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v13, v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    iput-object v7, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;
    :try_end_920
    .catchall {:try_start_8c3 .. :try_end_920} :catchall_d8a

    :cond_920
    aput-object v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    :cond_924
    move-object/from16 v24, v5

    move-object/from16 v23, v6

    move/from16 v21, v8

    move/from16 v22, v9

    goto/16 :goto_ab2

    :cond_92e
    move-object/from16 v16, v7

    :try_start_930
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v7

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    move v15, v8

    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzbq;->zzck(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    move-object/from16 p1, v13

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(JJ)J

    move-result-wide v12

    move/from16 v21, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22
    :try_end_958
    .catchall {:try_start_930 .. :try_end_958} :catchall_d69

    if-nez v22, :cond_9a8

    if-nez v15, :cond_95d

    goto :goto_9a8

    :cond_95d
    move-object/from16 v24, v5

    :try_start_95f
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    move/from16 v22, v9

    array-length v9, v5
    :try_end_964
    .catchall {:try_start_95f .. :try_end_964} :catchall_d8a

    move-wide/from16 v25, v7

    const/4 v7, 0x0

    :goto_967
    if-ge v7, v9, :cond_9ae

    aget-object v8, v5, v7

    move-object/from16 v23, v5

    :try_start_96d
    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    move/from16 v27, v9

    move-object/from16 v9, v18

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99f

    instance-of v5, v15, Ljava/lang/Long;

    if-eqz v5, :cond_985

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    invoke-virtual {v15, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99d

    :cond_985
    instance-of v5, v15, Ljava/lang/String;

    if-eqz v5, :cond_991

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99d

    :cond_991
    instance-of v5, v15, Ljava/lang/Double;

    if-eqz v5, :cond_9b0

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    invoke-virtual {v15, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b0

    :cond_99d
    const/4 v5, 0x1

    goto :goto_9b1

    :cond_99f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v18, v9

    move-object/from16 v5, v23

    move/from16 v9, v27

    goto :goto_967

    :cond_9a8
    :goto_9a8
    move-object/from16 v24, v5

    move-wide/from16 v25, v7

    move/from16 v22, v9

    :cond_9ae
    move-object/from16 v9, v18

    :cond_9b0
    const/4 v5, 0x0

    :goto_9b1
    if-nez v5, :cond_9c2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v5

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzbq;->zzq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_9c3

    :cond_9c2
    const/4 v5, 0x1

    :goto_9c3
    if-gtz v5, :cond_9e4

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v8, "Sample rate must be positive. event, rate"

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v8, v12, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9da
    .catchall {:try_start_96d .. :try_end_9da} :catchall_d8a

    aput-object v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v23, v6

    move-object/from16 v18, v9

    goto/16 :goto_ab2

    :cond_9e4
    :try_start_9e4
    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzac;
    :try_end_9ec
    .catchall {:try_start_9e4 .. :try_end_9ec} :catchall_d69

    if-nez v7, :cond_a3b

    :try_start_9ee
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v7, v8, v15}, Lcom/google/android/gms/measurement/internal/zzt;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    if-nez v7, :cond_a3b

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v8, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v15, v15, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    move-object/from16 v18, v9

    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v7, v8, v15, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    invoke-direct/range {v27 .. v41}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_a3a
    .catchall {:try_start_9ee .. :try_end_a3a} :catchall_d8a

    goto :goto_a3d

    :cond_a3b
    move-object/from16 v18, v9

    :goto_a3d
    :try_start_a3d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v8, "_eid"

    invoke-static {v11, v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_a4c

    const/4 v9, 0x1

    goto :goto_a4d

    :cond_a4c
    const/4 v9, 0x0

    :goto_a4d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_a51
    .catchall {:try_start_a3d .. :try_end_a51} :catchall_d69

    const/4 v15, 0x1

    if-ne v5, v15, :cond_a77

    aput-object v11, v3, v10

    :try_start_a56
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a72

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    if-nez v5, :cond_a68

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    if-nez v5, :cond_a68

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    if-eqz v5, :cond_a72

    :cond_a68
    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a72
    .catchall {:try_start_a56 .. :try_end_a72} :catchall_d8a

    :cond_a72
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v23, v6

    goto :goto_ab2

    :cond_a77
    :try_start_a77
    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15
    :try_end_a7b
    .catchall {:try_start_a77 .. :try_end_a7b} :catchall_d69

    if-nez v15, :cond_ab5

    :try_start_a7d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    move-object v15, v6

    int-to-long v5, v5

    move-object/from16 v23, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v8, v14, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v8

    iput-object v8, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;
    :try_end_a90
    .catchall {:try_start_a7d .. :try_end_a90} :catchall_d8a

    aput-object v11, v3, v10

    :try_start_a92
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_aa1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v5, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    :cond_aa1
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab0
    .catchall {:try_start_a92 .. :try_end_ab0} :catchall_d8a

    add-int/lit8 v10, v10, 0x1

    :goto_ab2
    move-object v5, v2

    goto/16 :goto_b68

    :cond_ab5
    move-object/from16 v23, v6

    :try_start_ab7
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v15, v15, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/measurement/internal/zzq;->zzbf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_af0

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;
    :try_end_ac9
    .catchall {:try_start_ab7 .. :try_end_ac9} :catchall_d69

    if-eqz v6, :cond_ad6

    :try_start_acb
    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v25
    :try_end_ad1
    .catchall {:try_start_acb .. :try_end_ad1} :catchall_d8a

    move-object v15, v2

    move-object v6, v8

    move-object/from16 v27, v9

    goto :goto_aeb

    :cond_ad6
    :try_start_ad6
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    move-object v15, v2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v6, v8

    move-object/from16 v27, v9

    move-wide/from16 v8, v25

    invoke-static {v1, v2, v8, v9}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(JJ)J

    move-result-wide v25

    :goto_aeb
    cmp-long v1, v25, v12

    if-eqz v1, :cond_b0a

    goto :goto_b08

    :cond_af0
    move-object v15, v2

    move-object v6, v8

    move-object/from16 v27, v9

    iget-wide v1, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v8, 0x5265c00

    cmp-long v25, v1, v8

    if-ltz v25, :cond_b0a

    :goto_b08
    const/4 v1, 0x1

    goto :goto_b0b

    :cond_b0a
    const/4 v1, 0x0

    :goto_b0b
    if-eqz v1, :cond_b57

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v6, p1

    invoke-static {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;
    :try_end_b2e
    .catchall {:try_start_ad6 .. :try_end_b2e} :catchall_d69

    aput-object v11, v3, v10

    :try_start_b30
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b44

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    :cond_b44
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    move-object v5, v15

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_b68

    :cond_b57
    move-object v5, v15

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b68

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v7, v6, v2, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b68
    :goto_b68
    add-int/lit8 v9, v22, 0x1

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v7, v16

    move/from16 v8, v21

    move-object/from16 v6, v23

    move-object/from16 v5, v24

    goto/16 :goto_8b1

    :cond_b77
    move-object v1, v5

    move-object v5, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    array-length v2, v2

    if-ge v10, v2, :cond_b86

    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/ha;

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    :cond_b86
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ba9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    goto :goto_b8e

    :cond_ba8
    move-object v1, v5

    :cond_ba9
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/ka;->gn:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_bbd
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    array-length v3, v3

    if-ge v2, v3, :cond_bf1

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    aget-object v3, v3, v2

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/ka;->gn:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_bda

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    iput-object v5, v1, Lcom/google/android/gms/internal/measurement/ka;->gn:Ljava/lang/Long;

    :cond_bda
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_bee

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    :cond_bee
    add-int/lit8 v2, v2, 0x1

    goto :goto_bbd

    :cond_bf1
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3
    :try_end_bfd
    .catchall {:try_start_b30 .. :try_end_bfd} :catchall_d69

    move-object/from16 v6, p0

    if-nez v3, :cond_c19

    :try_start_c01
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c75

    :cond_c19
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    array-length v5, v5

    if-lez v5, :cond_c75

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhe()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_c2d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_c2e

    :cond_c2d
    const/4 v5, 0x0

    :goto_c2e
    iput-object v5, v1, Lcom/google/android/gms/internal/measurement/ka;->EQ:Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_c3b

    goto :goto_c3c

    :cond_c3b
    move-wide v7, v9

    :goto_c3c
    cmp-long v5, v7, v11

    if-eqz v5, :cond_c45

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_c46

    :cond_c45
    const/4 v5, 0x0

    :goto_c46
    iput-object v5, v1, Lcom/google/android/gms/internal/measurement/ka;->tp:Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhm()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhj()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/measurement/ka;->yS:Ljava/lang/Integer;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/ka;->gn:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(J)V

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhu()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/measurement/ka;->gW:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_c75
    :goto_c75
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    array-length v3, v3

    if-lez v3, :cond_cc8

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v3

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/da;

    move-result-object v3

    if-eqz v3, :cond_c97

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-nez v5, :cond_c92

    goto :goto_c97

    :cond_c92
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    :goto_c94
    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/ka;->cn:Ljava/lang/Long;

    goto :goto_cbf

    :cond_c97
    :goto_c97
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ka;->BT:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ca8

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_c94

    :cond_ca8
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzaug:Lcom/google/android/gms/internal/measurement/ka;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_cbf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v3

    move/from16 v14, v17

    invoke-virtual {v3, v1, v14}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/internal/measurement/ka;Z)Z

    :cond_cc8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzfo$zza;->zzauh:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_cdf
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_cfc

    if-eqz v5, :cond_cec

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cec
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_cdf

    :cond_cfc
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v7, "raw_events"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_d2f

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v5, "Deleted fewer rows from raw events table than expected"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_d37
    .catchall {:try_start_c01 .. :try_end_d37} :catchall_d88

    :try_start_d37
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d37 .. :try_end_d45} :catch_d46
    .catchall {:try_start_d37 .. :try_end_d45} :catchall_d88

    goto :goto_d59

    :catch_d46
    move-exception v0

    move-object v3, v0

    :try_start_d48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_d60
    .catchall {:try_start_d48 .. :try_end_d60} :catchall_d88

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    const/4 v1, 0x1

    return v1

    :catchall_d69
    move-exception v0

    move-object/from16 v6, p0

    :goto_d6c
    move-object v1, v0

    goto :goto_d8d

    :cond_d6e
    move-object v6, v1

    :try_start_d6f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_d76
    .catchall {:try_start_d6f .. :try_end_d76} :catchall_d88

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    const/4 v1, 0x0

    return v1

    :catchall_d7f
    move-exception v0

    move-object v6, v1

    move-object v2, v0

    :goto_d82
    if-eqz v5, :cond_d87

    :try_start_d84
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_d87
    throw v2
    :try_end_d88
    .catchall {:try_start_d84 .. :try_end_d88} :catchall_d88

    :catchall_d88
    move-exception v0

    goto :goto_d6c

    :catchall_d8a
    move-exception v0

    move-object v6, v1

    goto :goto_d6c

    :goto_d8d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    goto :goto_d96

    :goto_d95
    throw v1

    :goto_d96
    goto :goto_d95
.end method

.method private final zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->zzca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_41

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    goto :goto_5b

    :cond_41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj(Ljava/lang/String;)V

    :goto_5b
    const/4 v1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_70

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_70
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_82
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafk:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafk:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzan(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_9c
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzade:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b2

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzade:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    const/4 v1, 0x1

    :cond_b2
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_cc

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cc

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->setAppVersion(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_cc
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_dc

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    const/4 v1, 0x1

    :cond_dc
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafp:Ljava/lang/String;

    if-eqz v3, :cond_f0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzao(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_f0
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafq:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_100

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafq:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    const/4 v1, 0x1

    :cond_100
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_10e

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->setMeasurementEnabled(Z)V

    const/4 v1, 0x1

    :cond_10e
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzagm:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_128

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzagm:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzht()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_128

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzagm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_128
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafs:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhv()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_138

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafs:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(J)V

    const/4 v1, 0x1

    :cond_138
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzaft:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v4

    if-eq v3, v4, :cond_146

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzaft:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Z)V

    const/4 v1, 0x1

    :cond_146
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafu:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhx()Z

    move-result v4

    if-eq v3, v4, :cond_154

    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafu:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Z)V

    goto :goto_155

    :cond_154
    move v2, v1

    :goto_155
    if-eqz v2, :cond_15e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_15e
    return-object v0
.end method

.method private final zzls()Lcom/google/android/gms/measurement/internal/zzbq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzath:Lcom/google/android/gms/measurement/internal/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzfn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzath:Lcom/google/android/gms/measurement/internal/zzbq;

    return-object v0
.end method

.method private final zzlu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatk:Lcom/google/android/gms/measurement/internal/zzbb;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzlv()Lcom/google/android/gms/measurement/internal/zzfk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatl:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzfn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatl:Lcom/google/android/gms/measurement/internal/zzfk;

    return-object v0
.end method

.method private final zzly()J
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzane:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3a

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmk()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzane:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_3a
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzma()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzim()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzih()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    return v0

    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method private final zzmb()V
    .registers 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmf()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzald:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_62

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatr:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_60

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlv()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->cancel()V

    return-void

    :cond_60
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatr:J

    :cond_62
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkv()Z

    move-result v1

    if-eqz v1, :cond_24b

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzma()Z

    move-result v1

    if-nez v1, :cond_72

    goto/16 :goto_24b

    :cond_72
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzaju:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzt;->zzin()Z

    move-result v7

    if-nez v7, :cond_a3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzt;->zzii()Z

    move-result v7

    if-eqz v7, :cond_a1

    goto :goto_a3

    :cond_a1
    const/4 v7, 0x0

    goto :goto_a4

    :cond_a3
    :goto_a3
    const/4 v7, 0x1

    :goto_a4
    if-eqz v7, :cond_c4

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzq;->zzid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c1

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c1

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzai;->zzajp:Lcom/google/android/gms/measurement/internal/zzai$zza;

    goto :goto_c6

    :cond_c1
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzai;->zzajo:Lcom/google/android/gms/measurement/internal/zzai$zza;

    goto :goto_c6

    :cond_c4
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzai;->zzajn:Lcom/google/android/gms/measurement/internal/zzai$zza;

    :goto_c6
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzbd;->zzanb:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzt;->zzik()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v10

    move-wide/from16 v18, v5

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzt;->zzil()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v8, v5, v3

    if-nez v8, :cond_10a

    goto/16 :goto_17f

    :cond_10a
    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v1, v10

    sub-long/2addr v1, v8

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v8, v5, v18

    if-eqz v7, :cond_131

    cmp-long v7, v1, v3

    if-lez v7, :cond_131

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long v7, v7, v16

    move-wide v8, v7

    :cond_131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v7

    move-wide/from16 v12, v16

    invoke-virtual {v7, v1, v2, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(JJ)Z

    move-result v7

    if-nez v7, :cond_13f

    add-long v8, v1, v12

    :cond_13f
    cmp-long v1, v10, v3

    if-eqz v1, :cond_180

    cmp-long v1, v10, v5

    if-ltz v1, :cond_180

    const/4 v1, 0x0

    :goto_148
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzajw:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v6, 0x14

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_17f

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzajv:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v1

    mul-long v6, v6, v12

    add-long/2addr v8, v6

    cmp-long v2, v8, v10

    if-lez v2, :cond_17c

    goto :goto_180

    :cond_17c
    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    :cond_17f
    :goto_17f
    move-wide v8, v3

    :cond_180
    :goto_180
    cmp-long v1, v8, v3

    if-nez v1, :cond_1a2

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlv()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->cancel()V

    return-void

    :cond_1a2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlt()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzfb()Z

    move-result v1

    if-nez v1, :cond_1ca

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->zzey()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlv()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->cancel()V

    return-void

    :cond_1ca
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanc:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzajl:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(JJ)Z

    move-result v7

    if-nez v7, :cond_1f5

    add-long/2addr v1, v5

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_1f5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->unregister()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_230

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzajq:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_230
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlv()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzfk;->zzh(J)V

    return-void

    :cond_24b
    :goto_24b
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlv()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->cancel()V

    return-void
.end method

.method private final zzmc()V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatv:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatw:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatx:Z

    if-eqz v0, :cond_10

    goto :goto_3e

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzats:Ljava/util/List;

    if-nez v0, :cond_24

    return-void

    :cond_24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_28

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatv:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatw:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatx:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzmd()Z
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "google_app_measurement.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_14
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatz:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaty:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_49} :catch_58
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_49} :catch_4a

    goto :goto_68

    :catch_4a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_65

    :catch_58
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_65
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_68
    const/4 v0, 0x0

    return v0
.end method

.method private final zzmf()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatp:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static zzn(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzfo;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatg:Lcom/google/android/gms/measurement/internal/zzfo;

    if-nez v0, :cond_2a

    const-class v0, Lcom/google/android/gms/measurement/internal/zzfo;

    monitor-enter v0

    :try_start_11
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatg:Lcom/google/android/gms/measurement/internal/zzfo;

    if-nez v0, :cond_21

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzft;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatg:Lcom/google/android/gms/measurement/internal/zzfo;

    :cond_21
    const-class p0, Lcom/google/android/gms/measurement/internal/zzfo;

    monitor-exit p0

    goto :goto_2a

    :catchall_25
    move-exception p0

    const-class v0, Lcom/google/android/gms/measurement/internal/zzfo;

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_25

    throw p0

    :cond_2a
    :goto_2a
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatg:Lcom/google/android/gms/measurement/internal/zzfo;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final start()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzij()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_37
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V

    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .registers 15

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    const/4 v0, 0x0

    if-nez p3, :cond_b

    :try_start_9
    new-array p3, v0, [B

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaua:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaua:Ljava/util/List;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_187

    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-eq p1, v3, :cond_19

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_122

    :cond_19
    if-nez p2, :cond_122

    :try_start_1b
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanb:Lcom/google/android/gms/measurement/internal/zzbg;

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p4, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_5f} :catch_f0
    .catchall {:try_start_1b .. :try_end_5f} :catchall_187

    :try_start_5f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_e7

    :try_start_6f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p4
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_81} :catch_ab
    .catchall {:try_start_6f .. :try_end_81} :catchall_e7

    :try_start_81
    const-string v1, "queue"

    const-string v3, "rowid=?"

    new-array v9, v4, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v0

    invoke-virtual {p4, v1, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    if-ne p4, v4, :cond_94

    goto :goto_63

    :cond_94
    new-instance p4, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Deleted fewer rows from queue than expected"

    invoke-direct {p4, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_81 .. :try_end_9c} :catch_9c
    .catchall {:try_start_81 .. :try_end_9c} :catchall_e7

    :catch_9c
    move-exception p4

    :try_start_9d
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string v1, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v1, p4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    throw p4
    :try_end_ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_ab} :catch_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_e7

    :catch_ab
    move-exception p3

    :try_start_ac
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaub:Ljava/util/List;

    if-eqz p4, :cond_b7

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b7

    goto :goto_63

    :cond_b7
    throw p3

    :cond_b8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_bf
    .catchall {:try_start_ac .. :try_end_bf} :catchall_e7

    :try_start_bf
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaub:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlt()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzfb()Z

    move-result p1

    if-eqz p1, :cond_dc

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzma()Z

    move-result p1

    if-eqz p1, :cond_dc

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlz()V

    goto :goto_e3

    :cond_dc
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzauc:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V

    :goto_e3
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatr:J

    goto/16 :goto_181

    :catchall_e7
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    throw p1
    :try_end_f0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_f0} :catch_f0
    .catchall {:try_start_bf .. :try_end_f0} :catchall_187

    :catch_f0
    move-exception p1

    :try_start_f1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatr:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatr:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_181

    :cond_122
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanb:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_154

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_153

    goto :goto_154

    :cond_153
    const/4 v4, 0x0

    :cond_154
    :goto_154
    if-eqz v4, :cond_16b

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanc:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_16b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzq;->zzaw(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzc(Ljava/util/List;)V

    :cond_17e
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V
    :try_end_181
    .catchall {:try_start_f1 .. :try_end_181} :catchall_187

    :goto_181
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatw:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmc()V

    return-void

    :catchall_187
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatw:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmc()V

    goto :goto_18f

    :goto_18e
    throw p1

    :goto_18f
    goto :goto_18e
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzfn;)V
    .registers 2

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatt:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 15

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    if-nez v0, :cond_1f

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcv(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    if-eqz v4, :cond_55

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    :goto_47
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_55
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_97

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_88

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_7e

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_88

    :cond_7e
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_89

    :cond_88
    const/4 v11, 0x0

    :goto_89
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_97
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_aa

    return-void

    :cond_aa
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_108

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    const-string v2, "_sno"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_108

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    if-eqz v0, :cond_db

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_db

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_101

    :cond_db
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    const-string v2, "_s"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    if-eqz v0, :cond_ff

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Backfill the session number. Last used session number"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_101

    :cond_ff
    const-wide/16 v0, 0x0

    :goto_101
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_108
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfv;->origin:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzfv;->zzauk:J

    move-object v1, v8

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting user property"

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_139
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V

    if-eqz p1, :cond_16b

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "User property set"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_198

    :cond_16b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_198
    .catchall {:try_start_139 .. :try_end_198} :catchall_1a0

    :goto_198
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :catchall_1a0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 13

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    :cond_30
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    if-nez v0, :cond_38

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_38
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Lcom/google/android/gms/measurement/internal/zzo;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zzj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    if-eqz v1, :cond_82

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    if-eqz v1, :cond_bb

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    if-eqz v2, :cond_bb

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->creationTimestamp:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->creationTimestamp:J

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->triggerTimeout:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->triggerTimeout:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->triggerEventName:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->triggerEventName:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->zzagu:Lcom/google/android/gms/measurement/internal/zzag;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzagu:Lcom/google/android/gms/measurement/internal/zzag;

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzfv;->zzauk:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfv;->origin:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    goto :goto_de

    :cond_bb
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->triggerEventName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_de

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzo;->creationTimestamp:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfv;->origin:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    :cond_de
    :goto_de
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    if-eqz v1, :cond_153

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzfv;->zzauk:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    :goto_11c
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_141

    :cond_120
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    goto :goto_11c

    :goto_141
    if-eqz p1, :cond_153

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzagu:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz p1, :cond_153

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzagu:Lcom/google/android/gms/measurement/internal/zzag;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->creationTimestamp:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Lcom/google/android/gms/measurement/internal/zzag;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    :cond_153
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result p1

    if-eqz p1, :cond_183

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_17f
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1aa

    :cond_183
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_17f

    :goto_1aa
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_1b1
    .catchall {:try_start_47 .. :try_end_1b1} :catchall_1b9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :catchall_1b9
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    goto :goto_1c3

    :goto_1c2
    throw p1

    :goto_1c3
    goto :goto_1c2
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_e

    :try_start_c
    new-array p4, v0, [B

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_182

    :try_start_29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_3e

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_3e

    if-ne p2, v3, :cond_42

    :cond_3e
    if-nez p3, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    if-nez v1, :cond_5a

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16d

    :cond_5a
    const/16 v5, 0x194

    if-nez v2, :cond_ca

    if-ne p2, v5, :cond_61

    goto :goto_ca

    :cond_61
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzv(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzci(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanb:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_ae

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v4, 0x0

    :cond_ae
    :goto_ae
    if-eqz v4, :cond_c5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanc:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_c5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V

    goto/16 :goto_16d

    :cond_ca
    :goto_ca
    const/4 p3, 0x0

    if-eqz p5, :cond_d6

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_d7

    :cond_d6
    move-object p5, p3

    :goto_d7
    if-eqz p5, :cond_e6

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e6

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_e7

    :cond_e6
    move-object p5, p3

    :goto_e7
    if-eq p2, v5, :cond_103

    if-ne p2, v3, :cond_ec

    goto :goto_103

    :cond_ec
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzbq;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_f4
    .catchall {:try_start_29 .. :try_end_f4} :catchall_179

    if-nez p3, :cond_11c

    :try_start_f6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    :goto_fa
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_182

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatv:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmc()V

    return-void

    :cond_103
    :goto_103
    :try_start_103
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/da;

    move-result-object p5

    if-nez p5, :cond_11c

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzbq;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_115
    .catchall {:try_start_103 .. :try_end_115} :catchall_179

    if-nez p3, :cond_11c

    :try_start_117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_182

    goto :goto_fa

    :cond_11c
    :try_start_11c
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    if-ne p2, v5, :cond_142

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjl()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15a

    :cond_142
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_15a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlt()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzfb()Z

    move-result p1

    if-eqz p1, :cond_c5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzma()Z

    move-result p1

    if-eqz p1, :cond_c5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlz()V

    :goto_16d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_174
    .catchall {:try_start_11c .. :try_end_174} :catchall_179

    :try_start_174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    goto :goto_fa

    :catchall_179
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    throw p1
    :try_end_182
    .catchall {:try_start_174 .. :try_end_182} :catchall_182

    :catchall_182
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatv:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmc()V

    goto :goto_18a

    :goto_189
    throw p1

    :goto_18a
    goto :goto_189
.end method

.method public final zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzag;->zzaig:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zze(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)Z

    move-result v4

    if-nez v4, :cond_23

    return-void

    :cond_23
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    if-nez v4, :cond_2b

    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_62

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_72

    :cond_62
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_72
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_76
    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzo;

    if-eqz v8, :cond_76

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v14

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v10, v15, v13, v14}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzo;->zzagt:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v9, :cond_b7

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzo;->zzagt:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Lcom/google/android/gms/measurement/internal/zzag;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    :cond_b7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/measurement/internal/zzt;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_76

    :cond_c5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_f0

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_102

    :cond_f0
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_102
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10f
    :goto_10f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_163

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzo;

    if-eqz v9, :cond_10f

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v15

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lcom/google/android/gms/measurement/internal/zzt;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v5, :cond_156

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_10f

    :cond_163
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_168
    if-ge v10, v4, :cond_17b

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v9, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Lcom/google/android/gms/measurement/internal/zzag;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    goto :goto_168

    :cond_17b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_1b4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    goto :goto_1ca

    :cond_1b4
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_1ca
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d7
    :goto_1d7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_264

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzo;

    if-eqz v15, :cond_1d7

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v4

    if-eqz v4, :cond_226

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    :goto_222
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_247

    :cond_226
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    goto :goto_222

    :goto_247
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzo;->zzagu:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v4, :cond_250

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzo;->zzagu:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_250
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Z

    const/4 v13, 0x0

    goto/16 :goto_1d7

    :cond_264
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_26c
    if-ge v13, v0, :cond_27f

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Lcom/google/android/gms/measurement/internal/zzag;J)V

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    goto :goto_26c

    :cond_27f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_286
    .catchall {:try_start_32 .. :try_end_286} :catchall_28e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :catchall_28e
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    goto :goto_298

    :goto_297
    throw v0

    :goto_298
    goto :goto_297
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    if-nez v0, :cond_1f

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_41
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_41 .. :try_end_71} :catchall_79

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :catchall_79
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 14

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    :cond_2b
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    if-nez v0, :cond_33

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_3a
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zzj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    if-eqz v0, :cond_bb

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v1, :cond_de

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_9d

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzag;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zziy()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_9e

    :cond_9d
    const/4 v1, 0x0

    :goto_9e
    move-object v5, v1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzag;->zzaig:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    goto :goto_de

    :cond_bb
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_de
    :goto_de
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_e5
    .catchall {:try_start_3a .. :try_end_e5} :catchall_ed

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :catchall_ed
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    throw p1
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    if-eqz v15, :cond_a9

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto/16 :goto_a9

    :cond_1c
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_40

    const-string v2, "_ui"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzag;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5a

    :cond_40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5a
    :goto_5a
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzk;

    move-object v2, v14

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v9

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v16

    move-object/from16 v26, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v25, v15

    move/from16 v15, v16

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhv()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v22

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhx()Z

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/measurement/internal/zzk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    return-void

    :cond_a9
    :goto_a9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 13

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaua:Ljava/util/List;

    if-eqz v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaub:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaua:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    :try_start_21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_28} :catch_7e

    const/4 v5, 0x0

    aput-object v2, v4, v5

    :try_start_2b
    const-string v6, "apps"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_90

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_7d} :catch_7e

    goto :goto_90

    :catch_7e
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzaft:Z

    iget-boolean v7, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafu:Z

    iget-wide v8, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzago:J

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    if-eqz p1, :cond_be

    :cond_bb
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzf(Lcom/google/android/gms/measurement/internal/zzk;)V

    :cond_be
    return-void
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 3

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzcr(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/measurement/internal/zzk;)V

    :cond_b
    return-void
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    return-void

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_60

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_60

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzls()Lcom/google/android/gms/measurement/internal/zzbq;

    move-result-object v7

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcj(Ljava/lang/String;)V

    :cond_60
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    if-nez v7, :cond_68

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_68
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzago:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_78

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v10

    :cond_78
    iget v7, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzagp:I

    const/4 v14, 0x1

    if-eqz v7, :cond_99

    if-eq v7, v14, :cond_99

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v12, v8, v13, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    :cond_99
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzt;->beginTransaction()V

    :try_start_a0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v8

    if-eqz v8, :cond_15a

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v13

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v13, v9, v15}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15a

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v12, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;
    :try_end_eb
    .catchall {:try_start_a0 .. :try_end_eb} :catchall_448

    :try_start_eb
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/String;
    :try_end_f1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_eb .. :try_end_f1} :catch_147
    .catchall {:try_start_eb .. :try_end_f1} :catchall_448

    const/4 v15, 0x0

    aput-object v8, v13, v15

    :try_start_f4
    const-string v14, "events"

    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string v15, "user_attributes"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_159

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v12, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v8, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_146
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f4 .. :try_end_146} :catch_147
    .catchall {:try_start_f4 .. :try_end_146} :catchall_448

    goto :goto_159

    :catch_147
    move-exception v0

    :try_start_148
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v12, "Error deleting application data. appId, error"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v12, v8, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_159
    :goto_159
    const/4 v8, 0x0

    :cond_15a
    if-eqz v8, :cond_1c9

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v12
    :try_end_160
    .catchall {:try_start_148 .. :try_end_160} :catchall_448

    const-wide/32 v14, -0x80000000

    const-string v0, "_pv"

    cmp-long v9, v12, v14

    if-eqz v9, :cond_196

    :try_start_169
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v12

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    cmp-long v9, v12, v14

    if-eqz v9, :cond_1c9

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v14, v9}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Landroid/os/Bundle;)V

    const-string v13, "_au"

    const-string v15, "auto"

    move-object v12, v0

    const/4 v9, 0x1

    const/4 v8, 0x0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;J)V

    :goto_192
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    goto :goto_1ca

    :cond_196
    const/4 v9, 0x1

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1ca

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1ca

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v14, v12}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Landroid/os/Bundle;)V

    const-string v13, "_au"

    const-string v8, "auto"

    move-object v12, v0

    move-object v15, v8

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;J)V

    goto :goto_192

    :cond_1c9
    const/4 v9, 0x1

    :cond_1ca
    :goto_1ca
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v7, :cond_1dc

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    const-string v12, "_f"

    :goto_1d7
    invoke-virtual {v0, v8, v12}, Lcom/google/android/gms/measurement/internal/zzt;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    goto :goto_1e8

    :cond_1dc
    if-ne v7, v9, :cond_1e7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    const-string v12, "_v"

    goto :goto_1d7

    :cond_1e7
    const/4 v0, 0x0

    :goto_1e8
    if-nez v0, :cond_41c

    const-wide/32 v12, 0x36ee80

    div-long v14, v10, v12
    :try_end_1ef
    .catchall {:try_start_169 .. :try_end_1ef} :catchall_448

    move-wide/from16 v18, v10

    const-wide/16 v9, 0x1

    add-long/2addr v14, v9

    mul-long v14, v14, v12

    const-string v0, "_dac"

    const-string v11, "_r"

    const-string v13, "_c"

    const-string v12, "_et"

    if-nez v7, :cond_379

    :try_start_200
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzfv;

    const-string v16, "_fot"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v20, "auto"

    move-object v14, v12

    move-object v12, v7

    move-object v15, v13

    move-object/from16 v13, v16

    move-object/from16 v21, v14

    move-object v8, v15

    move-wide/from16 v14, v18

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzk;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzq;->zzbe(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23a

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkk()Lcom/google/android/gms/measurement/internal/zzbj;

    move-result-object v7

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzbj;->zzce(Ljava/lang/String;)V

    :cond_23a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v8

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26d

    move-object/from16 v8, v21

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_26f

    :cond_26d
    move-object/from16 v8, v21

    :goto_26f
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzq;->zzba(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_284

    iget-boolean v11, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzagq:Z

    if-eqz v11, :cond_284

    invoke-virtual {v7, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_284
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_2a7

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a5
    .catchall {:try_start_200 .. :try_end_2a5} :catchall_448

    goto/16 :goto_345

    :cond_2a7
    :try_start_2a7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;
    :try_end_2b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a7 .. :try_end_2b3} :catch_2bb
    .catchall {:try_start_2a7 .. :try_end_2b3} :catchall_448

    const/4 v14, 0x0

    :try_start_2b4
    invoke-virtual {v0, v11, v14}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b4 .. :try_end_2b8} :catch_2b9
    .catchall {:try_start_2b4 .. :try_end_2b8} :catchall_448

    goto :goto_2d3

    :catch_2b9
    move-exception v0

    goto :goto_2bd

    :catch_2bb
    move-exception v0

    const/4 v14, 0x0

    :goto_2bd
    :try_start_2bd
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v11

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2d3
    if-eqz v0, :cond_308

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v11, v15

    if-eqz v13, :cond_308

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v14

    if-eqz v0, :cond_2ea

    invoke-virtual {v7, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v15, 0x0

    goto :goto_2eb

    :cond_2ea
    const/4 v15, 0x1

    :goto_2eb
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfv;

    if-eqz v15, :cond_2f1

    move-wide v11, v9

    goto :goto_2f3

    :cond_2f1
    const-wide/16 v11, 0x0

    :goto_2f3
    const-string v13, "_fi"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v17, "auto"

    move-object v12, v0

    const/4 v11, 0x0

    move-wide/from16 v14, v18

    move-object/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzk;)V
    :try_end_307
    .catchall {:try_start_2bd .. :try_end_307} :catchall_448

    goto :goto_309

    :cond_308
    const/4 v11, 0x0

    :goto_309
    :try_start_309
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_319
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_309 .. :try_end_319} :catch_31a
    .catchall {:try_start_309 .. :try_end_319} :catchall_448

    goto :goto_331

    :catch_31a
    move-exception v0

    :try_start_31b
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v6

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_331
    if-eqz v0, :cond_345

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    and-int/2addr v6, v11

    if-eqz v6, :cond_33c

    invoke-virtual {v7, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_33c
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_345

    invoke-virtual {v7, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_345
    :goto_345
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const-string v4, "first_open_count"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzt;->zzn(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-ltz v0, :cond_363

    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_363
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v14, v7}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Landroid/os/Bundle;)V

    const-string v13, "_f"

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    move-object v3, v8

    goto :goto_3dc

    :cond_379
    move-object v3, v12

    move-object v8, v13

    const/4 v4, 0x1

    if-ne v7, v4, :cond_3dc

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfv;

    const-string v13, "_fvt"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v4

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v4, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b3

    invoke-virtual {v4, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3b3
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzba(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c8

    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzagq:Z

    if-eqz v5, :cond_3c8

    invoke-virtual {v4, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3c8
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v14, v4}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Landroid/os/Bundle;)V

    const-string v13, "_v"

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    :cond_3dc
    :goto_3dc
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzala:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-nez v0, :cond_439

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_407

    const-string v3, "_fr"

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_407
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Landroid/os/Bundle;)V

    const-string v13, "_e"

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;J)V

    :goto_418
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    goto :goto_439

    :cond_41c
    move-wide/from16 v18, v10

    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzk;->zzagn:Z

    if-eqz v0, :cond_439

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Landroid/os/Bundle;)V

    const-string v13, "_cd"

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;J)V

    goto :goto_418

    :cond_439
    :goto_439
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->setTransactionSuccessful()V
    :try_end_440
    .catchall {:try_start_31b .. :try_end_440} :catchall_448

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    return-void

    :catchall_448
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt;->endTransaction()V

    goto :goto_452

    :goto_451
    throw v0

    :goto_452
    goto :goto_451
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 3

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzcr(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/measurement/internal/zzk;)V

    :cond_b
    return-void
.end method

.method final zzg(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzats:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzats:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final zzgr()Lcom/google/android/gms/measurement/internal/zzfy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    return-object v0
.end method

.method public final zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method final zzh(Lcom/google/android/gms/measurement/internal/zzk;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfs;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;Lcom/google/android/gms/measurement/internal/zzk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_f
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_19} :catch_1e
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_19} :catch_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    goto :goto_1f

    :catch_1c
    move-exception v0

    goto :goto_1f

    :catch_1e
    move-exception v0

    :goto_1f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzjr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatn:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzfn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatn:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object v0
.end method

.method public final zzjs()Lcom/google/android/gms/measurement/internal/zzm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatm:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzfn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatm:Lcom/google/android/gms/measurement/internal/zzm;

    return-object v0
.end method

.method public final zzjt()Lcom/google/android/gms/measurement/internal/zzt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatj:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzfn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatj:Lcom/google/android/gms/measurement/internal/zzt;

    return-object v0
.end method

.method public final zzlt()Lcom/google/android/gms/measurement/internal/zzaw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzati:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzfn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzati:Lcom/google/android/gms/measurement/internal/zzaw;

    return-object v0
.end method

.method public final zzlw()Lcom/google/android/gms/measurement/internal/zzdv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzato:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Lcom/google/android/gms/measurement/internal/zzfn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzato:Lcom/google/android/gms/measurement/internal/zzdv;

    return-object v0
.end method

.method final zzlx()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzvz:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzlz()V
    .registers 18

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzatx:Z

    const/4 v2, 0x0

    :try_start_c
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeb;->zzli()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_32

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    :goto_29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2bb

    :cond_2c
    :goto_2c
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzatx:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmc()V

    return-void

    :cond_32
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    goto :goto_29

    :cond_45
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzatr:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_51

    :goto_4d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V

    goto :goto_2c

    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzaua:Ljava/util/List;

    if-eqz v3, :cond_5a

    const/4 v3, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    if-eqz v3, :cond_6a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    goto :goto_29

    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlt()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzfb()Z

    move-result v3

    if-nez v3, :cond_84

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_4d

    :cond_84
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzic()J

    move-result-wide v7

    sub-long v7, v3, v7

    const/4 v9, 0x0

    invoke-direct {v1, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Ljava/lang/String;J)Z

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_c1

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzt;->zzih()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_297

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzauc:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_e1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzt;->zzio()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzauc:J

    :cond_e1
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzai;->zzaja:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzai;->zzajb:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2c

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/ka;

    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/ka;->a8:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10f

    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/ka;->a8:Ljava/lang/String;

    goto :goto_12b

    :cond_12a
    move-object v7, v9

    :goto_12b
    if-eqz v7, :cond_156

    const/4 v8, 0x0

    :goto_12e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_156

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ka;

    iget-object v11, v10, Lcom/google/android/gms/internal/measurement/ka;->a8:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_153

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ka;->a8:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_153

    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_156

    :cond_153
    add-int/lit8 v8, v8, 0x1

    goto :goto_12e

    :cond_156
    :goto_156
    new-instance v7, Lcom/google/android/gms/internal/measurement/ja;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/ja;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/measurement/ka;

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzie()Z

    move-result v10

    if-eqz v10, :cond_180

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zzas(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_180

    const/4 v10, 0x1

    goto :goto_181

    :cond_180
    const/4 v10, 0x0

    :goto_181
    const/4 v11, 0x0

    :goto_182
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    array-length v12, v12

    if-ge v11, v12, :cond_1da

    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/measurement/ka;

    aput-object v13, v12, v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    aget-object v12, v12, v11

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzq;->zzhh()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/ka;->U2:Ljava/lang/Long;

    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    aget-object v12, v12, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/ka;->VH:Ljava/lang/Long;

    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    aget-object v12, v12, v11

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/ka;->vy:Ljava/lang/Boolean;

    if-nez v10, :cond_1d7

    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    aget-object v12, v12, v11

    iput-object v9, v12, Lcom/google/android/gms/internal/measurement/ka;->cb:Ljava/lang/String;

    :cond_1d7
    add-int/lit8 v11, v11, 0x1

    goto :goto_182

    :cond_1da
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzas;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_1ef

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/internal/measurement/ja;)Ljava/lang/String;

    move-result-object v9

    :cond_1ef
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ja;)[B

    move-result-object v14

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzai;->zzajk:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1ff
    .catchall {:try_start_32 .. :try_end_1ff} :catchall_2bb

    :try_start_1ff
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v0

    invoke-static {v10}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzaua:Ljava/util/List;

    if-eqz v10, :cond_220

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v8

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_227

    :cond_220
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzaua:Ljava/util/List;

    :goto_227
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzbd;->zzanb:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    array-length v3, v3

    if-lez v3, :cond_23e

    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;
    :try_end_23d
    .catch Ljava/net/MalformedURLException; {:try_start_1ff .. :try_end_23d} :catch_281
    .catchall {:try_start_1ff .. :try_end_23d} :catchall_2bb

    goto :goto_240

    :cond_23e
    const-string v3, "?"

    :goto_240
    :try_start_240
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzatw:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlt()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaf()V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzba;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzay;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzbr;->zzd(Ljava/lang/Runnable;)V
    :try_end_27f
    .catch Ljava/net/MalformedURLException; {:try_start_240 .. :try_end_27f} :catch_281
    .catchall {:try_start_240 .. :try_end_27f} :catchall_2bb

    goto/16 :goto_2c

    :catch_281
    move-exception v0

    :try_start_282
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2c

    :cond_297
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzauc:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzic()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzt;->zzad(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_2b9
    .catchall {:try_start_282 .. :try_end_2b9} :catchall_2bb

    goto/16 :goto_2c

    :catchall_2bb
    move-exception v0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzatx:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmc()V

    goto :goto_2c3

    :goto_2c2
    throw v0

    :goto_2c3
    goto :goto_2c2
.end method

.method final zzm(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V

    return-void
.end method

.method final zzme()V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatq:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8e

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatq:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzlx()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzald:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmf()Z

    move-result v0

    if-eqz v0, :cond_8e

    :cond_27
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmd()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatz:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzjd()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaf()V

    if-le v0, v2, :cond_5a

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Panic: can\'t downgrade version. Previous, current version"

    :goto_56
    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8e

    :cond_5a
    if-ge v0, v2, :cond_8e

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatz:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Storage version upgraded. Previous, current version"

    goto :goto_56

    :cond_79
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Storage version upgrade failed. Previous, current version"

    goto :goto_56

    :cond_8e
    :goto_8e
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatp:Z

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzald:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "This instance being marked as an uploader"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatp:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmb()V

    :cond_b4
    return-void
.end method

.method final zzmg()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzatu:I

    return-void
.end method

.method final zzmh()Lcom/google/android/gms/measurement/internal/zzbw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    return-object v0
.end method
