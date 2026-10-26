.class public final Lcom/google/android/gms/internal/ads/PG;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv",
        "<",
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
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->FH:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/fG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->v5:Lcom/google/android/gms/internal/ads/FG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->VH:Lcom/google/android/gms/internal/ads/FG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->FH:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->v5:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->VH:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .locals 9

    const/16 v8, 0x12

    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xa

    if-eq v2, v0, :cond_c

    if-eq v2, v8, :cond_9

    const/16 v0, 0x18

    if-eq v2, v0, :cond_7

    const/16 v0, 0x20

    if-eq v2, v0, :cond_5

    const/16 v0, 0x28

    if-eq v2, v0, :cond_2

    invoke-super {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_4

    if-eq v3, v7, :cond_4

    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->VH:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_6

    if-ne v3, v7, :cond_3

    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v6, :cond_8

    if-ne v3, v7, :cond_3

    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->v5:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_9
    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    if-nez v3, :cond_a

    move v0, v1

    :goto_1
    add-int v4, v2, v0

    new-array v5, v4, [Lcom/google/android/gms/internal/ads/fG;

    if-eqz v0, :cond_d

    invoke-static {v3, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    :goto_2
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/ads/fG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fG;

    aput-object v0, v5, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_a
    array-length v0, v3

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/fG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fG;

    aput-object v0, v5, v2

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->FH:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    move v2, v0

    goto :goto_2
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->FH:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PG;->Hw:[Lcom/google/android/gms/internal/ads/fG;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->v5:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PG;->VH:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
