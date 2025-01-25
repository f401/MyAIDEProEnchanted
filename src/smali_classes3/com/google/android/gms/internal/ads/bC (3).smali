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
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/mD;I)Lcom/google/android/gms/internal/ads/mD;

    move-result-object v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget v2, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_18
    move-wide v5, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/Mz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    int-to-long v3, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Mz;-><init>(Lcom/google/android/gms/internal/ads/iD;JJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PB;->VH()Lcom/google/android/gms/internal/ads/QB;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/QB;->j6(J)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/bC;->we:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/QB;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bC;->J0:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    :goto_39
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_4a

    iget v1, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    const v1, 0x7fffffff

    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v3

    goto :goto_39

    :cond_4a
    iget v8, p0, Lcom/google/android/gms/internal/ads/bC;->J8:I

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/bC;->QX:Z

    return-void

    :catchall_5c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method
