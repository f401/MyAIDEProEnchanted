.class public final Lcom/google/android/gms/internal/ads/Eu;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/Eu;",
        ">;"
    }
.end annotation


# instance fields
.field public FH:[[B

.field public Hw:[B

.field public Zo:Ljava/lang/Integer;

.field private v5:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/gw;->VH:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Eu;->Hw:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/Eu;
    .registers 7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_7d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_50

    const/16 v1, 0x12

    if-eq v0, v1, :cond_49

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    :try_start_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Bq;->FH(I)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Eu;->Zo:Ljava/lang/Integer;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2e} :catch_41

    goto :goto_0

    :cond_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    :try_start_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Bq;->DW(I)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Eu;->v5:Ljava/lang/Integer;
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_40} :catch_41

    goto :goto_0

    :catch_41
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto :goto_0

    :cond_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Eu;->Hw:[B

    goto :goto_0

    :cond_50
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    const/4 v2, 0x0

    if-nez v1, :cond_5b

    const/4 v3, 0x0

    goto :goto_5c

    :cond_5b
    array-length v3, v1

    :goto_5c
    add-int/2addr v0, v3

    new-array v4, v0, [[B

    if-eqz v3, :cond_64

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_64
    :goto_64
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_74

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    goto :goto_0

    :cond_7d
    return-object p0
.end method


# virtual methods
.method protected final FH()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    if-eqz v1, :cond_25

    array-length v1, v1

    if-lez v1, :cond_25

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    array-length v5, v4

    if-ge v1, v5, :cond_21

    aget-object v4, v4, v1

    if-eqz v4, :cond_1e

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Vv;->DW([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_21
    add-int/2addr v0, v2

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eu;->Hw:[B

    if-eqz v1, :cond_2f

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eu;->v5:Ljava/lang/Integer;

    if-eqz v1, :cond_3d

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eu;->Zo:Ljava/lang/Integer;

    if-eqz v1, :cond_4b

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4b
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Eu;->DW(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/Eu;

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_18

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eu;->Hw:[B

    if-eqz v0, :cond_20

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eu;->v5:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eu;->Zo:Ljava/lang/Integer;

    if-eqz v0, :cond_38

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_38
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
