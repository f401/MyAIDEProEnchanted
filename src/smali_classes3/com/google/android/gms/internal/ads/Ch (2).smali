.class public final Lcom/google/android/gms/internal/ads/Ch;
.super Lcom/google/android/gms/internal/ads/Ak;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Qh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private EQ:Ljava/lang/Runnable;

.field private final Hw:Lcom/google/android/gms/internal/ads/Bh;

.field private J0:Lcom/google/android/gms/internal/ads/hl;

.field private J8:Lcom/google/android/gms/internal/ads/zzasm;

.field private final VH:Landroid/content/Context;

.field private Ws:Lcom/google/android/gms/internal/ads/qe;

.field private final Zo:Ljava/lang/Object;

.field private final gn:Lcom/google/android/gms/internal/ads/YF;

.field private tp:Lcom/google/android/gms/internal/ads/zzasi;

.field private final u7:Lcom/google/android/gms/internal/ads/zzur;

.field private final v5:Lcom/google/android/gms/internal/ads/Yh;

.field private we:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/Bh;Lcom/google/android/gms/internal/ads/zzur;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ch;->Hw:Lcom/google/android/gms/internal/ads/Bh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ch;->u7:Lcom/google/android/gms/internal/ads/zzur;

    new-instance p1, Lcom/google/android/gms/internal/ads/YF;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/YF;-><init>(Lcom/google/android/gms/internal/ads/zzur;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    new-instance p3, Lcom/google/android/gms/internal/ads/Dh;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/Dh;-><init>(Lcom/google/android/gms/internal/ads/Ch;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/TG;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/TG;-><init>()V

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget p4, p4, Lcom/google/android/gms/internal/ads/zzbbi;->DW:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p3, Lcom/google/android/gms/internal/ads/TG;->FH:Ljava/lang/Integer;

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget p4, p4, Lcom/google/android/gms/internal/ads/zzbbi;->FH:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p3, Lcom/google/android/gms/internal/ads/TG;->Hw:Ljava/lang/Integer;

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-boolean p4, p4, Lcom/google/android/gms/internal/ads/zzbbi;->Hw:Z

    if-eqz p4, :cond_42

    const/4 p4, 0x0

    goto :goto_43

    :cond_42
    const/4 p4, 0x2

    :goto_43
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p3, Lcom/google/android/gms/internal/ads/TG;->v5:Ljava/lang/Integer;

    new-instance p4, Lcom/google/android/gms/internal/ads/Eh;

    invoke-direct {p4, p3}, Lcom/google/android/gms/internal/ads/Eh;-><init>(Lcom/google/android/gms/internal/ads/TG;)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/Yh;->Zo:Landroid/content/pm/PackageInfo;

    if-eqz p3, :cond_5d

    new-instance p3, Lcom/google/android/gms/internal/ads/Fh;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/Fh;-><init>(Lcom/google/android/gms/internal/ads/Ch;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    :cond_5d
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Yh;->FH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-eqz p3, :cond_73

    const-string p3, "interstitial_mb"

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_73

    sget-object p2, Lcom/google/android/gms/internal/ads/Gh;->j6:Lcom/google/android/gms/internal/ads/ZF;

    :goto_6f
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    goto :goto_92

    :cond_73
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-eqz p3, :cond_84

    const-string p3, "reward_mb"

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_84

    sget-object p2, Lcom/google/android/gms/internal/ads/Hh;->j6:Lcom/google/android/gms/internal/ads/ZF;

    goto :goto_6f

    :cond_84
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzwf;->gn:Z

    if-nez p3, :cond_8f

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-nez p2, :cond_8f

    sget-object p2, Lcom/google/android/gms/internal/ads/Ih;->j6:Lcom/google/android/gms/internal/ads/ZF;

    goto :goto_6f

    :cond_8f
    sget-object p2, Lcom/google/android/gms/internal/ads/Jh;->j6:Lcom/google/android/gms/internal/ads/ZF;

    goto :goto_6f

    :goto_92
    sget-object p2, Lcom/google/android/gms/internal/ads/_F;->DW:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzwf;
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->x9:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_1f

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->U2:Z

    if-nez v0, :cond_1f

    const/4 p1, 0x0

    return-object p1

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->BT:Z

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_40

    aget-object v5, v0, v4

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-eqz v6, :cond_3d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzwf;[Lcom/google/android/gms/internal/ads/zzwf;)V

    return-object v0

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    if-eqz v0, :cond_fc

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_70

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Invalid ad size format from the ad response: "

    if-eqz v0, :cond_65

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6a

    :cond_65
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6a
    new-instance v0, Lcom/google/android/gms/internal/ads/Mh;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_70
    :try_start_70
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_7c} :catch_db

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_82
    if-ge v5, v4, :cond_bb

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9c

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    :cond_9c
    iget v9, v6, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_a6

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v9, v9

    :cond_a6
    if-ne v3, v8, :cond_b8

    if-ne v0, v9, :cond_b8

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-nez v7, :cond_b8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzwf;[Lcom/google/android/gms/internal/ads/zzwf;)V

    return-object v0

    :cond_b8
    add-int/lit8 v5, v5, 0x1

    goto :goto_82

    :cond_bb
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "The ad size from the ad response was not one of the requested sizes: "

    if-eqz v0, :cond_d0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d5

    :cond_d0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d5
    new-instance v0, Lcom/google/android/gms/internal/ads/Mh;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_db
    move-exception p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Invalid ad size number from the ad response: "

    if-eqz v0, :cond_f1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f6

    :cond_f1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f6
    new-instance v0, Lcom/google/android/gms/internal/ads/Mh;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_fc
    new-instance p1, Lcom/google/android/gms/internal/ads/Mh;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    goto :goto_105

    :goto_104
    throw p1

    :goto_105
    goto :goto_104
.end method

.method private final j6(ILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    move/from16 v6, p1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_e

    const/4 v1, -0x1

    if-ne v6, v1, :cond_a

    goto :goto_e

    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_11

    :cond_e
    :goto_e
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    :goto_11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    goto :goto_26

    :cond_1d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    invoke-direct {v2, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(IJ)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    :goto_26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    if-eqz v1, :cond_2b

    goto :goto_39

    :cond_2b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/Yh;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    move-object v2, v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v14, Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    const/4 v13, 0x0

    move-object v1, v14

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ch;->Hw:Lcom/google/android/gms/internal/ads/Bh;

    invoke-interface {v1, v14}, Lcom/google/android/gms/internal/ads/Bh;->j6(Lcom/google/android/gms/internal/ads/lk;)V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/hl;->cancel()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method final synthetic DW(Lcom/google/android/gms/internal/ads/SG;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->a8:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    return-void
.end method

.method public final Hw()V
    .registers 11

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Kh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Kh;-><init>(Lcom/google/android/gms/internal/ads/Ch;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->oh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v0, :cond_53

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    new-instance v9, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/Yh;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-static {v1, v9, v0}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ch;->j6(Lcom/google/android/gms/internal/ads/zzasm;)V

    return-void

    :cond_53
    new-instance v0, Lcom/google/android/gms/internal/ads/Xm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Xm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/Lh;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Lh;-><init>(Lcom/google/android/gms/internal/ads/Ch;Lcom/google/android/gms/internal/ads/Tm;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->v5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->Zo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->VH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/Yh;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/Tm;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic Zo()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ch;->we:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ch;->DW()V

    :cond_d
    const-string v1, "Timed out waiting for ad response."

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/Ch;->j6(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v1
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/SG;)V
    .registers 3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->Zo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/QG;->FH:Ljava/lang/String;

    return-void
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/Tm;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ch;->we:Z

    if-eqz v1, :cond_e

    const-string p1, "Request task was already canceled"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/Oh;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Oh;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/Rh;->j6(Lcom/google/android/gms/internal/ads/zzbbi;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v1, "Fetching ad response from local ad request service."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Vh;

    invoke-direct {v1, v2, p1, p0}, Lcom/google/android/gms/internal/ads/Vh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Sh;->FH()Ljava/lang/Object;

    goto :goto_4b

    :cond_2d
    const-string v3, "Fetching ad response from remote ad request service."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    const v3, 0xbdfcb8

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Zl;->FH(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_45

    const-string p1, "Failed to connect to remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_4b

    :cond_45
    new-instance v3, Lcom/google/android/gms/internal/ads/Wh;

    invoke-direct {v3, v2, v1, p1, p0}, Lcom/google/android/gms/internal/ads/Wh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V

    move-object v1, v3

    :goto_4b
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    if-nez v1, :cond_5c

    const-string p1, "Could not start the ad request service."

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/Ch;->j6(ILjava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5c
    monitor-exit v0

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzasm;)V
    .registers 15

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->aj:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ak;->Zo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_18
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21a

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->ro:Z

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/Hk;->DW(Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->Nh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->vJ:Z

    if-eqz p1, :cond_5e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/Hk;->Zo(Ljava/lang/String;)V

    goto :goto_6d

    :cond_5e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/Hk;->DW(Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    :try_start_6d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    const/4 v1, -0x2

    const/4 v2, -0x3

    if-eq p1, v1, :cond_9d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    if-ne p1, v2, :cond_7c

    goto :goto_9d

    :cond_7c
    new-instance p1, Lcom/google/android/gms/internal/ads/Mh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_9d
    :goto_9d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    const/4 v1, 0x0

    if-eq p1, v2, :cond_13b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_132

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->a8:Z

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/Hk;->j6(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z
    :try_end_c1
    .catch Lcom/google/android/gms/internal/ads/Mh; {:try_start_6d .. :try_end_c1} :catch_20d

    if-eqz p1, :cond_102

    :try_start_c3
    new-instance p1, Lcom/google/android/gms/internal/ads/qe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/qe;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/qe;->gn:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Z)V
    :try_end_d9
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_d9} :catch_da
    .catch Lcom/google/android/gms/internal/ads/Mh; {:try_start_c3 .. :try_end_d9} :catch_20d

    goto :goto_10d

    :catch_da
    move-exception p1

    :try_start_db
    const-string v0, "Could not parse mediation config."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Mh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f7

    const-string v2, "Could not parse mediation config: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_fe

    :cond_f7
    new-instance v0, Ljava/lang/String;

    const-string v2, "Could not parse mediation config: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_fe
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_102
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->cb:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Z)V

    :goto_10d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->cn:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13b

    const-string p1, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Vk;->FH(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    if-eqz p1, :cond_13b

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasm;->cn:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13b

    :cond_132
    new-instance p1, Lcom/google/android/gms/internal/ads/Mh;

    const-string v0, "No fill from ad server."

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_13b
    :goto_13b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ch;->j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object p1
    :try_end_149
    .catch Lcom/google/android/gms/internal/ads/Mh; {:try_start_db .. :try_end_149} :catch_20d

    move-object v4, p1

    goto :goto_14c

    :cond_14b
    move-object v4, v0

    :goto_14c
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->lg:Z

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/Hk;->FH(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->Sf:Z

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/Hk;->Hw(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasm;->j3:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_185

    :try_start_174
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->j3:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_17d} :catch_17f

    move-object v10, p1

    goto :goto_186

    :catch_17f
    move-exception p1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_185
    move-object v10, v0

    :goto_186
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->I:I

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1b8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1b2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1b2
    const-string v2, "render_test_ad_label"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1c9

    :cond_1b8
    if-ne v2, v5, :cond_1bf

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1c9

    :cond_1bf
    if-nez v2, :cond_1c9

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Rl;->j6(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1c9
    :goto_1c9
    move-object v12, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    if-eqz v0, :cond_1ef

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1ea

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1ea
    const-string p1, "is_analytics_logging_enabled"

    invoke-virtual {v0, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1ef
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance p1, Lcom/google/android/gms/internal/ads/lk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    const/4 v5, -0x2

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Hw:Lcom/google/android/gms/internal/ads/Bh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Bh;->j6(Lcom/google/android/gms/internal/ads/lk;)V

    :goto_205
    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_20d
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Mh;->j6()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ch;->j6(ILjava/lang/String;)V

    goto :goto_205

    :catchall_21a
    move-exception v0

    :try_start_21b
    monitor-exit p1
    :try_end_21c
    .catchall {:try_start_21b .. :try_end_21c} :catchall_21a

    goto :goto_21e

    :goto_21d
    throw v0

    :goto_21e
    goto :goto_21d
.end method
