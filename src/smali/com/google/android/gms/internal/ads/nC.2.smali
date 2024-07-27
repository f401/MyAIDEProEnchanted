.class final Lcom/google/android/gms/internal/ads/nC;
.super Ljava/lang/Object;


# instance fields
.field public final DW:J

.field public final FH:J

.field public final j6:Z


# direct methods
.method private constructor <init>(ZJJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/nC;->j6:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/nC;->DW:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/nC;->FH:J

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/AC;J)Lcom/google/android/gms/internal/ads/nC;
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const-wide v6, 0x7fffffffffffffffL

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/vC;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/nC;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/nC;-><init>(ZJJ)V

    :goto_1
    return-object v2

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qC;->j6()Z

    move-result v11

    or-int/2addr v3, v11

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/qC;->j6(J)I

    move-result v11

    if-nez v11, :cond_1

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v8, v2

    goto :goto_0

    :cond_1
    if-nez v8, :cond_3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qC;->DW()I

    move-result v12

    invoke-interface {v2, v12}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v14

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const/4 v13, -0x1

    if-eq v11, v13, :cond_2

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v2, v11}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v12

    move-wide/from16 v0, p1

    invoke-interface {v2, v11, v0, v1}, Lcom/google/android/gms/internal/ads/qC;->j6(IJ)J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_2
    move v2, v8

    goto :goto_2

    :cond_3
    move v2, v8

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ads/nC;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/nC;-><init>(ZJJ)V

    goto :goto_1
.end method
