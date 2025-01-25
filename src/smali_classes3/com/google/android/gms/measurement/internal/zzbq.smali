.class public final Lcom/google/android/gms/measurement/internal/zzbq;
.super Lcom/google/android/gms/measurement/internal/zzfn;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzs;


# static fields
.field private static zzaoi:I = 0xffff

.field private static zzaoj:I = 0x2


# instance fields
.field private final zzaok:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaol:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaom:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaon:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/da;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaoo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaop:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfn;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    new-instance p1, Labcd/k;

    invoke-direct {p1}, Labcd/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaok:Ljava/util/Map;

    new-instance p1, Labcd/k;

    invoke-direct {p1}, Labcd/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaol:Ljava/util/Map;

    new-instance p1, Labcd/k;

    invoke-direct {p1}, Labcd/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaom:Ljava/util/Map;

    new-instance p1, Labcd/k;

    invoke-direct {p1}, Labcd/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaon:Ljava/util/Map;

    new-instance p1, Labcd/k;

    invoke-direct {p1}, Labcd/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaop:Ljava/util/Map;

    new-instance p1, Labcd/k;

    invoke-direct {p1}, Labcd/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaoo:Ljava/util/Map;

    return-void
.end method

.method private final zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/da;
    .registers 7

    if-nez p2, :cond_8

    new-instance p1, Lcom/google/android/gms/internal/measurement/da;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/da;-><init>()V

    return-object p1

    :cond_8
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/measurement/da;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/da;-><init>()V

    :try_start_13
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/da;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Parsed config. version, gmp_app_id"

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Unable to merge remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/da;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/da;-><init>()V

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/da;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/da;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    if-eqz p0, :cond_1d

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    if-eqz p0, :cond_1d

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    if-eqz v3, :cond_1a

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/ea;->Hw:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ea;->v5:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/da;)V
    .registers 12

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    new-instance v1, Labcd/k;

    invoke-direct {v1}, Labcd/k;-><init>()V

    new-instance v2, Labcd/k;

    invoke-direct {v2}, Labcd/k;-><init>()V

    if-eqz p2, :cond_80

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    if-eqz p2, :cond_80

    array-length v3, p2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_80

    aget-object v5, p2, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ca;->Hw:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v6, "EventConfig contained null event name"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_7d

    :cond_31
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ca;->Hw:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzcu;->zzco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3f

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/ca;->Hw:Ljava/lang/String;

    :cond_3f
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ca;->Hw:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ca;->v5:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ca;->Hw:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ca;->Zo:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ca;->VH:Ljava/lang/Integer;

    if-eqz v6, :cond_7d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/google/android/gms/measurement/internal/zzbq;->zzaoj:I

    if-lt v6, v7, :cond_6c

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ca;->VH:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/google/android/gms/measurement/internal/zzbq;->zzaoi:I

    if-le v6, v7, :cond_64

    goto :goto_6c

    :cond_64
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ca;->Hw:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ca;->VH:Ljava/lang/Integer;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_6c
    :goto_6c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ca;->Hw:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ca;->VH:Ljava/lang/Integer;

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    invoke-virtual {v6, v8, v7, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_80
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaol:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaom:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaoo:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzcf(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaon:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzt;->zzbo(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaok:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaol:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaom:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaon:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaop:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaoo:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3b
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbq;->zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/da;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaok:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbq;->zza(Lcom/google/android/gms/internal/measurement/da;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/da;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaon:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaop:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final zza(Ljava/lang/String;[BLjava/lang/String;)Z
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/measurement/internal/zzbq;->zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/da;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_15

    return v3

    :cond_15
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzbq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/da;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbq;->zzaon:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbq;->zzaop:Ljava/util/Map;

    move-object/from16 v5, p3

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbq;->zzaok:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbq;->zza(Lcom/google/android/gms/internal/measurement/da;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzjs()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_38
    if-ge v7, v6, :cond_81

    aget-object v8, v5, v7

    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_40
    if-ge v11, v10, :cond_68

    aget-object v12, v9, v11

    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/X;->v5:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzcu;->zzco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4e

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/X;->v5:Ljava/lang/String;

    :cond_4e
    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/X;->Zo:[Lcom/google/android/gms/internal/measurement/Y;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_52
    if-ge v14, v13, :cond_64

    aget-object v15, v12, v14

    iget-object v3, v15, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzcv;->zzco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    iput-object v3, v15, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    :cond_60
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_52

    :cond_64
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_40

    :cond_68
    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    array-length v8, v3

    const/4 v9, 0x0

    :goto_6c
    if-ge v9, v8, :cond_7d

    aget-object v10, v3, v9

    iget-object v11, v10, Lcom/google/android/gms/internal/measurement/aa;->v5:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzcw;->zzco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7a

    iput-object v11, v10, Lcom/google/android/gms/internal/measurement/aa;->v5:Ljava/lang/String;

    :cond_7a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    :cond_7d
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_38

    :cond_81
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/W;)V

    const/4 v3, 0x0

    :try_start_89
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/da;->j6(Lcom/google/android/gms/internal/measurement/qd;)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_99} :catch_9a

    goto :goto_ae

    :catch_9a
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, p2

    :goto_ae
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "remote_config"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x1

    :try_start_c6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "apps"

    const-string v7, "app_id = ?"

    new-array v8, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_102

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v5, "Failed to update remote config (got 0). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ef
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c6 .. :try_end_ef} :catch_f0

    goto :goto_102

    :catch_f0
    move-exception v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v5, "Error storing remote config. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_102
    :goto_102
    return v4
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method protected final zzcg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/da;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaon:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/da;

    return-object p1
.end method

.method protected final zzch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaop:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final zzci(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaop:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzcj(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaon:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzck(Ljava/lang/String;)J
    .registers 5

    const-string v0, "measurement.account.time_zone_offset_minutes"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    :try_start_c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_11

    return-wide v0

    :catch_11
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Unable to parse timezone offset. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method final zzcl(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "measurement.upload.blacklist_internal"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzcm(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "measurement.upload.blacklist_public"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaok:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_17

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_17
    const/4 p1, 0x0

    return-object p1
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

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzjr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjs()Lcom/google/android/gms/measurement/internal/zzm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjs()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjt()Lcom/google/android/gms/measurement/internal/zzt;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method final zzo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcf(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    return v1

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaol:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_35

    return v0

    :cond_35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3a
    return v0
.end method

.method final zzp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcf(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaom:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_24

    return v0

    :cond_24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_29
    return v0
.end method

.method final zzq(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbq;->zzaf()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbq;->zzcf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->zzaoo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1a

    return v0

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1f
    return v0
.end method
