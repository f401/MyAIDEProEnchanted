.class public abstract Lcom/google/android/gms/internal/ads/ty;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Oy;
.implements Lcom/google/android/gms/internal/ads/Qy;


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/Ry;

.field private FH:I

.field private Hw:I

.field private VH:Z

.field private Zo:J

.field private gn:Z

.field private final j6:I

.field private v5:Lcom/google/android/gms/internal/ads/HB;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/ty;->j6:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

    return-void
.end method


# virtual methods
.method protected final DW(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ty;->Zo:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/HB;->Hw(J)V

    return-void
.end method

.method public EQ()Lcom/google/android/gms/internal/ads/GD;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/Qy;
    .registers 1

    return-object p0
.end method

.method protected final Mr()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/HB;->FH()Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract QX()V
.end method

.method public final VH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    return v0
.end method

.method protected final Ws()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->FH:I

    return v0
.end method

.method protected abstract XL()V
.end method

.method public final Zo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/HB;->j6()V

    return-void
.end method

.method protected abstract aM()V
.end method

.method public final getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    return v0
.end method

.method public final gn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

    return v0
.end method

.method protected final j3()Lcom/google/android/gms/internal/ads/Ry;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->DW:Lcom/google/android/gms/internal/ads/Ry;

    return-object v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I
    .registers 10

    const/4 v0, -0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/HB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ty;->Zo:J

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x5

    if-ne v1, v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ty;->Zo:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6(J)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    goto :goto_1
.end method

.method public j6(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public final j6(J)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ty;->j6(JZ)V

    return-void
.end method

.method protected abstract j6(JZ)V
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ry;[Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/HB;JZJ)V
    .registers 11

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ty;->DW:Lcom/google/android/gms/internal/ads/Ry;

    iput v1, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/ty;->j6(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/ty;->j6([Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/HB;J)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/ty;->j6(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract j6(Z)V
.end method

.method protected j6([Lcom/google/android/gms/internal/ads/zzfs;J)V
    .registers 4

    return-void
.end method

.method public final j6([Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/HB;J)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/ty;->Zo:J

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/ty;->j6([Lcom/google/android/gms/internal/ads/zzfs;J)V

    return-void
.end method

.method public final setIndex(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/ty;->FH:I

    return-void
.end method

.method public final start()V
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->QX()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .registers 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->XL()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tp()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->aM()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final u7()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    return-void
.end method

.method public final v5()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->j6:I

    return v0
.end method

.method public final we()Lcom/google/android/gms/internal/ads/HB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    return-object v0
.end method
