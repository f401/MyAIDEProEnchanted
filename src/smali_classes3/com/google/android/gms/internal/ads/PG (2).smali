.class public final Lcom/google/android/gms/internal/ads/PG;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/PG;",
        ">;"
    }
.end annotation


# instance fields
.field public FH:Ljava/lang/String;

.field private Hw:[Lcom/google/android/gms/internal/ads/fG;

.field private VH:Lcom/google/android/gms/internal/ads/FG;

.field private Zo:Lcom/google/android/gms/internal/ads/FG;

.field private v5:Lcom/google/android/gms/internal/ads/FG;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->FH:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/fG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->v5:Lcom/google/android/gms/internal/ads/FG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->VH:Lcom/google/android/gms/internal/ads/FG;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->FH:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->v5:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_38

    if-eqz v1, :cond_38

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_48

    if-eqz v1, :cond_48

    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->VH:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_58

    if-eqz v1, :cond_58

    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_ae

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x18

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-eq v0, v1, :cond_50

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x28

    if-eq v0, v1, :cond_24

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v4

    if-eqz v4, :cond_33

    if-eq v4, v3, :cond_33

    if-eq v4, v2, :cond_33

    goto :goto_5e

    :cond_33
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->VH:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_3a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v4

    if-eqz v4, :cond_49

    if-eq v4, v3, :cond_49

    if-eq v4, v2, :cond_49

    goto :goto_5e

    :cond_49
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v4

    if-eqz v4, :cond_65

    if-eq v4, v3, :cond_65

    if-eq v4, v2, :cond_65

    :goto_5e
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto :goto_0

    :cond_65
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->v5:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_6c
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    const/4 v2, 0x0

    if-nez v1, :cond_77

    const/4 v3, 0x0

    goto :goto_78

    :cond_77
    array-length v3, v1

    :goto_78
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/ads/fG;

    if-eqz v3, :cond_80

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_80
    :goto_80
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_96

    invoke-static {}, Lcom/google/android/gms/internal/ads/fG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/fG;

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    :cond_96
    invoke-static {}, Lcom/google/android/gms/internal/ads/fG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fG;

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    goto/16 :goto_0

    :cond_a6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->FH:Ljava/lang/String;

    goto/16 :goto_0

    :cond_ae
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->FH:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->v5:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_2e

    if-eqz v0, :cond_2e

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_3c

    if-eqz v0, :cond_3c

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->VH:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_4a

    if-eqz v0, :cond_4a

    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_4a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
