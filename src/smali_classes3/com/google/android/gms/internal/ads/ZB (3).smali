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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I

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

    iget v0, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PB;->VH()Lcom/google/android/gms/internal/ads/QB;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ZB;->J0:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/QB;->j6(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ZB;->J8:Lcom/google/android/gms/internal/ads/SB;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/SB;->j6(Lcom/google/android/gms/internal/ads/UB;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_65

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZB;->J8:Lcom/google/android/gms/internal/ads/SB;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/SB;->j6:Lcom/google/android/gms/internal/ads/Oz;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_30
    if-nez v2, :cond_3c

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/ZB;->QX:Z

    if-nez v3, :cond_3c

    const/4 v2, 0x0

    invoke-interface {v0, v7, v2}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I

    move-result v2

    goto :goto_30

    :cond_3c
    const/4 v0, 0x1

    if-eq v2, v0, :cond_40

    const/4 v1, 0x1

    :cond_40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_57

    :try_start_43
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/mD;->FH:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_65

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ZB;->XL:Z

    return-void

    :catchall_57
    move-exception v0

    :try_start_58
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/mD;->FH:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/ZB;->Ws:I

    throw v0
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    goto :goto_6d

    :goto_6c
    throw v0

    :goto_6d
    goto :goto_6c
.end method

.method public final v5()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/aC;->u7:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ZB;->we:I

    add-int/2addr v0, v1

    return v0
.end method
