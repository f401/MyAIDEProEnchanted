.class public final Lcom/google/android/gms/internal/ads/ZB;
.super Lcom/google/android/gms/internal/ads/PB;


# instance fields
.field private final J0:J

.field private final J8:Lcom/google/android/gms/internal/ads/SB;

.field private volatile QX:Z

.field private volatile Ws:I

.field private volatile XL:Z

.field private final we:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJIIJLcom/google/android/gms/internal/ads/SB;)V
    .registers 15

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/ads/PB;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJI)V

    iput p11, p0, Lcom/google/android/gms/internal/ads/ZB;->we:I

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/ZB;->J0:J

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/ZB;->J8:Lcom/google/android/gms/internal/ads/SB;

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ZB;->QX:Z

    return v0
.end method

.method public final FH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ZB;->QX:Z

    return-void
.end method

.method public final Hw()J
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final Zo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ZB;->XL:Z

    return v0
.end method

.method public final j6()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I

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

    iget v1, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PB;->VH()Lcom/google/android/gms/internal/ads/QB;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZB;->J0:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/QB;->j6(J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ZB;->J8:Lcom/google/android/gms/internal/ads/SB;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/SB;->j6(Lcom/google/android/gms/internal/ads/UB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ZB;->J8:Lcom/google/android/gms/internal/ads/SB;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/SB;->j6:Lcom/google/android/gms/internal/ads/Oz;

    move v1, v7

    :goto_0
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/ZB;->QX:Z

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

    iput v0, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/ZB;->XL:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/mD;->FH:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    throw v0

    :cond_2
    move v1, v7

    goto :goto_1
.end method

.method public final v5()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/aC;->u7:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ZB;->we:I

    add-int/2addr v0, v1

    return v0
.end method
