.class public final Lcom/google/android/gms/internal/ads/_B;
.super Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field private volatile EQ:Z

.field private volatile tp:I

.field private final u7:Lcom/google/android/gms/internal/ads/SB;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/SB;)V
    .registers 18

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL  # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL  # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/RB;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/_B;->u7:Lcom/google/android/gms/internal/ads/SB;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/mD;I)Lcom/google/android/gms/internal/ads/mD;

    move-result-object v0

    :try_start_8
    new-instance v7, Lcom/google/android/gms/internal/ads/Mz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/mD;->FH:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Mz;-><init>(Lcom/google/android/gms/internal/ads/iD;JJ)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I

    const/4 v1, 0x0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_B;->u7:Lcom/google/android/gms/internal/ads/SB;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/SB;->j6(Lcom/google/android/gms/internal/ads/UB;)V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_5a

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_B;->u7:Lcom/google/android/gms/internal/ads/SB;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/SB;->j6:Lcom/google/android/gms/internal/ads/Oz;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_28
    if-nez v3, :cond_33

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/_B;->EQ:Z

    if-nez v4, :cond_33

    invoke-interface {v0, v7, v1}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I

    move-result v3

    goto :goto_28

    :cond_33
    const/4 v0, 0x1

    if-eq v3, v0, :cond_37

    const/4 v2, 0x1

    :cond_37
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_4c

    :try_start_3a
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/mD;->FH:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_5a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    return-void

    :catchall_4c
    move-exception v0

    :try_start_4d
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/mD;->FH:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/_B;->tp:I

    throw v0
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method
