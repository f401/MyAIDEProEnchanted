.class public final Lcom/google/android/gms/internal/ads/pw;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/pw;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Lcom/google/android/gms/internal/ads/iw;

.field public Hw:[Lcom/google/android/gms/internal/ads/ow;

.field private VH:Ljava/lang/Integer;

.field private Zo:[B

.field private v5:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->FH:Lcom/google/android/gms/internal/ads/iw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ow;->Hw()[Lcom/google/android/gms/internal/ads/ow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->Hw:[Lcom/google/android/gms/internal/ads/ow;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->v5:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->Zo:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->VH:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->FH:Lcom/google/android/gms/internal/ads/iw;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->Hw:[Lcom/google/android/gms/internal/ads/ow;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pw;->Hw:[Lcom/google/android/gms/internal/ads/ow;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->v5:[B

    if-eqz v1, :cond_32

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->Zo:[B

    if-eqz v1, :cond_3c

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->VH:Ljava/lang/Integer;

    if-eqz v1, :cond_4a

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_7c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_33

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->VH:Ljava/lang/Integer;

    goto :goto_0

    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->Zo:[B

    goto :goto_0

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->v5:[B

    goto :goto_0

    :cond_3a
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->Hw:[Lcom/google/android/gms/internal/ads/ow;

    const/4 v2, 0x0

    if-nez v1, :cond_45

    const/4 v3, 0x0

    goto :goto_46

    :cond_45
    array-length v3, v1

    :goto_46
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/ads/ow;

    if-eqz v3, :cond_4e

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_62

    new-instance v1, Lcom/google/android/gms/internal/ads/ow;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ow;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_62
    new-instance v0, Lcom/google/android/gms/internal/ads/ow;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ow;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/pw;->Hw:[Lcom/google/android/gms/internal/ads/ow;

    goto :goto_0

    :cond_6f
    invoke-static {}, Lcom/google/android/gms/internal/ads/iw;->J0()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/iw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->FH:Lcom/google/android/gms/internal/ads/iw;

    goto :goto_0

    :cond_7c
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->FH:Lcom/google/android/gms/internal/ads/iw;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->Hw:[Lcom/google/android/gms/internal/ads/ow;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->Hw:[Lcom/google/android/gms/internal/ads/ow;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->v5:[B

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->Zo:[B

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->VH:Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_3c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
