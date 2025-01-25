.class public final Lcom/google/android/gms/internal/ads/VG;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/VG;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Lcom/google/android/gms/internal/ads/TG;

.field private Hw:Lcom/google/android/gms/internal/ads/FG;

.field private Zo:Lcom/google/android/gms/internal/ads/sG;

.field private v5:Lcom/google/android/gms/internal/ads/uG;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->FH:Lcom/google/android/gms/internal/ads/TG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->Hw:Lcom/google/android/gms/internal/ads/FG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->v5:Lcom/google/android/gms/internal/ads/uG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->Zo:Lcom/google/android/gms/internal/ads/sG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VG;->FH:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VG;->Hw:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_1e

    if-eqz v1, :cond_1e

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VG;->v5:Lcom/google/android/gms/internal/ads/uG;

    if-eqz v1, :cond_28

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VG;->Zo:Lcom/google/android/gms/internal/ads/sG;

    if-eqz v1, :cond_32

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_67

    const/16 v1, 0xa

    if-eq v0, v1, :cond_56

    const/16 v1, 0x10

    if-eq v0, v1, :cond_37

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/ads/sG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->Zo:Lcom/google/android/gms/internal/ads/sG;

    goto :goto_0

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/ads/uG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/uG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->v5:Lcom/google/android/gms/internal/ads/uG;

    goto :goto_0

    :cond_37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_4f

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto :goto_0

    :cond_4f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->Hw:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->FH:Lcom/google/android/gms/internal/ads/TG;

    if-nez v0, :cond_61

    new-instance v0, Lcom/google/android/gms/internal/ads/TG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/TG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->FH:Lcom/google/android/gms/internal/ads/TG;

    :cond_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->FH:Lcom/google/android/gms/internal/ads/TG;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto :goto_0

    :cond_67
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->FH:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->Hw:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_16

    if-eqz v0, :cond_16

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->v5:Lcom/google/android/gms/internal/ads/uG;

    if-eqz v0, :cond_1e

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VG;->Zo:Lcom/google/android/gms/internal/ads/sG;

    if-eqz v0, :cond_26

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    :cond_26
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
