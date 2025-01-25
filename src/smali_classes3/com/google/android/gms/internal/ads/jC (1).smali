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
    .registers 5

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/jC;->Hw:I

    if-lt p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jC;->FH()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_18

    goto :goto_1c

    :cond_18
    iget v0, p0, Lcom/google/android/gms/internal/ads/jC;->Hw:I

    sub-int/2addr p1, v0

    return p1

    :cond_1c
    :goto_1c
    return v1
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;
    .registers 16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_17

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/AC;->j6:Ljava/lang/String;

    move-object v4, v2

    goto :goto_18

    :cond_17
    move-object v4, v0

    :goto_18
    if-eqz p3, :cond_2a

    iget p3, p0, Lcom/google/android/gms/internal/ads/jC;->Hw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2a
    move-object v5, v0

    const/4 v6, 0x0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v7

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object p1

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/AC;->DW:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/AC;->DW:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/jC;->v5:J

    sub-long v9, v0, v2

    const/4 v11, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/Uy;->j6(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/Uy;

    return-object p2
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;
    .registers 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/jC;->VH:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-nez v5, :cond_14

    :cond_11
    :goto_11
    move-wide v13, v3

    goto/16 :goto_97

    :cond_14
    const-wide/16 v5, 0x0

    cmp-long v7, p4, v5

    if-lez v7, :cond_28

    add-long v3, v3, p4

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/jC;->Zo:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_28

    const-wide v3, -0x7fffffffffffffffL  # -4.9E-324

    goto :goto_11

    :cond_28
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/jC;->v5:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v7

    add-long/2addr v5, v3

    const/4 v9, 0x0

    :goto_32
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v10

    sub-int/2addr v10, v2

    if-ge v9, v10, :cond_49

    cmp-long v10, v5, v7

    if-ltz v10, :cond_49

    sub-long/2addr v5, v7

    add-int/lit8 v9, v9, 0x1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v7

    goto :goto_32

    :cond_49
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v9

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_56
    const/4 v12, -0x1

    if-ge v11, v10, :cond_6a

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/vC;

    iget v13, v13, Lcom/google/android/gms/internal/ads/vC;->DW:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_67

    goto :goto_6b

    :cond_67
    add-int/lit8 v11, v11, 0x1

    goto :goto_56

    :cond_6a
    const/4 v11, -0x1

    :goto_6b
    if-ne v11, v12, :cond_6e

    goto :goto_11

    :cond_6e
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/vC;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1, v7, v8}, Lcom/google/android/gms/internal/ads/qC;->j6(J)I

    move-result v9

    if-nez v9, :cond_8b

    goto :goto_11

    :cond_8b
    invoke-interface {v1, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/qC;->j6(JJ)I

    move-result v7

    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v7

    add-long/2addr v3, v7

    sub-long/2addr v3, v5

    goto/16 :goto_11

    :goto_97
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/jC;->DW:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/jC;->FH:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/jC;->gn:Lcom/google/android/gms/internal/ads/wC;

    const/4 v6, 0x0

    const/4 v11, 0x1

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/jC;->Zo:J

    const/16 v17, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v1

    add-int/lit8 v18, v1, -0x1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/jC;->v5:J

    move-object/from16 v5, p2

    move-wide v15, v3

    move-wide/from16 v19, v1

    invoke-virtual/range {v5 .. v20}, Lcom/google/android/gms/internal/ads/Vy;->j6(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/gms/internal/ads/Vy;

    return-object p2
.end method
