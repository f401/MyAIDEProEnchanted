.class public final Lcom/google/android/gms/internal/ads/SG;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv",
        "<",
        "Lcom/google/android/gms/internal/ads/SG;",
        ">;"
    }
.end annotation


# instance fields
.field private EQ:Lcom/google/android/gms/internal/ads/mG;

.field private FH:Ljava/lang/Integer;

.field public Hw:Ljava/lang/String;

.field private VH:Lcom/google/android/gms/internal/ads/TG;

.field private Zo:Lcom/google/android/gms/internal/ads/FG;

.field public gn:[J

.field private tp:Lcom/google/android/gms/internal/ads/RG;

.field public u7:Lcom/google/android/gms/internal/ads/QG;

.field private v5:Ljava/lang/Integer;

.field public we:Lcom/google/android/gms/internal/ads/OG;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->FH:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->v5:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    sget-object v0, Lcom/google/android/gms/internal/ads/gw;->DW:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->EQ:Lcom/google/android/gms/internal/ads/mG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .registers 7

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->FH:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/16 v3, 0x9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->v5:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Vv;->j6(I)I

    move-result v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_3

    const/16 v3, 0xc

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v1, :cond_4

    const/16 v3, 0xd

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    array-length v4, v2

    if-ge v1, v4, :cond_5

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Vv;->j6(J)I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_5
    add-int/2addr v0, v3

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    if-eqz v1, :cond_7

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    if-eqz v1, :cond_8

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->EQ:Lcom/google/android/gms/internal/ads/mG;

    if-eqz v1, :cond_9

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    if-eqz v1, :cond_a

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 8

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/OG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/OG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->EQ:Lcom/google/android/gms/internal/ads/mG;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/RG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/RG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/QG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/QG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->FH(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v2

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->tp()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    if-nez v2, :cond_6

    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    array-length v2, v2

    goto :goto_2

    :cond_7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/Uv;->Hw(I)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x70

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_5
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    array-length v0, v0

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/TG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/TG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_c

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto/16 :goto_0

    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->v5:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->FH:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x48 -> :sswitch_b
        0x52 -> :sswitch_a
        0x58 -> :sswitch_9
        0x60 -> :sswitch_8
        0x6a -> :sswitch_7
        0x70 -> :sswitch_6
        0x72 -> :sswitch_5
        0x7a -> :sswitch_4
        0x82 -> :sswitch_3
        0x8a -> :sswitch_2
        0x92 -> :sswitch_1
    .end sparse-switch
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->FH:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->v5:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(II)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Vv;->Hw(I)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_3

    const/16 v2, 0xc

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v1, :cond_4

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    array-length v2, v1

    if-ge v0, v2, :cond_5

    const/16 v2, 0xe

    aget-wide v4, v1, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Vv;->j6(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    if-eqz v0, :cond_6

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    if-eqz v0, :cond_7

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->EQ:Lcom/google/android/gms/internal/ads/mG;

    if-eqz v0, :cond_8

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    if-eqz v0, :cond_9

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
