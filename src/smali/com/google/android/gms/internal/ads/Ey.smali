.class final Lcom/google/android/gms/internal/ads/Ey;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Ljava/lang/Object;

.field public EQ:Z

.field public final FH:I

.field public final Hw:[Lcom/google/android/gms/internal/ads/HB;

.field public J0:Lcom/google/android/gms/internal/ads/eD;

.field private final J8:[Lcom/google/android/gms/internal/ads/Oy;

.field private final QX:Lcom/google/android/gms/internal/ads/cD;

.field public VH:I

.field private final Ws:[Lcom/google/android/gms/internal/ads/Qy;

.field private final XL:Lcom/google/android/gms/internal/ads/Ly;

.field public final Zo:J

.field private final aM:Lcom/google/android/gms/internal/ads/AB;

.field public gn:J

.field private j3:Lcom/google/android/gms/internal/ads/eD;

.field public final j6:Lcom/google/android/gms/internal/ads/yB;

.field public tp:Z

.field public u7:Z

.field private final v5:[Z

.field public we:Lcom/google/android/gms/internal/ads/Ey;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/Oy;[Lcom/google/android/gms/internal/ads/Qy;JLcom/google/android/gms/internal/ads/cD;Lcom/google/android/gms/internal/ads/Ly;Lcom/google/android/gms/internal/ads/AB;Ljava/lang/Object;IIZJ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ey;->J8:[Lcom/google/android/gms/internal/ads/Oy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ey;->Ws:[Lcom/google/android/gms/internal/ads/Qy;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/Ey;->Zo:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Ey;->QX:Lcom/google/android/gms/internal/ads/cD;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Ey;->XL:Lcom/google/android/gms/internal/ads/Ly;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Ey;->aM:Lcom/google/android/gms/internal/ads/AB;

    invoke-static {p8}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Ey;->DW:Ljava/lang/Object;

    iput p9, p0, Lcom/google/android/gms/internal/ads/Ey;->FH:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/HB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->v5:[Z

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/Ly;->FH()Lcom/google/android/gms/internal/ads/gD;

    move-result-object v0

    invoke-interface {p7, p10, v0}, Lcom/google/android/gms/internal/ads/AB;->j6(ILcom/google/android/gms/internal/ads/gD;)Lcom/google/android/gms/internal/ads/yB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    return-void
.end method


# virtual methods
.method public final DW()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ey;->Zo:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final FH()Z
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ey;->EQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->VH()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Hw()Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->QX:Lcom/google/android/gms/internal/ads/cD;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ey;->Ws:[Lcom/google/android/gms/internal/ads/Qy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/yB;->Hw()Lcom/google/android/gms/internal/ads/NB;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/cD;->j6([Lcom/google/android/gms/internal/ads/Qy;Lcom/google/android/gms/internal/ads/NB;)Lcom/google/android/gms/internal/ads/eD;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ey;->j3:Lcom/google/android/gms/internal/ads/eD;

    if-nez v4, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_1
    move v0, v1

    :goto_2
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    iget v5, v5, Lcom/google/android/gms/internal/ads/bD;->j6:I

    if-ge v0, v5, :cond_2

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/eD;->j6(Lcom/google/android/gms/internal/ads/eD;I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    move v1, v2

    goto :goto_1
.end method

.method public final j6(JZ)J
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ey;->J8:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v1, v1

    new-array v1, v1, [Z

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/Ey;->j6(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j6(JZ[Z)J
    .registers 16

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    move v0, v8

    :goto_0
    iget v1, v10, Lcom/google/android/gms/internal/ads/bD;->j6:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ey;->v5:[Z

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ey;->j3:Lcom/google/android/gms/internal/ads/eD;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/ads/eD;->j6(Lcom/google/android/gms/internal/ads/eD;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    :goto_1
    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v8

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/bD;->j6()[Lcom/google/android/gms/internal/ads/_C;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ey;->v5:[Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    move-object v5, p4

    move-wide v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/yB;->j6([Lcom/google/android/gms/internal/ads/_C;[Z[Lcom/google/android/gms/internal/ads/HB;[ZJ)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->j3:Lcom/google/android/gms/internal/ads/eD;

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/Ey;->EQ:Z

    move v1, v8

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    array-length v4, v0

    if-ge v1, v4, :cond_5

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v9

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/Ey;->EQ:Z

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v8

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v9

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    goto :goto_4

    :cond_4
    move v0, v8

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->XL:Lcom/google/android/gms/internal/ads/Ly;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ey;->J8:[Lcom/google/android/gms/internal/ads/Oy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/eD;->j6:Lcom/google/android/gms/internal/ads/NB;

    invoke-interface {v0, v1, v4, v10}, Lcom/google/android/gms/internal/ads/Ly;->j6([Lcom/google/android/gms/internal/ads/Oy;Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;)V

    return-wide v2
.end method

.method public final j6()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->aM:Lcom/google/android/gms/internal/ads/AB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/AB;->j6(Lcom/google/android/gms/internal/ads/yB;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final j6(IZ)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    return-void
.end method
