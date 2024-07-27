.class final Lcom/google/android/gms/internal/ads/jC;
.super Lcom/google/android/gms/internal/ads/Sy;


# instance fields
.field private final DW:J

.field private final FH:J

.field private final Hw:I

.field private final VH:J

.field private final Zo:J

.field private final gn:Lcom/google/android/gms/internal/ads/wC;

.field private final v5:J


# direct methods
.method public constructor <init>(JJIJJJLcom/google/android/gms/internal/ads/wC;)V
    .registers 13

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Sy;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/jC;->DW:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/jC;->FH:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/jC;->Hw:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/jC;->v5:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/jC;->Zo:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/jC;->VH:J

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final FH()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v0

    return v0
.end method

.method public final j6(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, -0x1

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/jC;->Hw:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jC;->FH()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/jC;->Hw:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;
    .registers 14

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/AC;->j6:Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/jC;->Hw:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/AC;->DW:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/AC;->DW:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/jC;->v5:J

    sub-long/2addr v6, v8

    move-object v0, p2

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/Uy;->j6(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/Uy;

    return-object p2

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;
    .registers 24

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/jC;->VH:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/jC;->DW:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/jC;->FH:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    const/4 v3, 0x0

    const/4 v8, 0x1

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/jC;->Zo:J

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/jC;->v5:J

    move-wide/from16 v16, v0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/Vy;->j6(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/gms/internal/ads/Vy;

    return-object p2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    add-long v10, v10, p4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/jC;->Zo:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_2

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/jC;->v5:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v2

    add-long v6, v4, v10

    const/4 v8, 0x0

    move-wide v4, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v8, v2, :cond_3

    cmp-long v2, v6, v4

    if-ltz v2, :cond_3

    sub-long/2addr v6, v4

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v8

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_5

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/vC;

    iget v2, v2, Lcom/google/android/gms/internal/ads/vC;->DW:I

    const/4 v12, 0x2

    if-ne v2, v12, :cond_4

    move v2, v3

    :goto_3
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/vC;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/qC;->j6(J)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v6, v7, v4, v5}, Lcom/google/android/gms/internal/ads/qC;->j6(JJ)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v2

    add-long/2addr v2, v10

    sub-long v10, v2, v6

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    goto :goto_3
.end method
