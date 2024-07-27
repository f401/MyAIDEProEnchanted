.class public final Lcom/google/android/gms/internal/ads/bC;
.super Lcom/google/android/gms/internal/ads/PB;


# instance fields
.field private final J0:Lcom/google/android/gms/internal/ads/zzfs;

.field private volatile J8:I

.field private volatile QX:Z

.field private volatile Ws:Z

.field private final we:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJIILcom/google/android/gms/internal/ads/zzfs;)V
    .registers 13

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/ads/PB;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJI)V

    iput p11, p0, Lcom/google/android/gms/internal/ads/bC;->we:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/bC;->J0:Lcom/google/android/gms/internal/ads/zzfs;

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bC;->Ws:Z

    return v0
.end method

.method public final FH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bC;->Ws:Z

    return-void
.end method

.method public final Hw()J
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final Zo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bC;->QX:Z

    return v0
.end method

.method public final j6()V
    .registers 10

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/mD;I)Lcom/google/android/gms/internal/ads/mD;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v4

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Mz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    iget v2, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    int-to-long v2, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mz;-><init>(Lcom/google/android/gms/internal/ads/iD;JJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PB;->VH()Lcom/google/android/gms/internal/ads/QB;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/QB;->j6(J)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/bC;->we:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/QB;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bC;->J0:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    move v2, v6

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v3, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v2

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/bC;->QX:Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    throw v0
.end method
