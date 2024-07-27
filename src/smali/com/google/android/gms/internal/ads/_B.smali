.class public final Lcom/google/android/gms/internal/ads/_B;
.super Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field private volatile EQ:Z

.field private volatile tp:I

.field private final u7:Lcom/google/android/gms/internal/ads/SB;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/SB;)V
    .registers 21

    const/4 v6, 0x2

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/RB;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJ)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_B;->u7:Lcom/google/android/gms/internal/ads/SB;

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/_B;->EQ:Z

    return v0
.end method

.method public final FH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/_B;->EQ:Z

    return-void
.end method

.method public final Hw()J
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final j6()V
    .registers 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/mD;I)Lcom/google/android/gms/internal/ads/mD;

    move-result-object v4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Mz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    iget-wide v2, v4, Lcom/google/android/gms/internal/ads/mD;->FH:J

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mz;-><init>(Lcom/google/android/gms/internal/ads/iD;JJ)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_B;->u7:Lcom/google/android/gms/internal/ads/SB;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/SB;->j6(Lcom/google/android/gms/internal/ads/UB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_B;->u7:Lcom/google/android/gms/internal/ads/SB;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/SB;->j6:Lcom/google/android/gms/internal/ads/Oz;

    move v1, v7

    :goto_0
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/_B;->EQ:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I

    move-result v1

    goto :goto_0

    :cond_1
    if-eq v1, v6, :cond_2

    move v1, v6

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/mD;->FH:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    return-void

    :cond_2
    move v1, v7

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/mD;->FH:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    throw v0
.end method
