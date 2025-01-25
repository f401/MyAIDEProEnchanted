.class public final Lcom/google/android/gms/internal/ads/PD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/GD;


# instance fields
.field private DW:J

.field private FH:J

.field private Hw:Lcom/google/android/gms/internal/ads/Ny;

.field private j6:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PD;->Hw:Lcom/google/android/gms/internal/ads/Ny;

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/Ny;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PD;->Hw:Lcom/google/android/gms/internal/ads/Ny;

    return-object v0
.end method

.method public final FH()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/PD;->j6:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/PD;->FH:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/PD;->j6:Z

    :cond_d
    return-void
.end method

.method public final Hw()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/PD;->j6:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PD;->j6()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/PD;->j6(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/PD;->j6:Z

    :cond_e
    return-void
.end method

.method public final j6()J
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/PD;->DW:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/PD;->j6:Z

    if-eqz v2, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/PD;->FH:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/PD;->Hw:Lcom/google/android/gms/internal/ads/Ny;

    iget v5, v4, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/Ny;->j6(J)J

    move-result-wide v2

    :goto_20
    add-long/2addr v0, v2

    :cond_21
    return-wide v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/PD;->j6:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PD;->j6()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/PD;->j6(J)V

    :cond_b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PD;->Hw:Lcom/google/android/gms/internal/ads/Ny;

    return-object p1
.end method

.method public final j6(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/PD;->DW:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/PD;->j6:Z

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/PD;->FH:J

    :cond_c
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/GD;)V
    .registers 4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/GD;->j6()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/PD;->j6(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/GD;->DW()Lcom/google/android/gms/internal/ads/Ny;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PD;->Hw:Lcom/google/android/gms/internal/ads/Ny;

    return-void
.end method
