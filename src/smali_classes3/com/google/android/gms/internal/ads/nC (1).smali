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

    move-wide/from16 v4, p1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide v2, 0x7fffffffffffffffL

    const/4 v6, 0x0

    move-wide v13, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :goto_16
    if-ge v2, v1, :cond_72

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/vC;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v9

    if-nez v9, :cond_3a

    new-instance v6, Lcom/google/android/gms/internal/ads/nC;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/nC;-><init>(ZJJ)V

    return-object v6

    :cond_3a
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/qC;->j6()Z

    move-result v15

    or-int/2addr v10, v15

    invoke-interface {v9, v4, v5}, Lcom/google/android/gms/internal/ads/qC;->j6(J)I

    move-result v15

    const/16 v16, 0x1

    if-nez v15, :cond_4d

    const/4 v3, 0x1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    goto :goto_6e

    :cond_4d
    if-nez v3, :cond_6e

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/qC;->DW()I

    move-result v6

    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const/4 v7, -0x1

    if-eq v15, v7, :cond_6e

    add-int/2addr v6, v15

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v7

    invoke-interface {v9, v6, v4, v5}, Lcom/google/android/gms/internal/ads/qC;->j6(IJ)J

    move-result-wide v15

    add-long/2addr v7, v15

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    goto :goto_16

    :cond_72
    new-instance v0, Lcom/google/android/gms/internal/ads/nC;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/nC;-><init>(ZJJ)V

    return-object v0
.end method
