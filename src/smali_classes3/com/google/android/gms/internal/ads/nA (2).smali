.class final Lcom/google/android/gms/internal/ads/nA;
.super Ljava/lang/Object;


# static fields
.field private static final DW:I

.field private static final FH:I

.field private static final Hw:I

.field private static final VH:I

.field private static final Zo:I

.field private static final gn:I

.field private static final j6:I

.field private static final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/nA;->j6:I

    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/nA;->DW:I

    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/nA;->FH:I

    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/nA;->Hw:I

    const-string v0, "subt"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/nA;->v5:I

    const-string v0, "clcp"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/nA;->Zo:I

    const-string v0, "cenc"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/nA;->VH:I

    const-string v0, "meta"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/nA;->gn:I

    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;IILcom/google/android/gms/internal/ads/rA;I)I
    .registers 20

    move-object v0, p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v1

    :goto_5
    sub-int v2, v1, p1

    const/4 v3, 0x0

    move/from16 v4, p2

    if-ge v2, v4, :cond_cb

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    const/4 v5, 0x1

    if-lez v2, :cond_18

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    :goto_19
    const-string v7, "childAtomSize should be positive"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/ads/kA;->x9:I

    if-ne v6, v7, :cond_c6

    add-int/lit8 v6, v1, 0x8

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    :goto_2c
    sub-int v11, v6, v1

    if-ge v11, v2, :cond_99

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v12

    sget v13, Lcom/google/android/gms/internal/ads/kA;->br:I

    if-ne v12, v13, :cond_48

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_97

    :cond_48
    sget v13, Lcom/google/android/gms/internal/ads/kA;->Qq:I

    if-ne v12, v13, :cond_5c

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v8

    sget v12, Lcom/google/android/gms/internal/ads/nA;->VH:I

    if-ne v8, v12, :cond_5a

    const/4 v8, 0x1

    goto :goto_97

    :cond_5a
    const/4 v8, 0x0

    goto :goto_97

    :cond_5c
    sget v13, Lcom/google/android/gms/internal/ads/kA;->sy:I

    if-ne v12, v13, :cond_97

    add-int/lit8 v10, v6, 0x8

    :goto_62
    sub-int v12, v10, v6

    if-ge v12, v11, :cond_96

    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v13

    sget v14, Lcom/google/android/gms/internal/ads/kA;->aj:I

    if-ne v13, v14, :cond_94

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v10

    if-ne v10, v5, :cond_81

    const/4 v10, 0x1

    goto :goto_82

    :cond_81
    const/4 v10, 0x0

    :goto_82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v12

    const/16 v13, 0x10

    new-array v14, v13, [B

    invoke-virtual {p0, v14, v3, v13}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    new-instance v13, Lcom/google/android/gms/internal/ads/JA;

    invoke-direct {v13, v10, v12, v14}, Lcom/google/android/gms/internal/ads/JA;-><init>(ZI[B)V

    move-object v10, v13

    goto :goto_97

    :cond_94
    add-int/2addr v10, v12

    goto :goto_62

    :cond_96
    move-object v10, v7

    :cond_97
    :goto_97
    add-int/2addr v6, v11

    goto :goto_2c

    :cond_99
    if-eqz v8, :cond_b1

    if-eqz v9, :cond_9f

    const/4 v6, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v6, 0x0

    :goto_a0
    const-string v7, "frma atom is mandatory"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    if-eqz v10, :cond_a8

    const/4 v3, 0x1

    :cond_a8
    const-string v5, "schi->tenc atom is mandatory"

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    :cond_b1
    if-eqz v7, :cond_c6

    move-object/from16 v5, p3

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/rA;->j6:[Lcom/google/android/gms/internal/ads/JA;

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/JA;

    aput-object v1, v0, p4

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_c6
    move-object/from16 v5, p3

    add-int/2addr v1, v2

    goto/16 :goto_5

    :cond_cb
    return v3
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/LD;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_1d
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_28
    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_30

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    if-eq v0, v2, :cond_80

    const/16 v1, 0x21

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x23

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x40

    if-eq v0, v1, :cond_77

    const/16 v1, 0x6b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_70

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_6d

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_6a

    packed-switch v0, :pswitch_data_9a

    packed-switch v0, :pswitch_data_a4

    goto :goto_82

    :pswitch_5c  #0xaa, 0xab
    const-string p0, "audio/vnd.dts.hd"

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_63  #0xa9, 0xac
    const-string p0, "audio/vnd.dts"

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6a
    const-string v2, "audio/eac3"

    goto :goto_82

    :cond_6d
    const-string v2, "audio/ac3"

    goto :goto_82

    :cond_70
    const-string p0, "audio/mpeg"

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_77
    :pswitch_77  #0x66, 0x67, 0x68
    const-string v2, "audio/mp4a-latm"

    goto :goto_82

    :cond_7a
    const-string v2, "video/hevc"

    goto :goto_82

    :cond_7d
    const-string v2, "video/avc"

    goto :goto_82

    :cond_80
    const-string v2, "video/mp4v-es"

    :goto_82
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;)I

    move-result p1

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_9a
    .packed-switch 0x66
        :pswitch_77  #00000066
        :pswitch_77  #00000067
        :pswitch_77  #00000068
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0xa9
        :pswitch_63  #000000a9
        :pswitch_5c  #000000aa
        :pswitch_5c  #000000ab
        :pswitch_63  #000000ac
    .end packed-switch
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/mA;JLcom/google/android/gms/internal/ads/zzhp;Z)Lcom/google/android/gms/internal/ads/IA;
    .registers 55

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    sget v1, Lcom/google/android/gms/internal/ads/kA;->ei:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Mz:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v14, 0x10

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/nA;->DW:I

    const/4 v4, 0x4

    const/4 v11, -0x1

    if-ne v2, v3, :cond_23

    const/4 v10, 0x1

    goto :goto_43

    :cond_23
    sget v3, Lcom/google/android/gms/internal/ads/nA;->j6:I

    if-ne v2, v3, :cond_29

    const/4 v10, 0x2

    goto :goto_43

    :cond_29
    sget v3, Lcom/google/android/gms/internal/ads/nA;->FH:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/nA;->Hw:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/nA;->v5:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/nA;->Zo:I

    if-ne v2, v3, :cond_3a

    goto :goto_42

    :cond_3a
    sget v3, Lcom/google/android/gms/internal/ads/nA;->gn:I

    if-ne v2, v3, :cond_40

    const/4 v10, 0x4

    goto :goto_43

    :cond_40
    const/4 v10, -0x1

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v10, 0x3

    :goto_43
    const/4 v8, 0x0

    if-ne v10, v11, :cond_47

    return-object v8

    :cond_47
    sget v2, Lcom/google/android/gms/internal/ads/kA;->ef:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v3

    if-nez v3, :cond_61

    const/16 v5, 0x8

    goto :goto_63

    :cond_61
    const/16 v5, 0x10

    :goto_63
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v5

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v6

    if-nez v3, :cond_75

    const/4 v12, 0x4

    goto :goto_77

    :cond_75
    const/16 v12, 0x8

    :goto_77
    const/4 v9, 0x0

    :goto_78
    if-ge v9, v12, :cond_88

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int v20, v6, v9

    aget-byte v8, v8, v20

    if-eq v8, v11, :cond_84

    const/4 v6, 0x0

    goto :goto_89

    :cond_84
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_78

    :cond_88
    const/4 v6, 0x1

    :goto_89
    const-wide/16 v20, 0x0

    const-wide v8, -0x7fffffffffffffffL  # -4.9E-324

    if-eqz v6, :cond_96

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto :goto_a5

    :cond_96
    if-nez v3, :cond_9d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v22

    goto :goto_a1

    :cond_9d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v22

    :goto_a1
    cmp-long v3, v22, v20

    if-nez v3, :cond_a7

    :goto_a5
    move-wide v11, v8

    goto :goto_a9

    :cond_a7
    move-wide/from16 v11, v22

    :goto_a9
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    const/high16 v14, 0x10000

    const/high16 v13, -0x10000

    if-nez v3, :cond_ce

    if-ne v6, v14, :cond_ce

    if-ne v4, v13, :cond_ce

    if-nez v2, :cond_ce

    const/16 v2, 0x5a

    goto :goto_e5

    :cond_ce
    if-nez v3, :cond_d9

    if-ne v6, v13, :cond_d9

    if-ne v4, v14, :cond_d9

    if-nez v2, :cond_d9

    const/16 v2, 0x10e

    goto :goto_e5

    :cond_d9
    if-ne v3, v13, :cond_e4

    if-nez v6, :cond_e4

    if-nez v4, :cond_e4

    if-ne v2, v13, :cond_e4

    const/16 v2, 0xb4

    goto :goto_e5

    :cond_e4
    const/4 v2, 0x0

    :goto_e5
    new-instance v14, Lcom/google/android/gms/internal/ads/uA;

    invoke-direct {v14, v5, v11, v12, v2}, Lcom/google/android/gms/internal/ads/uA;-><init>(IJI)V

    cmp-long v2, p2, v8

    if-nez v2, :cond_f7

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uA;->j6(Lcom/google/android/gms/internal/ads/uA;)J

    move-result-wide v2

    move-wide/from16 v26, v2

    move-object/from16 v2, p1

    goto :goto_fb

    :cond_f7
    move-object/from16 v2, p1

    move-wide/from16 v26, p2

    :goto_fb
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v3

    if-nez v3, :cond_10d

    const/16 v3, 0x8

    goto :goto_10f

    :cond_10d
    const/16 v3, 0x10

    :goto_10f
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v32

    cmp-long v2, v26, v8

    if-nez v2, :cond_11d

    move-wide/from16 v26, v8

    goto :goto_128

    :cond_11d
    const-wide/32 v28, 0xf4240

    move-wide/from16 v30, v32

    invoke-static/range {v26 .. v31}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    move-wide/from16 v26, v2

    :goto_128
    sget v2, Lcom/google/android/gms/internal/ads/kA;->nw:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/kA;->SI:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/kA;->g3:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v3

    if-nez v3, :cond_14c

    const/16 v4, 0x8

    goto :goto_14e

    :cond_14c
    const/16 v4, 0x10

    :goto_14e
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    if-nez v3, :cond_159

    const/4 v3, 0x4

    goto :goto_15b

    :cond_159
    const/16 v3, 0x8

    :goto_15b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v1

    shr-int/lit8 v3, v1, 0xa

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    shr-int/lit8 v6, v1, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    sget v1, Lcom/google/android/gms/internal/ads/kA;->I:I

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v1

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uA;->DW(Lcom/google/android/gms/internal/ads/uA;)I

    move-result v22

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uA;->FH(Lcom/google/android/gms/internal/ads/uA;)I

    move-result v28

    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v9

    new-instance v8, Lcom/google/android/gms/internal/ads/rA;

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/rA;-><init>(I)V

    const/4 v6, 0x0

    :goto_1b4
    if-ge v6, v9, :cond_78c

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v5

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    if-lez v4, :cond_1c2

    const/4 v1, 0x1

    goto :goto_1c3

    :cond_1c2
    const/4 v1, 0x0

    :goto_1c3
    const-string v3, "childAtomSize should be positive"

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/kA;->DW:I

    if-eq v1, v2, :cond_587

    sget v2, Lcom/google/android/gms/internal/ads/kA;->FH:I

    if-eq v1, v2, :cond_587

    sget v2, Lcom/google/android/gms/internal/ads/kA;->lp:I

    if-eq v1, v2, :cond_587

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Eq:I

    if-eq v1, v2, :cond_587

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Hw:I

    if-eq v1, v2, :cond_587

    sget v2, Lcom/google/android/gms/internal/ads/kA;->v5:I

    if-eq v1, v2, :cond_587

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Zo:I

    if-eq v1, v2, :cond_587

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Jl:I

    if-eq v1, v2, :cond_587

    sget v2, Lcom/google/android/gms/internal/ads/kA;->iW:I

    if-ne v1, v2, :cond_1f2

    goto/16 :goto_587

    :cond_1f2
    sget v2, Lcom/google/android/gms/internal/ads/kA;->u7:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->OW:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->J8:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->QX:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->aM:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->U2:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->j3:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Mr:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->qp:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->k2:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->we:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->J0:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->tp:I

    if-eq v1, v2, :cond_300

    sget v2, Lcom/google/android/gms/internal/ads/kA;->sE:I

    if-ne v1, v2, :cond_22c

    goto/16 :goto_300

    :cond_22c
    sget v2, Lcom/google/android/gms/internal/ads/kA;->CU:I

    if-eq v1, v2, :cond_268

    sget v2, Lcom/google/android/gms/internal/ads/kA;->WB:I

    if-eq v1, v2, :cond_268

    sget v2, Lcom/google/android/gms/internal/ads/kA;->mb:I

    if-eq v1, v2, :cond_268

    sget v2, Lcom/google/android/gms/internal/ads/kA;->jw:I

    if-eq v1, v2, :cond_268

    sget v2, Lcom/google/android/gms/internal/ads/kA;->fY:I

    if-ne v1, v2, :cond_241

    goto :goto_268

    :cond_241
    sget v2, Lcom/google/android/gms/internal/ads/kA;->e3:I

    if-ne v1, v2, :cond_254

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-camera-motion"

    const/4 v3, -0x1

    const/4 v7, 0x0

    invoke-static {v1, v2, v7, v3, v15}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    goto :goto_256

    :cond_254
    const/4 v3, -0x1

    const/4 v7, 0x0

    :goto_256
    move/from16 v39, v6

    move/from16 v31, v9

    move/from16 v19, v10

    move-object v0, v11

    move-object/from16 v18, v14

    const/4 v7, 0x2

    const/16 v9, 0x8

    move v14, v4

    move v10, v5

    move-object v11, v8

    const/4 v8, 0x1

    goto/16 :goto_34b

    :cond_268
    :goto_268
    const/4 v3, -0x1

    const/4 v7, 0x0

    add-int/lit8 v2, v5, 0x8

    const/16 v19, 0x8

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    sget v2, Lcom/google/android/gms/internal/ads/kA;->CU:I

    const-string v24, "application/ttml+xml"

    const-wide v29, 0x7fffffffffffffffL

    if-ne v1, v2, :cond_283

    move-object/from16 v17, v7

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto :goto_2b8

    :cond_283
    sget v2, Lcom/google/android/gms/internal/ads/kA;->WB:I

    if-ne v1, v2, :cond_29d

    add-int/lit8 v1, v4, -0x8

    add-int/lit8 v1, v1, -0x8

    new-array v2, v1, [B

    const/4 v7, 0x0

    invoke-virtual {v12, v2, v7, v1}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "application/x-quicktime-tx3g"

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    const/4 v2, 0x1

    goto :goto_2b8

    :cond_29d
    const/4 v7, 0x0

    sget v2, Lcom/google/android/gms/internal/ads/kA;->mb:I

    if-ne v1, v2, :cond_2a6

    const-string v24, "application/x-mp4-vtt"

    :goto_2a4
    const/4 v2, 0x1

    goto :goto_2b6

    :cond_2a6
    sget v2, Lcom/google/android/gms/internal/ads/kA;->jw:I

    if-ne v1, v2, :cond_2ad

    move-wide/from16 v29, v20

    goto :goto_2a4

    :cond_2ad
    sget v2, Lcom/google/android/gms/internal/ads/kA;->fY:I

    if-ne v1, v2, :cond_2fa

    const/4 v2, 0x1

    iput v2, v8, Lcom/google/android/gms/internal/ads/rA;->Hw:I

    const-string v24, "application/x-mp4-cea-608"

    :goto_2b6
    const/16 v17, 0x0

    :goto_2b8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    const/16 v34, -0x1

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v37, 0x1

    move-object/from16 v2, v24

    const/16 v24, -0x1

    move-object/from16 v3, v18

    move-object/from16 v18, v14

    move v14, v4

    move/from16 v4, v34

    move/from16 v38, v5

    move/from16 v5, v35

    move/from16 v39, v6

    move-object v6, v11

    const/16 v19, 0x0

    const/16 v31, 0x0

    move/from16 v7, v36

    move-object/from16 v40, v8

    move-object/from16 v8, p4

    move/from16 v31, v9

    move/from16 v19, v10

    move-wide/from16 v9, v29

    move-object v0, v11

    move-object/from16 v11, v17

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    move-object/from16 v11, v40

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    move/from16 v10, v38

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x8

    goto :goto_34b

    :cond_2fa
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_300
    :goto_300
    move/from16 v38, v5

    move/from16 v39, v6

    move/from16 v31, v9

    move/from16 v19, v10

    move-object v0, v11

    move-object/from16 v18, v14

    move v14, v4

    move-object v11, v8

    move/from16 v10, v38

    add-int/lit8 v5, v10, 0x8

    const/16 v9, 0x8

    add-int/2addr v5, v9

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/4 v2, 0x6

    if-eqz p5, :cond_322

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v4

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto :goto_326

    :cond_322
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    const/4 v4, 0x0

    :goto_326
    if-eqz v4, :cond_35e

    const/4 v8, 0x1

    const/4 v7, 0x2

    if-ne v4, v8, :cond_32d

    goto :goto_360

    :cond_32d
    if-ne v4, v7, :cond_34b

    const/16 v2, 0x10

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    const/16 v5, 0x14

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto :goto_373

    :cond_34b
    :goto_34b
    move-object/from16 v36, v0

    move/from16 v24, v10

    move-object v0, v11

    move-object/from16 v25, v12

    move-object/from16 v48, v13

    move/from16 v23, v14

    move/from16 v16, v39

    const/16 v17, -0x1

    const/16 v29, 0x0

    goto/16 :goto_76b

    :cond_35e
    const/4 v7, 0x2

    const/4 v8, 0x1

    :goto_360
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v5

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->J8()I

    move-result v2

    if-ne v4, v8, :cond_372

    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_372
    move v4, v5

    :goto_373
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v5

    sget v6, Lcom/google/android/gms/internal/ads/kA;->OW:I

    if-ne v1, v6, :cond_385

    move/from16 v6, v39

    invoke-static {v12, v10, v14, v11, v6}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;IILcom/google/android/gms/internal/ads/rA;I)I

    move-result v1

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    goto :goto_387

    :cond_385
    move/from16 v6, v39

    :goto_387
    sget v7, Lcom/google/android/gms/internal/ads/kA;->J8:I

    const-string v8, "audio/raw"

    if-ne v1, v7, :cond_390

    const-string v1, "audio/ac3"

    goto :goto_3d9

    :cond_390
    sget v7, Lcom/google/android/gms/internal/ads/kA;->QX:I

    if-ne v1, v7, :cond_397

    const-string v1, "audio/eac3"

    goto :goto_3d9

    :cond_397
    sget v7, Lcom/google/android/gms/internal/ads/kA;->aM:I

    if-ne v1, v7, :cond_39e

    const-string v1, "audio/vnd.dts"

    goto :goto_3d9

    :cond_39e
    sget v7, Lcom/google/android/gms/internal/ads/kA;->j3:I

    if-eq v1, v7, :cond_3d7

    sget v7, Lcom/google/android/gms/internal/ads/kA;->Mr:I

    if-ne v1, v7, :cond_3a7

    goto :goto_3d7

    :cond_3a7
    sget v7, Lcom/google/android/gms/internal/ads/kA;->U2:I

    if-ne v1, v7, :cond_3ae

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_3d9

    :cond_3ae
    sget v7, Lcom/google/android/gms/internal/ads/kA;->qp:I

    if-ne v1, v7, :cond_3b5

    const-string v1, "audio/3gpp"

    goto :goto_3d9

    :cond_3b5
    sget v7, Lcom/google/android/gms/internal/ads/kA;->k2:I

    if-ne v1, v7, :cond_3bc

    const-string v1, "audio/amr-wb"

    goto :goto_3d9

    :cond_3bc
    sget v7, Lcom/google/android/gms/internal/ads/kA;->we:I

    if-eq v1, v7, :cond_3d5

    sget v7, Lcom/google/android/gms/internal/ads/kA;->J0:I

    if-ne v1, v7, :cond_3c5

    goto :goto_3d5

    :cond_3c5
    sget v7, Lcom/google/android/gms/internal/ads/kA;->tp:I

    if-ne v1, v7, :cond_3cc

    const-string v1, "audio/mpeg"

    goto :goto_3d9

    :cond_3cc
    sget v7, Lcom/google/android/gms/internal/ads/kA;->sE:I

    if-ne v1, v7, :cond_3d3

    const-string v1, "audio/alac"

    goto :goto_3d9

    :cond_3d3
    const/4 v1, 0x0

    goto :goto_3d9

    :cond_3d5
    :goto_3d5
    move-object v1, v8

    goto :goto_3d9

    :cond_3d7
    :goto_3d7
    const-string v1, "audio/vnd.dts.hd"

    :goto_3d9
    move-object v7, v1

    move/from16 v29, v2

    move/from16 v17, v4

    const/16 v30, 0x0

    :goto_3e0
    sub-int v1, v5, v10

    if-ge v1, v14, :cond_527

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    if-lez v4, :cond_3ef

    const/4 v1, 0x1

    goto :goto_3f0

    :cond_3ef
    const/4 v1, 0x0

    :goto_3f0
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/kA;->cn:I

    if-eq v1, v2, :cond_4a7

    if-eqz p5, :cond_403

    sget v2, Lcom/google/android/gms/internal/ads/kA;->EQ:I

    if-ne v1, v2, :cond_403

    goto/16 :goto_4a7

    :cond_403
    sget v2, Lcom/google/android/gms/internal/ads/kA;->Ws:I

    if-ne v1, v2, :cond_417

    add-int/lit8 v1, v5, 0x8

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0, v15}, Lcom/google/android/gms/internal/ads/Wy;->j6(Lcom/google/android/gms/internal/ads/LD;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    :goto_414
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    goto :goto_429

    :cond_417
    sget v2, Lcom/google/android/gms/internal/ads/kA;->XL:I

    if-ne v1, v2, :cond_43a

    add-int/lit8 v1, v5, 0x8

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0, v15}, Lcom/google/android/gms/internal/ads/Wy;->DW(Lcom/google/android/gms/internal/ads/LD;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    goto :goto_414

    :goto_429
    move-object/from16 v41, v3

    move v2, v4

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v47, v10

    move-object v15, v11

    const/4 v11, 0x0

    const/16 v16, 0x2

    goto/16 :goto_4a0

    :cond_43a
    sget v2, Lcom/google/android/gms/internal/ads/kA;->a8:I

    if-ne v1, v2, :cond_476

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v34, 0x0

    const/16 v35, -0x1

    const/16 v36, -0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object v2, v7

    move-object/from16 v41, v3

    move-object/from16 v3, v34

    move/from16 v42, v4

    move/from16 v4, v35

    move/from16 v43, v5

    move/from16 v5, v36

    move/from16 v44, v6

    move/from16 v6, v17

    move-object/from16 v45, v7

    const/16 v16, 0x2

    move/from16 v7, v29

    move-object/from16 v46, v8

    move-object/from16 v8, v37

    move-object/from16 v9, p4

    move/from16 v47, v10

    move/from16 v10, v38

    move-object v15, v11

    move-object v11, v0

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    goto :goto_49b

    :cond_476
    move-object/from16 v41, v3

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v47, v10

    move-object v15, v11

    const/16 v16, 0x2

    sget v2, Lcom/google/android/gms/internal/ads/kA;->sE:I

    if-ne v1, v2, :cond_49b

    move/from16 v2, v42

    new-array v1, v2, [B

    move/from16 v5, v43

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/4 v11, 0x0

    invoke-virtual {v12, v1, v11, v2}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    move-object/from16 v30, v1

    goto :goto_4a0

    :cond_49b
    :goto_49b
    move/from16 v2, v42

    move/from16 v5, v43

    const/4 v11, 0x0

    :goto_4a0
    move-object/from16 v4, v41

    move-object/from16 v7, v45

    const/4 v10, -0x1

    goto/16 :goto_518

    :cond_4a7
    :goto_4a7
    move-object/from16 v41, v3

    move v2, v4

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v47, v10

    move-object v15, v11

    const/4 v11, 0x0

    const/16 v16, 0x2

    sget v3, Lcom/google/android/gms/internal/ads/kA;->cn:I

    if-ne v1, v3, :cond_4be

    move v1, v5

    move-object/from16 v4, v41

    goto :goto_4e7

    :cond_4be
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v1

    :goto_4c2
    sub-int v3, v1, v5

    if-ge v3, v2, :cond_4e4

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    move-object/from16 v4, v41

    if-lez v3, :cond_4d3

    const/4 v9, 0x1

    goto :goto_4d4

    :cond_4d3
    const/4 v9, 0x0

    :goto_4d4
    invoke-static {v9, v4}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/ads/kA;->cn:I

    if-ne v6, v7, :cond_4e0

    goto :goto_4e7

    :cond_4e0
    add-int/2addr v1, v3

    move-object/from16 v41, v4

    goto :goto_4c2

    :cond_4e4
    move-object/from16 v4, v41

    const/4 v1, -0x1

    :goto_4e7
    const/4 v10, -0x1

    if-eq v1, v10, :cond_516

    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;I)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_513

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/DD;->j6([B)Landroid/util/Pair;

    move-result-object v3

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v29

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_513
    move-object/from16 v30, v1

    goto :goto_518

    :cond_516
    move-object/from16 v7, v45

    :goto_518
    add-int/2addr v5, v2

    move-object v3, v4

    move-object v11, v15

    move/from16 v6, v44

    move-object/from16 v8, v46

    move/from16 v10, v47

    const/16 v9, 0x8

    move-object/from16 v15, p4

    goto/16 :goto_3e0

    :cond_527
    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v47, v10

    move-object v15, v11

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x2

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    if-nez v1, :cond_571

    move-object/from16 v7, v45

    if-eqz v7, :cond_571

    move-object/from16 v1, v46

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_546

    const/4 v8, 0x2

    goto :goto_547

    :cond_546
    const/4 v8, -0x1

    :goto_547
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v30, :cond_54f

    const/4 v9, 0x0

    goto :goto_554

    :cond_54f
    invoke-static/range {v30 .. v30}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v9, v2

    :goto_554
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v24, 0x0

    move-object v2, v7

    move/from16 v6, v17

    move/from16 v7, v29

    const/16 v17, -0x1

    move-object/from16 v10, p4

    const/16 v29, 0x0

    move/from16 v11, v24

    move-object/from16 p1, v13

    move-object v13, v12

    move-object v12, v0

    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    goto :goto_578

    :cond_571
    move-object/from16 p1, v13

    const/16 v17, -0x1

    const/16 v29, 0x0

    move-object v13, v12

    :goto_578
    move-object/from16 v48, p1

    move-object/from16 v36, v0

    move-object/from16 v25, v13

    move/from16 v23, v14

    move-object v0, v15

    move/from16 v16, v44

    move/from16 v24, v47

    goto/16 :goto_76b

    :cond_587
    :goto_587
    move/from16 v47, v5

    move/from16 v44, v6

    move-object v15, v8

    move/from16 v31, v9

    move/from16 v19, v10

    move-object v0, v11

    move-object/from16 p1, v13

    move-object/from16 v18, v14

    const/16 v17, -0x1

    const/16 v29, 0x0

    move v14, v4

    move-object v13, v12

    move-object v4, v3

    move/from16 v12, v47

    add-int/lit8 v5, v12, 0x8

    const/16 v11, 0x8

    add-int/2addr v5, v11

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/16 v10, 0x10

    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v6

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v7

    const/16 v2, 0x32

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/kA;->lp:I

    move/from16 v9, v44

    if-ne v1, v3, :cond_5c9

    invoke-static {v13, v12, v14, v15, v9}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;IILcom/google/android/gms/internal/ads/rA;I)I

    move-result v1

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    :cond_5c9
    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000  # 1.0f

    const/16 v30, 0x0

    const/16 v34, -0x1

    :goto_5d5
    sub-int v8, v2, v12

    if-ge v8, v14, :cond_71a

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v8

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v10

    if-nez v10, :cond_5ee

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v36

    sub-int v11, v36, v12

    if-eq v11, v14, :cond_71a

    :cond_5ee
    if-lez v10, :cond_5f2

    const/4 v11, 0x1

    goto :goto_5f3

    :cond_5f2
    const/4 v11, 0x0

    :goto_5f3
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v11

    move-object/from16 v36, v0

    sget v0, Lcom/google/android/gms/internal/ads/kA;->KD:I

    if-ne v11, v0, :cond_620

    if-nez v3, :cond_604

    const/4 v0, 0x1

    goto :goto_605

    :cond_604
    const/4 v0, 0x0

    :goto_605
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/WD;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/WD;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WD;->j6:Ljava/util/List;

    iget v8, v0, Lcom/google/android/gms/internal/ads/WD;->DW:I

    iput v8, v15, Lcom/google/android/gms/internal/ads/rA;->FH:I

    if-nez v5, :cond_61d

    iget v0, v0, Lcom/google/android/gms/internal/ads/WD;->v5:F

    move/from16 v24, v0

    :cond_61d
    const-string v0, "video/avc"

    goto :goto_63d

    :cond_620
    sget v0, Lcom/google/android/gms/internal/ads/kA;->ro:I

    if-ne v11, v0, :cond_649

    if-nez v3, :cond_628

    const/4 v0, 0x1

    goto :goto_629

    :cond_628
    const/4 v0, 0x0

    :goto_629
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/_D;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/_D;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/_D;->j6:Ljava/util/List;

    iget v0, v0, Lcom/google/android/gms/internal/ads/_D;->DW:I

    iput v0, v15, Lcom/google/android/gms/internal/ads/rA;->FH:I

    const-string v0, "video/hevc"

    :goto_63d
    move-object/from16 v23, v3

    move-object v3, v0

    :goto_640
    move/from16 v37, v1

    move-object/from16 v41, v4

    :cond_644
    :goto_644
    const/4 v4, 0x2

    :goto_645
    const/4 v8, 0x1

    const/4 v11, 0x3

    goto/16 :goto_70d

    :cond_649
    sget v0, Lcom/google/android/gms/internal/ads/kA;->eU:I

    if-ne v11, v0, :cond_660

    if-nez v3, :cond_651

    const/4 v0, 0x1

    goto :goto_652

    :cond_651
    const/4 v0, 0x0

    :goto_652
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    sget v0, Lcom/google/android/gms/internal/ads/kA;->Jl:I

    if-ne v1, v0, :cond_65c

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_65e

    :cond_65c
    const-string v0, "video/x-vnd.on2.vp9"

    :goto_65e
    move-object v3, v0

    goto :goto_640

    :cond_660
    sget v0, Lcom/google/android/gms/internal/ads/kA;->VH:I

    if-ne v11, v0, :cond_66f

    if-nez v3, :cond_668

    const/4 v0, 0x1

    goto :goto_669

    :cond_668
    const/4 v0, 0x0

    :goto_669
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    const-string v3, "video/3gpp"

    goto :goto_640

    :cond_66f
    sget v0, Lcom/google/android/gms/internal/ads/kA;->cn:I

    if-ne v11, v0, :cond_68c

    if-nez v3, :cond_677

    const/4 v0, 0x1

    goto :goto_678

    :cond_677
    const/4 v0, 0x0

    :goto_678
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    goto :goto_640

    :cond_68c
    sget v0, Lcom/google/android/gms/internal/ads/kA;->et:I

    if-ne v11, v0, :cond_6a8

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v5

    int-to-float v0, v0

    int-to-float v5, v5

    div-float v24, v0, v5

    move/from16 v37, v1

    move-object/from16 v41, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_645

    :cond_6a8
    sget v0, Lcom/google/android/gms/internal/ads/kA;->Q6:I

    if-ne v11, v0, :cond_6dc

    add-int/lit8 v0, v8, 0x8

    :goto_6ae
    sub-int v11, v0, v8

    if-ge v11, v10, :cond_6d3

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v11

    move/from16 v37, v1

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    move-object/from16 v41, v4

    sget v4, Lcom/google/android/gms/internal/ads/kA;->kf:I

    if-ne v1, v4, :cond_6cd

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int/2addr v11, v0

    invoke-static {v1, v0, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    goto :goto_6d8

    :cond_6cd
    add-int/2addr v0, v11

    move/from16 v1, v37

    move-object/from16 v4, v41

    goto :goto_6ae

    :cond_6d3
    move/from16 v37, v1

    move-object/from16 v41, v4

    const/4 v8, 0x0

    :goto_6d8
    move-object/from16 v30, v8

    goto/16 :goto_644

    :cond_6dc
    move/from16 v37, v1

    move-object/from16 v41, v4

    sget v0, Lcom/google/android/gms/internal/ads/kA;->n5:I

    if-ne v11, v0, :cond_644

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    const/4 v11, 0x3

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    if-nez v0, :cond_70b

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    if-eqz v0, :cond_706

    const/4 v8, 0x1

    const/4 v4, 0x2

    if-eq v0, v8, :cond_703

    if-eq v0, v4, :cond_700

    if-eq v0, v11, :cond_6fd

    goto :goto_70d

    :cond_6fd
    const/16 v34, 0x3

    goto :goto_70d

    :cond_700
    const/16 v34, 0x2

    goto :goto_70d

    :cond_703
    const/16 v34, 0x1

    goto :goto_70d

    :cond_706
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/16 v34, 0x0

    goto :goto_70d

    :cond_70b
    const/4 v4, 0x2

    const/4 v8, 0x1

    :goto_70d
    add-int/2addr v2, v10

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v4, v41

    const/16 v10, 0x10

    const/16 v11, 0x8

    goto/16 :goto_5d5

    :cond_71a
    move-object/from16 v36, v0

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x3

    if-eqz v3, :cond_760

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v10, -0x1

    const/high16 v16, -0x40800000  # -1.0f

    const/16 v25, 0x0

    move-object v2, v3

    move-object v3, v0

    const/4 v0, 0x2

    move v4, v5

    move v5, v10

    const/4 v10, 0x1

    move/from16 v8, v16

    move/from16 v16, v9

    move-object/from16 v9, v23

    const/4 v0, 0x1

    const/16 v23, 0x10

    move/from16 v10, v28

    const/16 v0, 0x8

    const/16 v35, 0x3

    move/from16 v11, v24

    move/from16 v24, v12

    move-object/from16 v12, v30

    move-object/from16 v48, p1

    move-object v0, v13

    const/16 v30, 0x3

    move/from16 v13, v34

    move/from16 v23, v14

    const/16 v34, 0x10

    move-object/from16 v14, v25

    move-object/from16 v25, v0

    move-object v0, v15

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzqi;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    goto :goto_76f

    :cond_760
    move-object/from16 v48, p1

    move/from16 v16, v9

    move/from16 v24, v12

    move-object/from16 v25, v13

    move/from16 v23, v14

    move-object v0, v15

    :goto_76b
    const/16 v30, 0x3

    const/16 v34, 0x10

    :goto_76f
    add-int v5, v24, v23

    move-object/from16 v1, v25

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    add-int/lit8 v6, v16, 0x1

    move-object/from16 v15, p4

    move-object v8, v0

    move-object v12, v1

    move-object/from16 v14, v18

    move/from16 v10, v19

    move/from16 v9, v31

    move-object/from16 v11, v36

    move-object/from16 v13, v48

    const/16 v7, 0x8

    move-object/from16 v0, p0

    goto/16 :goto_1b4

    :cond_78c
    move-object v0, v8

    move/from16 v19, v10

    move-object/from16 v48, v13

    move-object/from16 v18, v14

    const/16 v29, 0x0

    sget v1, Lcom/google/android/gms/internal/ads/kA;->Sf:I

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v1

    if-eqz v1, :cond_7fa

    sget v2, Lcom/google/android/gms/internal/ads/kA;->vJ:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v1

    if-nez v1, :cond_7a8

    goto :goto_7fa

    :cond_7a8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v3

    new-array v4, v3, [J

    new-array v5, v3, [J

    const/4 v9, 0x0

    :goto_7c0
    if-ge v9, v3, :cond_7f3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_7ca

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v7

    goto :goto_7ce

    :cond_7ca
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v7

    :goto_7ce
    aput-wide v7, v4, v9

    if-ne v2, v6, :cond_7d7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v7

    goto :goto_7dc

    :cond_7d7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v7

    int-to-long v7, v7

    :goto_7dc
    aput-wide v7, v5, v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Zo()S

    move-result v7

    if-ne v7, v6, :cond_7eb

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7c0

    :cond_7eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f3
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_7ff

    :cond_7fa
    :goto_7fa
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_7ff
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    if-nez v3, :cond_804

    return-object v1

    :cond_804
    new-instance v1, Lcom/google/android/gms/internal/ads/IA;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/uA;->DW(Lcom/google/android/gms/internal/ads/uA;)I

    move-result v16

    move-object/from16 v3, v48

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    iget v6, v0, Lcom/google/android/gms/internal/ads/rA;->Hw:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/rA;->j6:[Lcom/google/android/gms/internal/ads/JA;

    iget v0, v0, Lcom/google/android/gms/internal/ads/rA;->FH:I

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v8

    check-cast v28, [J

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v2

    check-cast v29, [J

    move-object v15, v1

    move/from16 v17, v19

    move-wide/from16 v18, v3

    move-wide/from16 v20, v32

    move-wide/from16 v22, v26

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v27, v0

    invoke-direct/range {v15 .. v29}, Lcom/google/android/gms/internal/ads/IA;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzfs;I[Lcom/google/android/gms/internal/ads/JA;I[J[J)V

    return-object v1
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/Tz;)Lcom/google/android/gms/internal/ads/LA;
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget v3, Lcom/google/android/gms/internal/ads/kA;->oY:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    if-eqz v3, :cond_14

    new-instance v4, Lcom/google/android/gms/internal/ads/sA;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/sA;-><init>(Lcom/google/android/gms/internal/ads/mA;)V

    goto :goto_21

    :cond_14
    sget v3, Lcom/google/android/gms/internal/ads/kA;->ko:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    if-eqz v3, :cond_4c8

    new-instance v4, Lcom/google/android/gms/internal/ads/tA;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/tA;-><init>(Lcom/google/android/gms/internal/ads/mA;)V

    :goto_21
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/qA;->FH()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_38

    new-instance v0, Lcom/google/android/gms/internal/ads/LA;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    return-object v0

    :cond_38
    sget v6, Lcom/google/android/gms/internal/ads/kA;->Ev:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_49

    sget v6, Lcom/google/android/gms/internal/ads/kA;->ye:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_4a

    :cond_49
    const/4 v8, 0x0

    :goto_4a
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    sget v9, Lcom/google/android/gms/internal/ads/kA;->jO:I

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    sget v10, Lcom/google/android/gms/internal/ads/kA;->hz:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    sget v11, Lcom/google/android/gms/internal/ads/kA;->aq:I

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_68

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    goto :goto_69

    :cond_68
    move-object v11, v12

    :goto_69
    sget v13, Lcom/google/android/gms/internal/ads/kA;->FN:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v1

    if-eqz v1, :cond_74

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    goto :goto_75

    :cond_74
    move-object v1, v12

    :goto_75
    new-instance v13, Lcom/google/android/gms/internal/ads/oA;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/gms/internal/ads/oA;-><init>(Lcom/google/android/gms/internal/ads/LD;Lcom/google/android/gms/internal/ads/LD;Z)V

    const/16 v6, 0xc

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v9

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v14

    if-eqz v1, :cond_96

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v15

    goto :goto_97

    :cond_96
    const/4 v15, 0x0

    :goto_97
    const/16 v16, -0x1

    if-eqz v11, :cond_ac

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    if-lez v6, :cond_ae

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_ae

    :cond_ac
    move-object v12, v11

    const/4 v6, 0x0

    :cond_ae
    :goto_ae
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/qA;->DW()Z

    move-result v11

    if-eqz v11, :cond_c8

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    const-string v5, "audio/raw"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    if-nez v8, :cond_c8

    if-nez v15, :cond_c8

    if-nez v6, :cond_c8

    const/4 v5, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v5, 0x0

    :goto_c9
    const-wide/16 v18, 0x0

    if-nez v5, :cond_1fe

    new-array v5, v3, [J

    new-array v11, v3, [I

    new-array v7, v3, [J

    move/from16 p1, v6

    new-array v6, v3, [I

    move-object/from16 v24, v10

    move/from16 v2, v16

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v9

    move v9, v8

    move/from16 v8, p1

    :goto_ee
    if-ge v0, v3, :cond_186

    :goto_f0
    if-nez v22, :cond_10a

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/oA;->j6()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    move/from16 p1, v14

    move/from16 v29, v15

    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/oA;->Hw:J

    move-wide/from16 v25, v14

    iget v14, v13, Lcom/google/android/gms/internal/ads/oA;->FH:I

    move/from16 v22, v14

    move/from16 v15, v29

    move/from16 v14, p1

    goto :goto_f0

    :cond_10a
    move/from16 p1, v14

    move/from16 v29, v15

    if-eqz v1, :cond_121

    :goto_110
    if-nez v21, :cond_11f

    if-lez v16, :cond_11f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v21

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v23

    add-int/lit8 v16, v16, -0x1

    goto :goto_110

    :cond_11f
    add-int/lit8 v21, v21, -0x1

    :cond_121
    move/from16 v14, v23

    aput-wide v25, v5, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/qA;->j6()I

    move-result v15

    aput v15, v11, v0

    move/from16 v23, v3

    if-le v15, v10, :cond_130

    move v10, v15

    :cond_130
    move-object v15, v4

    int-to-long v3, v14

    add-long v3, v27, v3

    aput-wide v3, v7, v0

    if-nez v12, :cond_13a

    const/4 v3, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v3, 0x0

    :goto_13b
    aput v3, v6, v0

    if-ne v0, v2, :cond_14b

    const/4 v3, 0x1

    aput v3, v6, v0

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_14b

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_14b
    move/from16 v3, v29

    move-object/from16 v29, v5

    int-to-long v4, v3

    add-long v27, v27, v4

    add-int/lit8 v4, p1, -0x1

    if-nez v4, :cond_163

    if-lez v9, :cond_163

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    add-int/lit8 v9, v9, -0x1

    goto :goto_168

    :cond_163
    move/from16 v41, v4

    move v4, v3

    move/from16 v3, v41

    :goto_168
    aget v5, v11, v0

    move/from16 v30, v2

    move/from16 p1, v3

    int-to-long v2, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v22, v22, -0x1

    add-long v25, v25, v2

    move/from16 v3, v23

    move-object/from16 v5, v29

    move/from16 v2, v30

    move/from16 v23, v14

    move/from16 v14, p1

    move-object/from16 v41, v15

    move v15, v4

    move-object/from16 v4, v41

    goto/16 :goto_ee

    :cond_186
    move/from16 v23, v3

    move-object/from16 v29, v5

    move/from16 p1, v14

    if-nez v21, :cond_190

    const/4 v0, 0x1

    goto :goto_191

    :cond_190
    const/4 v0, 0x0

    :goto_191
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    :goto_194
    if-lez v16, :cond_1a8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    if-nez v0, :cond_19e

    const/4 v0, 0x1

    goto :goto_19f

    :cond_19e
    const/4 v0, 0x0

    :goto_19f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_194

    :cond_1a8
    if-nez v8, :cond_1b6

    if-nez p1, :cond_1b6

    move/from16 v0, v22

    if-nez v0, :cond_1b8

    if-eqz v9, :cond_1b3

    goto :goto_1b8

    :cond_1b3
    move-object/from16 v1, p0

    goto :goto_1f6

    :cond_1b6
    move/from16 v0, v22

    :cond_1b8
    :goto_1b8
    move-object/from16 v1, p0

    iget v2, v1, Lcom/google/android/gms/internal/ads/IA;->j6:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xd7

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "AtomParsers"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f6
    move-wide/from16 v2, v27

    move-object/from16 v5, v29

    move/from16 v27, v10

    goto/16 :goto_292

    :cond_1fe
    move-object v1, v0

    move/from16 v23, v3

    move-object v15, v4

    iget v0, v13, Lcom/google/android/gms/internal/ads/oA;->j6:I

    new-array v2, v0, [J

    new-array v3, v0, [I

    :goto_208
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/oA;->j6()Z

    move-result v4

    if-eqz v4, :cond_219

    iget v4, v13, Lcom/google/android/gms/internal/ads/oA;->DW:I

    iget-wide v5, v13, Lcom/google/android/gms/internal/ads/oA;->Hw:J

    aput-wide v5, v2, v4

    iget v5, v13, Lcom/google/android/gms/internal/ads/oA;->FH:I

    aput v5, v3, v4

    goto :goto_208

    :cond_219
    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/qA;->j6()I

    move-result v4

    int-to-long v5, v14

    const/16 v7, 0x2000

    div-int/2addr v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_223
    if-ge v8, v0, :cond_22f

    aget v10, v3, v8

    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_223

    :cond_22f
    new-array v11, v9, [J

    new-array v12, v9, [I

    new-array v14, v9, [J

    new-array v15, v9, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_23b
    if-ge v8, v0, :cond_27c

    aget v16, v3, v8

    aget-wide v21, v2, v8

    move/from16 v41, v16

    move/from16 v16, v0

    move/from16 v0, v41

    :goto_247
    if-lez v0, :cond_273

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    aput-wide v21, v11, v10

    move-object/from16 v25, v2

    mul-int v2, v4, v24

    aput v2, v12, v10

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v26, v3

    int-to-long v2, v9

    mul-long v2, v2, v5

    aput-wide v2, v14, v10

    const/4 v2, 0x1

    aput v2, v15, v10

    aget v2, v12, v10

    int-to-long v2, v2

    add-long v21, v21, v2

    add-int v9, v9, v24

    sub-int v0, v0, v24

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    goto :goto_247

    :cond_273
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v16

    goto :goto_23b

    :cond_27c
    new-instance v0, Lcom/google/android/gms/internal/ads/xA;

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/xA;-><init>([J[II[J[ILcom/google/android/gms/internal/ads/wA;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/xA;->j6:[J

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/xA;->DW:[I

    iget v10, v0, Lcom/google/android/gms/internal/ads/xA;->FH:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/xA;->Hw:[J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/xA;->v5:[I

    move/from16 v27, v10

    move-wide/from16 v2, v18

    :goto_292
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    if-eqz v0, :cond_4ab

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Tz;->j6()Z

    move-result v0

    if-eqz v0, :cond_29e

    goto/16 :goto_4ab

    :cond_29e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    array-length v4, v0

    const/4 v10, 0x1

    if-ne v4, v10, :cond_32e

    iget v4, v1, Lcom/google/android/gms/internal/ads/IA;->DW:I

    if-ne v4, v10, :cond_32e

    array-length v4, v7

    const/4 v10, 0x2

    if-lt v4, v10, :cond_32e

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    const/4 v10, 0x0

    aget-wide v12, v4, v10

    aget-wide v28, v0, v10

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/IA;->Hw:J

    move-wide/from16 v30, v14

    move-wide/from16 v32, v8

    invoke-static/range {v28 .. v33}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v12

    aget-wide v14, v7, v10

    cmp-long v0, v14, v12

    if-gtz v0, :cond_32e

    const/4 v0, 0x1

    aget-wide v24, v7, v0

    cmp-long v4, v12, v24

    if-gez v4, :cond_32e

    array-length v4, v7

    sub-int/2addr v4, v0

    aget-wide v24, v7, v4

    cmp-long v0, v24, v8

    if-gez v0, :cond_32e

    cmp-long v0, v8, v2

    if-gtz v0, :cond_32e

    sub-long v28, v12, v14

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    int-to-long v12, v0

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    invoke-static/range {v28 .. v33}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v12

    sub-long v28, v2, v8

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    int-to-long v2, v0

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-wide/from16 v30, v2

    move-wide/from16 v32, v8

    invoke-static/range {v28 .. v33}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    cmp-long v0, v12, v18

    if-nez v0, :cond_303

    cmp-long v0, v2, v18

    if-eqz v0, :cond_32e

    :cond_303
    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v12, v8

    if-gtz v0, :cond_32e

    cmp-long v0, v2, v8

    if-gtz v0, :cond_32e

    long-to-int v0, v12

    move-object/from16 v4, p2

    iput v0, v4, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    long-to-int v0, v2

    iput v0, v4, Lcom/google/android/gms/internal/ads/Tz;->Hw:I

    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/LA;

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v26, v11

    move-object/from16 v28, v7

    move-object/from16 v29, v6

    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    return-object v0

    :cond_32e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36a

    const/16 v17, 0x0

    aget-wide v2, v0, v17

    cmp-long v0, v2, v18

    if-nez v0, :cond_36a

    const/4 v0, 0x0

    :goto_33d
    array-length v2, v7

    if-ge v0, v2, :cond_35a

    aget-wide v2, v7, v0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    aget-wide v8, v4, v17

    sub-long v18, v2, v8

    const-wide/32 v20, 0xf4240

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    aput-wide v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v17, 0x0

    goto :goto_33d

    :cond_35a
    new-instance v0, Lcom/google/android/gms/internal/ads/LA;

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v26, v11

    move-object/from16 v28, v7

    move-object/from16 v29, v6

    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    return-object v0

    :cond_36a
    iget v0, v1, Lcom/google/android/gms/internal/ads/IA;->DW:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_371

    const/4 v3, 0x1

    goto :goto_372

    :cond_371
    const/4 v3, 0x0

    :goto_372
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_376
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    array-length v9, v8

    const-wide/16 v12, -0x1

    if-ge v10, v9, :cond_3ab

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    aget-wide v14, v9, v10

    cmp-long v9, v14, v12

    if-eqz v9, :cond_3a8

    aget-wide v28, v8, v10

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/IA;->Hw:J

    move-wide/from16 v30, v8

    move-wide/from16 v32, v12

    invoke-static/range {v28 .. v33}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v8

    const/4 v12, 0x1

    invoke-static {v7, v14, v15, v12, v12}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v13

    add-long/2addr v14, v8

    const/4 v8, 0x0

    invoke-static {v7, v14, v15, v3, v8}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v9

    sub-int v8, v9, v13

    add-int/2addr v0, v8

    if-eq v4, v13, :cond_3a5

    const/4 v4, 0x1

    goto :goto_3a6

    :cond_3a5
    const/4 v4, 0x0

    :goto_3a6
    or-int/2addr v2, v4

    move v4, v9

    :cond_3a8
    add-int/lit8 v10, v10, 0x1

    goto :goto_376

    :cond_3ab
    move/from16 v4, v23

    if-eq v0, v4, :cond_3b1

    const/4 v4, 0x1

    goto :goto_3b2

    :cond_3b1
    const/4 v4, 0x0

    :goto_3b2
    or-int/2addr v2, v4

    if-eqz v2, :cond_3b8

    new-array v4, v0, [J

    goto :goto_3b9

    :cond_3b8
    move-object v4, v5

    :goto_3b9
    if-eqz v2, :cond_3be

    new-array v8, v0, [I

    goto :goto_3bf

    :cond_3be
    move-object v8, v11

    :goto_3bf
    if-eqz v2, :cond_3c3

    const/16 v27, 0x0

    :cond_3c3
    if-eqz v2, :cond_3c8

    new-array v9, v0, [I

    goto :goto_3c9

    :cond_3c8
    move-object v9, v6

    :goto_3c9
    new-array v0, v0, [J

    move/from16 v24, v27

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_3cf
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    array-length v12, v15

    if-ge v10, v12, :cond_47b

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    move-object v13, v8

    move-object/from16 v16, v9

    aget-wide v8, v12, v10

    aget-wide v31, v15, v10

    const-wide/16 v33, -0x1

    cmp-long v12, v8, v33

    if-eqz v12, :cond_45e

    move-object/from16 p1, v13

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move/from16 p2, v10

    move-object v15, v11

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/IA;->Hw:J

    move-wide/from16 v25, v31

    move-wide/from16 v27, v12

    move-wide/from16 v29, v10

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v7, v8, v9, v12, v12}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v13

    add-long/2addr v10, v8

    const/4 v12, 0x0

    invoke-static {v7, v10, v11, v3, v12}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v10

    if-eqz v2, :cond_415

    sub-int v11, v10, v13

    invoke-static {v5, v13, v4, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v12, p1

    invoke-static {v15, v13, v12, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v28, v3

    move-object/from16 v3, v16

    invoke-static {v6, v13, v3, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_41b

    :cond_415
    move-object/from16 v12, p1

    move/from16 v28, v3

    move-object/from16 v3, v16

    :goto_41b
    move/from16 v11, v24

    :goto_41d
    if-ge v13, v10, :cond_457

    const-wide/32 v23, 0xf4240

    move-object/from16 p1, v5

    move-object/from16 v16, v6

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/IA;->Hw:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v5

    aget-wide v21, v7, v13

    sub-long v35, v21, v8

    const-wide/32 v37, 0xf4240

    move-wide/from16 v21, v8

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-wide/from16 v39, v8

    invoke-static/range {v35 .. v40}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v8

    add-long/2addr v5, v8

    aput-wide v5, v0, v14

    if-eqz v2, :cond_44c

    aget v5, v12, v14

    if-le v5, v11, :cond_44c

    aget v11, v15, v13

    :cond_44c
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, v16

    move-wide/from16 v8, v21

    goto :goto_41d

    :cond_457
    move-object/from16 p1, v5

    move-object/from16 v16, v6

    move/from16 v24, v11

    goto :goto_46a

    :cond_45e
    move/from16 v28, v3

    move-object/from16 p1, v5

    move/from16 p2, v10

    move-object v15, v11

    move-object v12, v13

    move-object/from16 v3, v16

    move-object/from16 v16, v6

    :goto_46a
    add-long v18, v18, v31

    add-int/lit8 v10, p2, 0x1

    move-object/from16 v5, p1

    move-object v9, v3

    move-object v8, v12

    move-object v11, v15

    move-object/from16 v6, v16

    move/from16 v3, v28

    move-wide/from16 v12, v33

    goto/16 :goto_3cf

    :cond_47b
    move-object v12, v8

    move-object v3, v9

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_47f
    array-length v2, v3

    if-ge v10, v2, :cond_491

    if-nez v1, :cond_491

    aget v2, v3, v10

    const/4 v5, 0x1

    and-int/2addr v2, v5

    if-eqz v2, :cond_48c

    const/4 v2, 0x1

    goto :goto_48d

    :cond_48c
    const/4 v2, 0x0

    :goto_48d
    or-int/2addr v1, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_47f

    :cond_491
    if-eqz v1, :cond_4a3

    new-instance v1, Lcom/google/android/gms/internal/ads/LA;

    move-object/from16 v21, v1

    move-object/from16 v22, v4

    move-object/from16 v23, v12

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    return-object v1

    :cond_4a3
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4ab
    :goto_4ab
    move-object/from16 p1, v5

    move-object/from16 v16, v6

    move-object v15, v11

    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/IA;->FH:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/LA;

    move-object/from16 v24, v0

    move-object/from16 v25, p1

    move-object/from16 v26, v15

    move-object/from16 v28, v7

    move-object/from16 v29, v16

    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    return-object v0

    :cond_4c8
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    goto :goto_4d1

    :goto_4d0
    throw v0

    :goto_4d1
    goto :goto_4d0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/mA;Z)Lcom/google/android/gms/internal/ads/zzki;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v1

    if-lt v1, p1, :cond_77

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    sget v4, Lcom/google/android/gms/internal/ads/kA;->AL:I

    if-ne v3, v4, :cond_71

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :goto_29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v3

    add-int v4, v1, v2

    if-ge v3, v4, :cond_70

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v5

    sget v6, Lcom/google/android/gms/internal/ads/kA;->w9:I

    if-ne v5, v6, :cond_6a

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v1

    add-int v2, v3, v4

    if-ge v1, v2, :cond_5e

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/CA;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/zzki$zza;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_5e
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_70

    new-instance p0, Lcom/google/android/gms/internal/ads/zzki;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzki;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_6a
    add-int/lit8 v4, v4, -0x8

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto :goto_29

    :cond_70
    return-object v0

    :cond_71
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto :goto_b

    :cond_77
    return-object v0
.end method
