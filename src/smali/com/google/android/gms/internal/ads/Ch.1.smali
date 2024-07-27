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
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ch;->Hw:Lcom/google/android/gms/internal/ads/Bh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ch;->u7:Lcom/google/android/gms/internal/ads/zzur;

    new-instance v0, Lcom/google/android/gms/internal/ads/YF;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->u7:Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/YF;-><init>(Lcom/google/android/gms/internal/ads/zzur;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    new-instance v1, Lcom/google/android/gms/internal/ads/Dh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Dh;-><init>(Lcom/google/android/gms/internal/ads/Ch;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/TG;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/TG;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->DW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/TG;->FH:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->FH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/TG;->Hw:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->Hw:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/TG;->v5:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    new-instance v2, Lcom/google/android/gms/internal/ads/Eh;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/Eh;-><init>(Lcom/google/android/gms/internal/ads/TG;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->Zo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    new-instance v1, Lcom/google/android/gms/internal/ads/Fh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Fh;-><init>(Lcom/google/android/gms/internal/ads/Ch;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->FH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-eqz v1, :cond_2

    const-string v1, "interstitial_mb"

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/Gh;->j6:Lcom/google/android/gms/internal/ads/ZF;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/_F;->DW:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-eqz v1, :cond_3

    const-string v1, "reward_mb"

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/Hh;->j6:Lcom/google/android/gms/internal/ads/ZF;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    goto :goto_1

    :cond_3
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzwf;->gn:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/Ih;->j6:Lcom/google/android/gms/internal/ads/ZF;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/Jh;->j6:Lcom/google/android/gms/internal/ads/ZF;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    goto :goto_1
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzwf;
    .registers 13

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasi;->x9:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->U2:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->BT:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v2, v1

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v4, v1, v0

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-eqz v5, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzwf;[Lcom/google/android/gms/internal/ads/zzwf;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Invalid ad size format from the ad response: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/Mh;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "Invalid ad size format from the ad response: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v7, v6

    move v2, v3

    :goto_4
    if-ge v2, v7, :cond_9

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget v0, v8, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    float-to-int v0, v0

    :cond_6
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    const/4 v10, -0x2

    if-ne v1, v10, :cond_7

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v1, v1

    :cond_7
    if-ne v4, v0, :cond_8

    if-ne v5, v1, :cond_8

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzwf;[Lcom/google/android/gms/internal/ads/zzwf;)V

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "The ad size from the ad response was not one of the requested sizes: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-instance v1, Lcom/google/android/gms/internal/ads/Mh;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/String;

    const-string v1, "The ad size from the ad response was not one of the requested sizes: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Invalid ad size number from the ad response: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-instance v1, Lcom/google/android/gms/internal/ads/Mh;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_b
    new-instance v0, Ljava/lang/String;

    const-string v1, "Invalid ad size number from the ad response: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/Mh;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private final j6(ILjava/lang/String;)V
    .registers 16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    if-eqz v1, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v0, Lcom/google/android/gms/internal/ads/lk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    const/4 v12, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->Hw:Lcom/google/android/gms/internal/ads/Bh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Bh;->j6(Lcom/google/android/gms/internal/ads/lk;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/Yh;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hl;->cancel()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic DW(Lcom/google/android/gms/internal/ads/SG;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->a8:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    return-void
.end method

.method public final Hw()V
    .registers 10

    const/4 v4, 0x0

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Kh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Kh;-><init>(Lcom/google/android/gms/internal/ads/Ch;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->oh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yh;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/Yh;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ch;->j6(Lcom/google/android/gms/internal/ads/zzasm;)V

    :goto_0
    return-void

    :cond_0
    new-instance v8, Lcom/google/android/gms/internal/ads/Xm;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/Xm;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Lh;

    invoke-direct {v0, p0, v8}, Lcom/google/android/gms/internal/ads/Lh;-><init>(Lcom/google/android/gms/internal/ads/Ch;Lcom/google/android/gms/internal/ads/Tm;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->v5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->Zo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->VH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/Yh;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/ads/Tm;->j6(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final synthetic Zo()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ch;->we:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ch;->DW()V

    :cond_0
    const/4 v0, 0x2

    const-string v2, "Timed out waiting for ad response."

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/Ch;->j6(ILjava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/SG;)V
    .registers 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yh;->Zo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/QG;->FH:Ljava/lang/String;

    return-void
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/Tm;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ch;->we:Z

    if-eqz v0, :cond_0

    const-string v0, "Request task was already canceled"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->v5:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/ads/Oh;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/Oh;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Rh;->j6(Lcom/google/android/gms/internal/ads/zzbbi;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Vh;

    invoke-direct {v0, v3, p1, p0}, Lcom/google/android/gms/internal/ads/Vh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sh;->FH()Ljava/lang/Object;

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v2, "Could not start the ad request service."

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/Ch;->j6(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    const v0, 0xbdfcb8

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/Zl;->FH(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/Wh;

    invoke-direct {v0, v3, v2, p1, p0}, Lcom/google/android/gms/internal/ads/Wh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzasm;)V
    .registers 15

    const/4 v9, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->aj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ak;->Zo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->Zo:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J0:Lcom/google/android/gms/internal/ads/hl;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->ro:Z

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Hk;->DW(Z)V

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Nh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->vJ:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Hk;->Zo(Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    if-ne v0, v4, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->a8:Z

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Hk;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/Mh; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_a

    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/qe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/qe;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/qe;->gn:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/ads/Mh; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->cn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->VH:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Vk;->FH(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasm;->cn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ch;->j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzwf;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/Mh; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->lg:Z

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Hk;->FH(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->Sf:Z

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Hk;->Hw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->j3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :try_start_4
    new-instance v10, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->j3:Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->I:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    const-string v1, "render_test_ad_label"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    if-eqz v0, :cond_6

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    const-string v1, "is_analytics_logging_enabled"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v0, Lcom/google/android/gms/internal/ads/lk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ch;->Ws:Lcom/google/android/gms/internal/ads/qe;

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/Ch;->gn:Lcom/google/android/gms/internal/ads/YF;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->Hw:Lcom/google/android/gms/internal/ads/Bh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Bh;->j6(Lcom/google/android/gms/internal/ads/lk;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_5
    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->tp:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Hk;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/ads/Mh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/Mh; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Mh;->j6()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Ch;->j6(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ch;->EQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "Could not parse mediation config."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Mh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Could not parse mediation config: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/String;

    const-string v2, "Could not parse mediation config: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ch;->J8:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->cb:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Z)V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/Mh;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mh;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/Mh; {:try_start_6 .. :try_end_6} :catch_0

    :cond_c
    move-object v4, v1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    move-object v10, v1

    goto/16 :goto_3

    :cond_e
    if-ne v0, v8, :cond_f

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto/16 :goto_4

    :cond_f
    if-nez v0, :cond_10

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Rl;->j6(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_10
    move-object v12, v1

    goto/16 :goto_4
.end method
