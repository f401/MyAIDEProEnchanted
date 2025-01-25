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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/ty;->j6:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

    return-void
.end method


# virtual methods
.method protected final DW(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ty;->Zo:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/HB;->Hw(J)V

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

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/HB;->FH()Z

    move-result v0

    return v0
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
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/HB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_21

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    if-eqz p1, :cond_17

    return v0

    :cond_17
    const/4 p1, -0x3

    return p1

    :cond_19
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ty;->Zo:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    goto :goto_3a

    :cond_21
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3a

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3a

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ty;->Zo:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(J)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    :cond_3a
    :goto_3a
    return p3
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

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ty;->DW:Lcom/google/android/gms/internal/ads/Ry;

    iput v1, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/ty;->j6(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/ty;->j6([Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/HB;J)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/ty;->j6(JZ)V

    return-void
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

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ty;->VH:Z

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

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->QX()V

    return-void
.end method

.method public final stop()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->XL()V

    return-void
.end method

.method public final tp()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/ty;->Hw:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ty;->v5:Lcom/google/android/gms/internal/ads/HB;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ty;->gn:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->aM()V

    return-void
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
