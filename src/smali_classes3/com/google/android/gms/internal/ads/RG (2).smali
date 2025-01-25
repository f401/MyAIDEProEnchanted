.class public final Lcom/google/android/gms/internal/ads/RG;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/RG;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Lcom/google/android/gms/internal/ads/iG;

.field private Hw:Lcom/google/android/gms/internal/ads/TG;

.field private Zo:Ljava/lang/String;

.field private v5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->FH:Lcom/google/android/gms/internal/ads/iG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->Hw:Lcom/google/android/gms/internal/ads/TG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->v5:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->Zo:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RG;->FH:Lcom/google/android/gms/internal/ads/iG;

    if-eqz v1, :cond_14

    if-eqz v1, :cond_14

    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RG;->Hw:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v1, :cond_1e

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RG;->v5:Ljava/lang/String;

    if-eqz v1, :cond_28

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RG;->Zo:Ljava/lang/String;

    if-eqz v1, :cond_33

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_33
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->Zo:Ljava/lang/String;

    goto :goto_0

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->v5:Ljava/lang/String;

    goto :goto_0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->Hw:Lcom/google/android/gms/internal/ads/TG;

    if-nez v0, :cond_36

    new-instance v0, Lcom/google/android/gms/internal/ads/TG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/TG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->Hw:Lcom/google/android/gms/internal/ads/TG;

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->Hw:Lcom/google/android/gms/internal/ads/TG;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto :goto_0

    :cond_3c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v2

    if-eqz v2, :cond_53

    const/4 v3, 0x1

    if-eq v2, v3, :cond_53

    const/4 v3, 0x2

    if-eq v2, v3, :cond_53

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto :goto_0

    :cond_53
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/iG;->j6(I)Lcom/google/android/gms/internal/ads/iG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->FH:Lcom/google/android/gms/internal/ads/iG;

    goto :goto_0

    :cond_5a
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->FH:Lcom/google/android/gms/internal/ads/iG;

    if-eqz v0, :cond_e

    if-eqz v0, :cond_e

    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->Hw:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v0, :cond_16

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RG;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_27

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_27
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
