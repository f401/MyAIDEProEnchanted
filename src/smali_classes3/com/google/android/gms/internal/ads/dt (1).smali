.class public final Lcom/google/android/gms/internal/ads/dt;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/dt;",
        ">;"
    }
.end annotation


# instance fields
.field public FH:[B

.field public Hw:[B

.field public Zo:[B

.field public v5:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->FH:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->Hw:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->v5:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->Zo:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dt;->FH:[B

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dt;->Hw:[B

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dt;->v5:[B

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dt;->Zo:[B

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0xa

    if-eq v0, v1, :cond_32

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->Zo:[B

    goto :goto_0

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->v5:[B

    goto :goto_0

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->Hw:[B

    goto :goto_0

    :cond_32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->FH:[B

    goto :goto_0

    :cond_39
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->FH:[B

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->Hw:[B

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->v5:[B

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dt;->Zo:[B

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_20
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
