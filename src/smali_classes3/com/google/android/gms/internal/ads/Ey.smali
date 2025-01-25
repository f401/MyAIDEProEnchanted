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
    .registers 14

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

    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/HB;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ey;->v5:[Z

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/Ly;->FH()Lcom/google/android/gms/internal/ads/gD;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lcom/google/android/gms/internal/ads/AB;->j6(ILcom/google/android/gms/internal/ads/gD;)Lcom/google/android/gms/internal/ads/yB;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

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
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ey;->EQ:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->VH()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final Hw()Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->QX:Lcom/google/android/gms/internal/ads/cD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ey;->Ws:[Lcom/google/android/gms/internal/ads/Qy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/yB;->Hw()Lcom/google/android/gms/internal/ads/NB;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cD;->j6([Lcom/google/android/gms/internal/ads/Qy;Lcom/google/android/gms/internal/ads/NB;)Lcom/google/android/gms/internal/ads/eD;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ey;->j3:Lcom/google/android/gms/internal/ads/eD;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_15

    goto :goto_22

    :cond_15
    const/4 v4, 0x0

    :goto_16
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    iget v5, v5, Lcom/google/android/gms/internal/ads/bD;->j6:I

    if-ge v4, v5, :cond_27

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/eD;->j6(Lcom/google/android/gms/internal/ads/eD;I)Z

    move-result v5

    if-nez v5, :cond_24

    :goto_22
    const/4 v1, 0x0

    goto :goto_28

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_27
    const/4 v1, 0x1

    :goto_28
    if-eqz v1, :cond_2b

    return v3

    :cond_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    return v2
.end method

.method public final j6(JZ)J
    .registers 5

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Ey;->J8:[Lcom/google/android/gms/internal/ads/Oy;

    array-length p3, p3

    new-array p3, p3, [Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/Ey;->j6(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final j6(JZ[Z)J
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    iget v4, v1, Lcom/google/android/gms/internal/ads/bD;->j6:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_21

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ey;->v5:[Z

    if-nez p3, :cond_1b

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Ey;->j3:Lcom/google/android/gms/internal/ads/eD;

    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/internal/ads/eD;->j6(Lcom/google/android/gms/internal/ads/eD;I)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    :goto_1c
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_21
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bD;->j6()[Lcom/google/android/gms/internal/ads/_C;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Ey;->v5:[Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/yB;->j6([Lcom/google/android/gms/internal/ads/_C;[Z[Lcom/google/android/gms/internal/ads/HB;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/Ey;->j3:Lcom/google/android/gms/internal/ads/eD;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/Ey;->EQ:Z

    const/4 v6, 0x0

    :goto_39
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    array-length v8, v7

    if-ge v6, v8, :cond_60

    aget-object v7, v7, v6

    if-eqz v7, :cond_51

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v7

    if-eqz v7, :cond_4a

    const/4 v7, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v7, 0x0

    :goto_4b
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/Ey;->EQ:Z

    goto :goto_5d

    :cond_51
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v7

    if-nez v7, :cond_59

    const/4 v7, 0x1

    goto :goto_5a

    :cond_59
    const/4 v7, 0x0

    :goto_5a
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_60
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ey;->XL:Lcom/google/android/gms/internal/ads/Ly;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ey;->J8:[Lcom/google/android/gms/internal/ads/Oy;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/eD;->j6:Lcom/google/android/gms/internal/ads/NB;

    invoke-interface {v2, v5, v6, v1}, Lcom/google/android/gms/internal/ads/Ly;->j6([Lcom/google/android/gms/internal/ads/Oy;Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;)V

    return-wide v3
.end method

.method public final j6()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ey;->aM:Lcom/google/android/gms/internal/ads/AB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/AB;->j6(Lcom/google/android/gms/internal/ads/yB;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final j6(IZ)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    return-void
.end method
