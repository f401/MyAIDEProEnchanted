.class public final Lcom/google/android/gms/internal/ads/SG;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
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

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->FH:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->v5:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    sget-object v1, Lcom/google/android/gms/internal/ads/gw;->DW:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->EQ:Lcom/google/android/gms/internal/ads/mG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->FH:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->v5:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Vv;->j6(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(I)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_43

    if-eqz v1, :cond_43

    const/16 v2, 0xc

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v1, :cond_4e

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    if-eqz v1, :cond_6b

    array-length v1, v1

    if-lez v1, :cond_6b

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_57
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    array-length v4, v3

    if-ge v1, v4, :cond_66

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Vv;->j6(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_66
    add-int/2addr v0, v2

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_6b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    if-eqz v1, :cond_76

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    if-eqz v1, :cond_81

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_81
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->EQ:Lcom/google/android/gms/internal/ads/mG;

    if-eqz v1, :cond_8c

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    if-eqz v1, :cond_97

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_97
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 8

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_10a

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/google/android/gms/internal/ads/OG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/OG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    goto/16 :goto_c2

    :sswitch_1e
    invoke-static {}, Lcom/google/android/gms/internal/ads/mG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->EQ:Lcom/google/android/gms/internal/ads/mG;

    goto :goto_0

    :sswitch_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    if-nez v0, :cond_36

    new-instance v0, Lcom/google/android/gms/internal/ads/RG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/RG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    goto/16 :goto_c2

    :sswitch_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    if-nez v0, :cond_45

    new-instance v0, Lcom/google/android/gms/internal/ads/QG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/QG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    goto/16 :goto_c2

    :sswitch_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->FH(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v2

    const/4 v3, 0x0

    :goto_56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->tp()I

    move-result v4

    if-lez v4, :cond_62

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_62
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    if-nez v2, :cond_6b

    const/4 v4, 0x0

    goto :goto_6c

    :cond_6b
    array-length v4, v2

    :goto_6c
    add-int/2addr v3, v4

    new-array v5, v3, [J

    if-eqz v4, :cond_74

    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_74
    :goto_74
    if-ge v4, v3, :cond_7f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    :cond_7f
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->Hw(I)V

    goto/16 :goto_0

    :sswitch_86
    const/16 v0, 0x70

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    if-nez v2, :cond_92

    const/4 v3, 0x0

    goto :goto_93

    :cond_92
    array-length v3, v2

    :goto_93
    add-int/2addr v0, v3

    new-array v4, v0, [J

    if-eqz v3, :cond_9b

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9b
    :goto_9b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_ab

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v1

    aput-wide v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    :cond_ab
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    aput-wide v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    goto/16 :goto_0

    :sswitch_b5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    if-nez v0, :cond_c0

    new-instance v0, Lcom/google/android/gms/internal/ads/TG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/TG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    :goto_c2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto/16 :goto_0

    :sswitch_c7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v2

    if-eqz v2, :cond_e0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e0

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_e0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto/16 :goto_0

    :cond_e0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    goto/16 :goto_0

    :sswitch_e8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->v5:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_fc
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->FH:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_108
    return-object p0

    nop

    :sswitch_data_10a
    .sparse-switch
        0x0 -> :sswitch_108
        0x48 -> :sswitch_fc
        0x52 -> :sswitch_f4
        0x58 -> :sswitch_e8
        0x60 -> :sswitch_c7
        0x6a -> :sswitch_b5
        0x70 -> :sswitch_86
        0x72 -> :sswitch_49
        0x7a -> :sswitch_3a
        0x82 -> :sswitch_2b
        0x8a -> :sswitch_1e
        0x92 -> :sswitch_f
    .end sparse-switch
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->FH:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_16

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->v5:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Vv;->Hw(I)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->Zo:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_36

    if-eqz v0, :cond_36

    const/16 v2, 0xc

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->VH:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v0, :cond_3f

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    if-eqz v0, :cond_55

    array-length v0, v0

    if-lez v0, :cond_55

    :goto_46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    array-length v2, v0

    if-ge v1, v2, :cond_55

    const/16 v2, 0xe

    aget-wide v3, v0, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->j6(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;

    if-eqz v0, :cond_5e

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->tp:Lcom/google/android/gms/internal/ads/RG;

    if-eqz v0, :cond_67

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->EQ:Lcom/google/android/gms/internal/ads/mG;

    if-eqz v0, :cond_70

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    if-eqz v0, :cond_79

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_79
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
