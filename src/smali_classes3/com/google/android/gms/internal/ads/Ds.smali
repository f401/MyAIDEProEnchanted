.class public final Lcom/google/android/gms/internal/ads/Ds;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/Ds;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Ljava/lang/Long;

.field private Hw:Ljava/lang/Integer;

.field private VH:Ljava/lang/Long;

.field private Zo:[I

.field private v5:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->FH:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->Hw:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->v5:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/ads/gw;->j6:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->VH:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->FH:Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->Hw:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->v5:Ljava/lang/Boolean;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    if-eqz v1, :cond_4b

    array-length v1, v1

    if-lez v1, :cond_4b

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_37
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    array-length v5, v4

    if-ge v1, v5, :cond_46

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_46
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->VH:Ljava/lang/Long;

    if-eqz v1, :cond_59

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->FH(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_59
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 8

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_be

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_9a

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6d

    const/16 v1, 0x22

    if-eq v0, v1, :cond_31

    const/16 v1, 0x28

    if-eq v0, v1, :cond_26

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->VH:Ljava/lang/Long;

    goto :goto_0

    :cond_31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->FH(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->tp()I

    move-result v4

    if-lez v4, :cond_4a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_4a
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    if-nez v1, :cond_53

    const/4 v4, 0x0

    goto :goto_54

    :cond_53
    array-length v4, v1

    :goto_54
    add-int/2addr v3, v4

    new-array v5, v3, [I

    if-eqz v4, :cond_5c

    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5c
    :goto_5c
    if-ge v4, v3, :cond_67

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_67
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->Hw(I)V

    goto :goto_0

    :cond_6d
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    if-nez v1, :cond_77

    const/4 v3, 0x0

    goto :goto_78

    :cond_77
    array-length v3, v1

    :goto_78
    add-int/2addr v0, v3

    new-array v4, v0, [I

    if-eqz v3, :cond_80

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_80
    :goto_80
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_90

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    :cond_90
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    aput v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    goto/16 :goto_0

    :cond_9a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->VH()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->v5:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_a6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->Hw:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_b2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->FH:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_be
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->FH:Ljava/lang/Long;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->Hw:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->v5:Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(IZ)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    if-eqz v0, :cond_3a

    array-length v0, v0

    if-lez v0, :cond_3a

    const/4 v0, 0x0

    :goto_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ds;->Zo:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3a

    const/4 v2, 0x4

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ds;->VH:Ljava/lang/Long;

    if-eqz v0, :cond_46

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->j6(IJ)V

    :cond_46
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
