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
    .locals 1

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
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    and-int/lit16 v0, v0, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;IILcom/google/android/gms/internal/ads/rA;I)I
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v1

    move v8, v1

    :goto_0
    const/4 v5, 0x0

    sub-int v1, v8, p1

    move/from16 v0, p2

    if-ge v1, v0, :cond_a

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v1, 0x1

    :goto_1
    const-string v2, "childAtomSize should be positive"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/kA;->x9:I

    if-ne v1, v2, :cond_9

    add-int/lit8 v1, v8, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v1

    :goto_2
    sub-int v1, v7, v8

    if-ge v1, v9, :cond_7

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v11, Lcom/google/android/gms/internal/ads/kA;->br:I

    if-ne v1, v11, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    add-int/2addr v7, v10

    move-object v2, v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sget v11, Lcom/google/android/gms/internal/ads/kA;->Qq:I

    if-ne v1, v11, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v4, Lcom/google/android/gms/internal/ads/nA;->VH:I

    if-ne v1, v4, :cond_2

    const/4 v4, 0x1

    move-object v1, v2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    move-object v1, v2

    goto :goto_3

    :cond_3
    sget v11, Lcom/google/android/gms/internal/ads/kA;->sy:I

    if-ne v1, v11, :cond_d

    add-int/lit8 v1, v7, 0x8

    :goto_4
    sub-int v3, v1, v7

    if-ge v3, v10, :cond_6

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v11

    sget v12, Lcom/google/android/gms/internal/ads/kA;->aj:I

    if-ne v11, v12, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v11

    const/16 v3, 0x10

    new-array v12, v3, [B

    const/4 v3, 0x0

    const/16 v13, 0x10

    invoke-virtual {p0, v12, v3, v13}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    new-instance v3, Lcom/google/android/gms/internal/ads/JA;

    invoke-direct {v3, v1, v11, v12}, Lcom/google/android/gms/internal/ads/JA;-><init>(ZI[B)V

    move-object v1, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    add-int/2addr v1, v3

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    move-object v1, v2

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_c

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    :goto_6
    const-string v4, "frma atom is mandatory"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    if-eqz v3, :cond_b

    const/4 v1, 0x1

    :goto_7
    const-string v4, "schi->tenc atom is mandatory"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    move-object v2, v1

    :goto_8
    if-eqz v2, :cond_9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/rA;->j6:[Lcom/google/android/gms/internal/ads/JA;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/JA;

    aput-object v1, v3, p4

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_9
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    add-int v1, v8, v9

    move v8, v1

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    move v1, v5

    goto :goto_7

    :cond_c
    move-object v2, v6

    goto :goto_8

    :cond_d
    move-object v1, v2

    goto/16 :goto_3
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/LD;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;)I

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_9

    const/16 v2, 0x21

    if-eq v1, v2, :cond_8

    const/16 v2, 0x23

    if-eq v1, v2, :cond_7

    const/16 v2, 0x40

    if-eq v1, v2, :cond_6

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa5

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa6

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    const-string v1, "audio/vnd.dts.hd"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const-string v1, "audio/vnd.dts"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "audio/eac3"

    goto :goto_0

    :cond_4
    const-string v0, "audio/ac3"

    goto :goto_0

    :cond_5
    const-string v1, "audio/mpeg"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_6
    :pswitch_2
    const-string v0, "audio/mp4a-latm"

    goto :goto_0

    :cond_7
    const-string v0, "video/hevc"

    goto :goto_0

    :cond_8
    const-string v0, "video/avc"

    goto :goto_0

    :cond_9
    const-string v0, "video/mp4v-es"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/mA;JLcom/google/android/gms/internal/ads/zzhp;Z)Lcom/google/android/gms/internal/ads/IA;
    .locals 46

    sget v6, Lcom/google/android/gms/internal/ads/kA;->ei:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v12

    sget v6, Lcom/google/android/gms/internal/ads/kA;->Mz:I

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/ads/nA;->DW:I

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    move/from16 v38, v6

    :goto_0
    const/4 v6, -0x1

    move/from16 v0, v38

    if-ne v0, v6, :cond_5

    const/4 v13, 0x0

    :goto_1
    return-object v13

    :cond_0
    sget v7, Lcom/google/android/gms/internal/ads/nA;->j6:I

    if-ne v6, v7, :cond_1

    const/4 v6, 0x2

    move/from16 v38, v6

    goto :goto_0

    :cond_1
    sget v7, Lcom/google/android/gms/internal/ads/nA;->FH:I

    if-eq v6, v7, :cond_2

    sget v7, Lcom/google/android/gms/internal/ads/nA;->Hw:I

    if-eq v6, v7, :cond_2

    sget v7, Lcom/google/android/gms/internal/ads/nA;->v5:I

    if-eq v6, v7, :cond_2

    sget v7, Lcom/google/android/gms/internal/ads/nA;->Zo:I

    if-ne v6, v7, :cond_3

    :cond_2
    const/4 v6, 0x3

    move/from16 v38, v6

    goto :goto_0

    :cond_3
    sget v7, Lcom/google/android/gms/internal/ads/nA;->gn:I

    if-ne v6, v7, :cond_4

    const/4 v6, 0x4

    move/from16 v38, v6

    goto :goto_0

    :cond_4
    const/4 v6, -0x1

    move/from16 v38, v6

    goto :goto_0

    :cond_5
    sget v6, Lcom/google/android/gms/internal/ads/kA;->ef:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v6

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v6, 0x8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v9

    if-nez v9, :cond_c

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v10

    const/4 v6, 0x4

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v11

    if-nez v9, :cond_d

    const/4 v6, 0x4

    :goto_3
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_f

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int v14, v11, v7

    aget-byte v13, v13, v14

    const/4 v14, -0x1

    if-eq v13, v14, :cond_e

    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_10

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :goto_6
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :cond_6
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v11

    const/4 v13, 0x4

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v8

    if-nez v9, :cond_12

    const/high16 v14, 0x10000

    if-ne v11, v14, :cond_12

    const/high16 v14, -0x10000

    if-ne v13, v14, :cond_12

    if-nez v8, :cond_12

    const/16 v8, 0x5a

    :goto_7
    new-instance v39, Lcom/google/android/gms/internal/ads/uA;

    move-object/from16 v0, v39

    invoke-direct {v0, v10, v6, v7, v8}, Lcom/google/android/gms/internal/ads/uA;-><init>(IJI)V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, p2, v6

    if-nez v6, :cond_65

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/internal/ads/uA;->j6(Lcom/google/android/gms/internal/ads/uA;)J

    move-result-wide v6

    :goto_8
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v8, 0x8

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v8

    if-nez v8, :cond_15

    const/16 v8, 0x8

    :goto_9
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v10

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v6, v8

    if-nez v8, :cond_16

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v34, v6

    :goto_a
    sget v6, Lcom/google/android/gms/internal/ads/kA;->nw:I

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v6

    sget v7, Lcom/google/android/gms/internal/ads/kA;->SI:I

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->g3:I

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v6

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v6, 0x8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v9

    if-nez v9, :cond_17

    const/16 v6, 0x8

    :goto_b
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v12

    if-nez v9, :cond_18

    const/4 v6, 0x4

    :goto_c
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v6

    shr-int/lit8 v8, v6, 0xa

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    shr-int/lit8 v9, v6, 0x5

    and-int/lit8 v9, v9, 0x1f

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v40

    sget v6, Lcom/google/android/gms/internal/ads/kA;->I:I

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v6

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v41, v0

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/internal/ads/uA;->DW(Lcom/google/android/gms/internal/ads/uA;)I

    move-result v42

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/internal/ads/uA;->FH(Lcom/google/android/gms/internal/ads/uA;)I

    move-result v43

    move-object/from16 v0, v40

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0xc

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v44

    new-instance v37, Lcom/google/android/gms/internal/ads/rA;

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/rA;-><init>(I)V

    const/16 v36, 0x0

    move-object/from16 v17, v6

    :goto_d
    move/from16 v0, v36

    move/from16 v1, v44

    if-ge v0, v1, :cond_5a

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v33

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v45

    if-lez v45, :cond_19

    const/4 v6, 0x1

    :goto_e
    const-string v14, "childAtomSize should be positive"

    const-string v7, "childAtomSize should be positive"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v12

    sget v6, Lcom/google/android/gms/internal/ads/kA;->DW:I

    if-eq v12, v6, :cond_7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->FH:I

    if-eq v12, v6, :cond_7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->lp:I

    if-eq v12, v6, :cond_7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->Eq:I

    if-eq v12, v6, :cond_7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->Hw:I

    if-eq v12, v6, :cond_7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->v5:I

    if-eq v12, v6, :cond_7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->Zo:I

    if-eq v12, v6, :cond_7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->Jl:I

    if-eq v12, v6, :cond_7

    sget v6, Lcom/google/android/gms/internal/ads/kA;->iW:I

    if-ne v12, v6, :cond_1a

    :cond_7
    const-string v8, "childAtomSize should be positive"

    add-int/lit8 v6, v33, 0x8

    add-int/lit8 v6, v6, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/16 v6, 0x10

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v23

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v24

    const/16 v6, 0x32

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/ads/kA;->lp:I

    if-ne v12, v7, :cond_8

    move-object/from16 v0, v41

    move/from16 v1, v33

    move/from16 v2, v45

    move-object/from16 v3, v37

    move/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;IILcom/google/android/gms/internal/ads/rA;I)I

    move-result v12

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    :cond_8
    const/16 v19, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, -0x1

    move v14, v6

    move v9, v12

    :goto_f
    sub-int v6, v14, v33

    move/from16 v0, v45

    if-ge v6, v0, :cond_58

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v7

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v6

    sub-int v6, v6, v33

    move/from16 v0, v45

    if-eq v6, v0, :cond_58

    :cond_9
    if-lez v15, :cond_45

    const/4 v6, 0x1

    :goto_10
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    sget v12, Lcom/google/android/gms/internal/ads/kA;->KD:I

    if-ne v6, v12, :cond_47

    if-nez v19, :cond_46

    const/4 v6, 0x1

    :goto_11
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    add-int/lit8 v6, v7, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-static/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/WD;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/WD;

    move-result-object v7

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/WD;->j6:Ljava/util/List;

    iget v12, v7, Lcom/google/android/gms/internal/ads/WD;->DW:I

    move-object/from16 v0, v37

    iput v12, v0, Lcom/google/android/gms/internal/ads/rA;->FH:I

    if-nez v13, :cond_a

    iget v0, v7, Lcom/google/android/gms/internal/ads/WD;->v5:F

    move/from16 v28, v0

    :cond_a
    const-string v7, "video/avc"

    :goto_12
    move-object/from16 v19, v7

    move-object/from16 v26, v6

    :goto_13
    move-object v6, v8

    move v7, v9

    :goto_14
    move v12, v13

    move v9, v7

    :goto_15
    move-object v8, v6

    move v13, v12

    :cond_b
    :goto_16
    add-int v6, v14, v15

    move v14, v6

    goto :goto_f

    :cond_c
    const/16 v6, 0x10

    goto/16 :goto_2

    :cond_d
    const/16 v6, 0x8

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_10
    if-nez v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v6

    :goto_17
    const-wide/16 v14, 0x0

    cmp-long v9, v6, v14

    if-nez v9, :cond_6

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v6

    goto :goto_17

    :cond_12
    if-nez v9, :cond_13

    const/high16 v14, -0x10000

    if-ne v11, v14, :cond_13

    const/high16 v14, 0x10000

    if-ne v13, v14, :cond_13

    if-nez v8, :cond_13

    const/16 v8, 0x10e

    goto/16 :goto_7

    :cond_13
    const/high16 v14, -0x10000

    if-ne v9, v14, :cond_14

    if-nez v11, :cond_14

    if-nez v13, :cond_14

    const/high16 v9, -0x10000

    if-ne v8, v9, :cond_14

    const/16 v8, 0xb4

    goto/16 :goto_7

    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_15
    const/16 v8, 0x10

    goto/16 :goto_9

    :cond_16
    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v6

    move-wide/from16 v34, v6

    goto/16 :goto_a

    :cond_17
    const/16 v6, 0x10

    goto/16 :goto_b

    :cond_18
    const/16 v6, 0x8

    goto/16 :goto_c

    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_1a
    sget v6, Lcom/google/android/gms/internal/ads/kA;->u7:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->OW:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->J8:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->QX:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->aM:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->U2:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->j3:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->Mr:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->qp:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->k2:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->we:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->J0:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->tp:I

    if-eq v12, v6, :cond_1b

    sget v6, Lcom/google/android/gms/internal/ads/kA;->sE:I

    if-ne v12, v6, :cond_20

    :cond_1b
    add-int/lit8 v6, v33, 0x8

    add-int/lit8 v6, v6, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    if-eqz p5, :cond_29

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v6

    const/4 v7, 0x6

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    move v8, v6

    :goto_18
    if-eqz v8, :cond_1c

    const/4 v6, 0x1

    if-ne v8, v6, :cond_2a

    :cond_1c
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v7

    const/4 v6, 0x6

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->J8()I

    move-result v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    const/16 v8, 0x10

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_1d
    :goto_19
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v13

    sget v8, Lcom/google/android/gms/internal/ads/kA;->OW:I

    if-ne v12, v8, :cond_64

    move-object/from16 v0, v41

    move/from16 v1, v33

    move/from16 v2, v45

    move-object/from16 v3, v37

    move/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;IILcom/google/android/gms/internal/ads/rA;I)I

    move-result v8

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    :goto_1a
    sget v9, Lcom/google/android/gms/internal/ads/kA;->J8:I

    const-string v15, "audio/raw"

    if-ne v8, v9, :cond_2b

    const-string v8, "audio/ac3"

    :goto_1b
    const/4 v9, 0x0

    move/from16 v23, v7

    move/from16 v24, v6

    move v12, v13

    move-object/from16 v19, v8

    :goto_1c
    sub-int v6, v12, v33

    move/from16 v0, v45

    if-ge v6, v0, :cond_41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v13

    if-lez v13, :cond_37

    const/4 v6, 0x1

    :goto_1d
    invoke-static {v6, v14}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/ads/kA;->cn:I

    if-eq v6, v7, :cond_1e

    if-eqz p5, :cond_38

    sget v7, Lcom/google/android/gms/internal/ads/kA;->EQ:I

    if-ne v6, v7, :cond_38

    :cond_1e
    sget v7, Lcom/google/android/gms/internal/ads/kA;->cn:I

    if-ne v6, v7, :cond_3d

    move v6, v12

    :goto_1e
    const/4 v7, -0x1

    if-eq v6, v7, :cond_63

    move-object/from16 v0, v41

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [B

    const-string v8, "audio/mp4a-latm"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/DD;->j6([B)Landroid/util/Pair;

    move-result-object v9

    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    :cond_1f
    move-object/from16 v19, v6

    :goto_1f
    add-int/2addr v12, v13

    move-object v9, v7

    goto :goto_1c

    :cond_20
    sget v6, Lcom/google/android/gms/internal/ads/kA;->CU:I

    if-eq v12, v6, :cond_21

    sget v6, Lcom/google/android/gms/internal/ads/kA;->WB:I

    if-eq v12, v6, :cond_21

    sget v6, Lcom/google/android/gms/internal/ads/kA;->mb:I

    if-eq v12, v6, :cond_21

    sget v6, Lcom/google/android/gms/internal/ads/kA;->jw:I

    if-eq v12, v6, :cond_21

    sget v6, Lcom/google/android/gms/internal/ads/kA;->fY:I

    if-ne v12, v6, :cond_23

    :cond_21
    add-int/lit8 v6, v33, 0x8

    add-int/lit8 v6, v6, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    sget v7, Lcom/google/android/gms/internal/ads/kA;->CU:I

    const-string v6, "application/ttml+xml"

    const-wide v8, 0x7fffffffffffffffL

    if-ne v12, v7, :cond_24

    const/16 v22, 0x0

    move-object v13, v6

    move-wide/from16 v20, v8

    :goto_20
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v18, -0x1

    move-object/from16 v19, p4

    invoke-static/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v6

    move-object/from16 v0, v37

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    :cond_22
    :goto_21
    move/from16 v6, v33

    move/from16 v7, v36

    move-object/from16 v8, v37

    :goto_22
    move/from16 v33, v6

    move/from16 v36, v7

    move-object/from16 v37, v8

    :goto_23
    add-int v6, v33, v45

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_d

    :cond_23
    sget v6, Lcom/google/android/gms/internal/ads/kA;->e3:I

    if-ne v12, v6, :cond_22

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "application/x-camera-motion"

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object/from16 v0, p4

    invoke-static {v6, v7, v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v6

    move-object/from16 v0, v37

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    goto :goto_21

    :cond_24
    sget v7, Lcom/google/android/gms/internal/ads/kA;->WB:I

    if-ne v12, v7, :cond_25

    add-int/lit8 v6, v45, -0x8

    add-int/lit8 v6, v6, -0x8

    new-array v7, v6, [B

    const/4 v12, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v12, v6}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const-string v6, "application/x-quicktime-tx3g"

    move-object v13, v6

    move-wide/from16 v20, v8

    goto :goto_20

    :cond_25
    sget v7, Lcom/google/android/gms/internal/ads/kA;->mb:I

    if-ne v12, v7, :cond_26

    const-string v6, "application/x-mp4-vtt"

    :goto_24
    const/16 v22, 0x0

    move-object v13, v6

    move-wide/from16 v20, v8

    goto :goto_20

    :cond_26
    sget v7, Lcom/google/android/gms/internal/ads/kA;->jw:I

    if-ne v12, v7, :cond_27

    const-wide/16 v8, 0x0

    goto :goto_24

    :cond_27
    sget v6, Lcom/google/android/gms/internal/ads/kA;->fY:I

    if-ne v12, v6, :cond_28

    const/4 v6, 0x1

    move-object/from16 v0, v37

    iput v6, v0, Lcom/google/android/gms/internal/ads/rA;->Hw:I

    const-string v6, "application/x-mp4-cea-608"

    goto :goto_24

    :cond_28
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    :cond_29
    const/16 v6, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    const/4 v6, 0x0

    move v8, v6

    goto/16 :goto_18

    :cond_2a
    const/4 v6, 0x2

    if-ne v8, v6, :cond_22

    const/16 v6, 0x10

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v7

    const/16 v8, 0x14

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto/16 :goto_19

    :cond_2b
    sget v9, Lcom/google/android/gms/internal/ads/kA;->QX:I

    if-ne v8, v9, :cond_2c

    const-string v8, "audio/eac3"

    goto/16 :goto_1b

    :cond_2c
    sget v9, Lcom/google/android/gms/internal/ads/kA;->aM:I

    if-ne v8, v9, :cond_2d

    const-string v8, "audio/vnd.dts"

    goto/16 :goto_1b

    :cond_2d
    sget v9, Lcom/google/android/gms/internal/ads/kA;->j3:I

    if-eq v8, v9, :cond_2e

    sget v9, Lcom/google/android/gms/internal/ads/kA;->Mr:I

    if-ne v8, v9, :cond_2f

    :cond_2e
    const-string v8, "audio/vnd.dts.hd"

    goto/16 :goto_1b

    :cond_2f
    sget v9, Lcom/google/android/gms/internal/ads/kA;->U2:I

    if-ne v8, v9, :cond_30

    const-string v8, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_1b

    :cond_30
    sget v9, Lcom/google/android/gms/internal/ads/kA;->qp:I

    if-ne v8, v9, :cond_31

    const-string v8, "audio/3gpp"

    goto/16 :goto_1b

    :cond_31
    sget v9, Lcom/google/android/gms/internal/ads/kA;->k2:I

    if-ne v8, v9, :cond_32

    const-string v8, "audio/amr-wb"

    goto/16 :goto_1b

    :cond_32
    sget v9, Lcom/google/android/gms/internal/ads/kA;->we:I

    if-eq v8, v9, :cond_33

    sget v9, Lcom/google/android/gms/internal/ads/kA;->J0:I

    if-ne v8, v9, :cond_34

    :cond_33
    const-string v8, "audio/raw"

    goto/16 :goto_1b

    :cond_34
    sget v9, Lcom/google/android/gms/internal/ads/kA;->tp:I

    if-ne v8, v9, :cond_35

    const-string v8, "audio/mpeg"

    goto/16 :goto_1b

    :cond_35
    sget v9, Lcom/google/android/gms/internal/ads/kA;->sE:I

    if-ne v8, v9, :cond_36

    const-string v8, "audio/alac"

    goto/16 :goto_1b

    :cond_36
    const/4 v8, 0x0

    goto/16 :goto_1b

    :cond_37
    const/4 v6, 0x0

    goto/16 :goto_1d

    :cond_38
    sget v7, Lcom/google/android/gms/internal/ads/kA;->Ws:I

    if-ne v6, v7, :cond_39

    add-int/lit8 v6, v12, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/gms/internal/ads/Wy;->j6(Lcom/google/android/gms/internal/ads/LD;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v6

    :goto_25
    move-object/from16 v0, v37

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    move-object v6, v9

    :goto_26
    move-object v7, v6

    goto/16 :goto_1f

    :cond_39
    sget v7, Lcom/google/android/gms/internal/ads/kA;->XL:I

    if-ne v6, v7, :cond_3a

    add-int/lit8 v6, v12, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/gms/internal/ads/Wy;->DW(Lcom/google/android/gms/internal/ads/LD;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v6

    goto :goto_25

    :cond_3a
    sget v7, Lcom/google/android/gms/internal/ads/kA;->a8:I

    if-ne v6, v7, :cond_3c

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v26, p4

    move-object/from16 v28, v17

    invoke-static/range {v18 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v6

    move-object/from16 v0, v37

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    :cond_3b
    move-object v6, v9

    goto :goto_26

    :cond_3c
    sget v7, Lcom/google/android/gms/internal/ads/kA;->sE:I

    if-ne v6, v7, :cond_3b

    new-array v6, v13, [B

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/4 v7, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7, v13}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    goto :goto_26

    :cond_3d
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v7

    :goto_27
    sub-int v6, v7, v12

    if-ge v6, v13, :cond_40

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v8

    if-lez v8, :cond_3e

    const/4 v6, 0x1

    :goto_28
    invoke-static {v6, v14}, Lcom/google/android/gms/internal/ads/CD;->j6(ZLjava/lang/Object;)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    sget v16, Lcom/google/android/gms/internal/ads/kA;->cn:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_3f

    move v6, v7

    goto/16 :goto_1e

    :cond_3e
    const/4 v6, 0x0

    goto :goto_28

    :cond_3f
    add-int/2addr v7, v8

    goto :goto_27

    :cond_40
    const/4 v6, -0x1

    goto/16 :goto_1e

    :cond_41
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    if-nez v6, :cond_42

    if-eqz v19, :cond_42

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    const/16 v25, 0x2

    :goto_29
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    if-nez v9, :cond_44

    const/16 v26, 0x0

    :goto_2a
    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v28, 0x0

    move-object/from16 v27, p4

    move-object/from16 v29, v17

    invoke-static/range {v18 .. v29}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v6

    move-object/from16 v0, v37

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    :cond_42
    move/from16 v6, v33

    move/from16 v7, v36

    move-object/from16 v8, v37

    goto/16 :goto_22

    :cond_43
    const/16 v25, -0x1

    goto :goto_29

    :cond_44
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    goto :goto_2a

    :cond_45
    const/4 v6, 0x0

    goto/16 :goto_10

    :cond_46
    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_47
    sget v12, Lcom/google/android/gms/internal/ads/kA;->ro:I

    if-ne v6, v12, :cond_49

    if-nez v19, :cond_48

    const/4 v6, 0x1

    :goto_2b
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    add-int/lit8 v6, v7, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-static/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/_D;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/_D;

    move-result-object v7

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/_D;->j6:Ljava/util/List;

    iget v7, v7, Lcom/google/android/gms/internal/ads/_D;->DW:I

    move-object/from16 v0, v37

    iput v7, v0, Lcom/google/android/gms/internal/ads/rA;->FH:I

    const-string v7, "video/hevc"

    goto/16 :goto_12

    :cond_48
    const/4 v6, 0x0

    goto :goto_2b

    :cond_49
    sget v12, Lcom/google/android/gms/internal/ads/kA;->eU:I

    if-ne v6, v12, :cond_4c

    if-nez v19, :cond_4a

    const/4 v6, 0x1

    :goto_2c
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    sget v6, Lcom/google/android/gms/internal/ads/kA;->Jl:I

    if-ne v9, v6, :cond_4b

    const-string v19, "video/x-vnd.on2.vp8"

    goto/16 :goto_13

    :cond_4a
    const/4 v6, 0x0

    goto :goto_2c

    :cond_4b
    const-string v19, "video/x-vnd.on2.vp9"

    goto/16 :goto_13

    :cond_4c
    sget v12, Lcom/google/android/gms/internal/ads/kA;->VH:I

    if-ne v6, v12, :cond_4e

    if-nez v19, :cond_4d

    const/4 v6, 0x1

    :goto_2d
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    const-string v19, "video/3gpp"

    goto/16 :goto_13

    :cond_4d
    const/4 v6, 0x0

    goto :goto_2d

    :cond_4e
    sget v12, Lcom/google/android/gms/internal/ads/kA;->cn:I

    if-ne v6, v12, :cond_50

    if-nez v19, :cond_4f

    const/4 v6, 0x1

    :goto_2e
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    move-object/from16 v0, v41

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/LD;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [B

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v19, v6

    goto/16 :goto_13

    :cond_4f
    const/4 v6, 0x0

    goto :goto_2e

    :cond_50
    sget v12, Lcom/google/android/gms/internal/ads/kA;->et:I

    if-ne v6, v12, :cond_51

    add-int/lit8 v6, v7, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v7

    int-to-float v6, v6

    int-to-float v7, v7

    div-float v28, v6, v7

    const/4 v7, 0x1

    move-object v6, v8

    move v12, v7

    goto/16 :goto_15

    :cond_51
    sget v12, Lcom/google/android/gms/internal/ads/kA;->Q6:I

    if-ne v6, v12, :cond_54

    add-int/lit8 v6, v7, 0x8

    :goto_2f
    sub-int v12, v6, v7

    if-ge v12, v15, :cond_53

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v12

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v16

    sget v18, Lcom/google/android/gms/internal/ads/kA;->kf:I

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_52

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int/2addr v12, v6

    invoke-static {v7, v6, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v29

    :goto_30
    move-object v6, v8

    move v7, v9

    goto/16 :goto_14

    :cond_52
    add-int/2addr v6, v12

    goto :goto_2f

    :cond_53
    const/16 v29, 0x0

    goto :goto_30

    :cond_54
    sget v7, Lcom/google/android/gms/internal/ads/kA;->n5:I

    if-ne v6, v7, :cond_62

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v6

    const/4 v7, 0x3

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    if-nez v6, :cond_b

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v6

    if-eqz v6, :cond_57

    const/4 v7, 0x1

    if-eq v6, v7, :cond_56

    const/4 v7, 0x2

    if-eq v6, v7, :cond_55

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    const/16 v30, 0x3

    goto/16 :goto_16

    :cond_55
    const/16 v30, 0x2

    goto/16 :goto_16

    :cond_56
    const/16 v30, 0x1

    goto/16 :goto_16

    :cond_57
    const/16 v30, 0x0

    goto/16 :goto_16

    :cond_58
    if-eqz v19, :cond_59

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/high16 v25, -0x40800000    # -1.0f

    const/16 v31, 0x0

    move/from16 v27, v43

    move-object/from16 v32, p4

    invoke-static/range {v18 .. v32}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzqi;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v6

    move-object/from16 v0, v37

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    goto/16 :goto_23

    :cond_59
    move/from16 v6, v33

    move/from16 v7, v36

    move-object/from16 v8, v37

    goto/16 :goto_22

    :cond_5a
    sget v6, Lcom/google/android/gms/internal/ads/kA;->Sf:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v6

    if-eqz v6, :cond_5b

    sget v7, Lcom/google/android/gms/internal/ads/kA;->vJ:I

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v6

    if-nez v6, :cond_5c

    :cond_5b
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object v7, v6

    :goto_31
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    if-nez v6, :cond_61

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_5c
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v13

    new-array v14, v13, [J

    new-array v15, v13, [J

    const/4 v6, 0x0

    move v8, v6

    :goto_32
    if-ge v8, v13, :cond_60

    const/4 v6, 0x1

    if-ne v12, v6, :cond_5d

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v6

    :goto_33
    aput-wide v6, v14, v8

    const/4 v6, 0x1

    if-ne v12, v6, :cond_5e

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v6

    :goto_34
    aput-wide v6, v15, v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Zo()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5f

    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_32

    :cond_5d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v6

    goto :goto_33

    :cond_5e
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    int-to-long v6, v6

    goto :goto_34

    :cond_5f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unsupported media rate."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_60
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object v7, v6

    goto :goto_31

    :cond_61
    new-instance v13, Lcom/google/android/gms/internal/ads/IA;

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/internal/ads/uA;->DW(Lcom/google/android/gms/internal/ads/uA;)I

    move-result v14

    move-object/from16 v0, v40

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/google/android/gms/internal/ads/rA;->Hw:I

    move/from16 v23, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rA;->j6:[Lcom/google/android/gms/internal/ads/JA;

    move-object/from16 v24, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/google/android/gms/internal/ads/rA;->FH:I

    move/from16 v25, v0

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, [J

    move/from16 v15, v38

    move-wide/from16 v18, v10

    move-wide/from16 v20, v34

    invoke-direct/range {v13 .. v27}, Lcom/google/android/gms/internal/ads/IA;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzfs;I[Lcom/google/android/gms/internal/ads/JA;I[J[J)V

    goto/16 :goto_1

    :cond_62
    move-object v6, v8

    move v7, v9

    goto/16 :goto_14

    :cond_63
    move-object v7, v9

    goto/16 :goto_1f

    :cond_64
    move v8, v12

    goto/16 :goto_1a

    :cond_65
    move-wide/from16 v6, p2

    goto/16 :goto_8
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/Tz;)Lcom/google/android/gms/internal/ads/LA;
    .locals 36

    sget v2, Lcom/google/android/gms/internal/ads/kA;->oY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/sA;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/sA;-><init>(Lcom/google/android/gms/internal/ads/mA;)V

    :goto_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qA;->FH()I

    move-result v17

    if-nez v17, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/LA;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    :goto_1
    return-object v2

    :cond_0
    sget v2, Lcom/google/android/gms/internal/ads/kA;->ko:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    if-eqz v3, :cond_2d

    new-instance v2, Lcom/google/android/gms/internal/ads/tA;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/tA;-><init>(Lcom/google/android/gms/internal/ads/mA;)V

    goto :goto_0

    :cond_1
    sget v3, Lcom/google/android/gms/internal/ads/kA;->Ev:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    if-nez v3, :cond_2

    sget v3, Lcom/google/android/gms/internal/ads/kA;->ye:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    const/4 v4, 0x1

    :goto_2
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    sget v3, Lcom/google/android/gms/internal/ads/kA;->jO:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    sget v3, Lcom/google/android/gms/internal/ads/kA;->hz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v31, v0

    sget v3, Lcom/google/android/gms/internal/ads/kA;->aq:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    :goto_3
    sget v5, Lcom/google/android/gms/internal/ads/kA;->FN:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    :goto_4
    new-instance v32, Lcom/google/android/gms/internal/ads/oA;

    move-object/from16 v0, v32

    invoke-direct {v0, v8, v6, v4}, Lcom/google/android/gms/internal/ads/oA;-><init>(Lcom/google/android/gms/internal/ads/LD;Lcom/google/android/gms/internal/ads/LD;Z)V

    const/16 v4, 0xc

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    add-int/lit8 v11, v4, -0x1

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v29

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v13

    if-eqz v5, :cond_5

    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v30

    :goto_5
    const/4 v4, -0x1

    if-eqz v3, :cond_6

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    if-lez v6, :cond_33

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qA;->DW()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "audio/raw"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v11, :cond_7

    if-nez v30, :cond_7

    if-nez v6, :cond_7

    const/4 v7, 0x1

    :goto_7
    const-wide/16 v22, 0x0

    if-nez v7, :cond_15

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v20, v0

    move/from16 v0, v17

    new-array v15, v0, [I

    move/from16 v0, v17

    new-array v14, v0, [J

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const-wide/16 v26, 0x0

    const-wide/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/16 v25, 0x0

    const/4 v9, 0x0

    move/from16 v21, v6

    move/from16 v28, v12

    move/from16 v24, v4

    move/from16 v7, v30

    :goto_8
    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    :goto_9
    if-nez v25, :cond_8

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/ads/oA;->j6()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/oA;->Hw:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v32

    iget v4, v0, Lcom/google/android/gms/internal/ads/oA;->FH:I

    move/from16 v25, v4

    goto :goto_9

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_5
    const/16 v30, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    if-eqz v5, :cond_32

    move v4, v7

    :goto_a
    if-nez v8, :cond_9

    if-lez v4, :cond_9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v9

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v6, v8, -0x1

    :goto_b
    aput-wide v26, v20, v28

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qA;->j6()I

    move-result v7

    aput v7, v15, v28

    if-le v7, v10, :cond_a

    move v10, v7

    :cond_a
    int-to-long v0, v9

    move-wide/from16 v34, v0

    add-long v34, v34, v18

    aput-wide v34, v14, v28

    if-nez v3, :cond_c

    const/4 v7, 0x1

    :goto_c
    aput v7, v16, v28

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/4 v7, 0x1

    aput v7, v16, v28

    add-int/lit8 v7, v21, -0x1

    if-lez v7, :cond_31

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move/from16 v21, v7

    move/from16 v24, v8

    :cond_b
    :goto_d
    int-to-long v0, v13

    move-wide/from16 v34, v0

    add-long v18, v18, v34

    add-int/lit8 v7, v29, -0x1

    if-nez v7, :cond_d

    if-lez v11, :cond_d

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v8

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v13

    add-int/lit8 v7, v11, -0x1

    move v11, v7

    move v12, v8

    :goto_e
    aget v7, v15, v28

    int-to-long v0, v7

    move-wide/from16 v34, v0

    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v25, v25, -0x1

    add-long v26, v26, v34

    move v8, v6

    move/from16 v29, v12

    move v7, v4

    goto/16 :goto_8

    :cond_c
    const/4 v7, 0x0

    goto :goto_c

    :cond_d
    move v12, v7

    goto :goto_e

    :cond_e
    if-nez v8, :cond_f

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    :goto_10
    if-lez v7, :cond_11

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    add-int/lit8 v7, v7, -0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    goto :goto_f

    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    :cond_11
    if-nez v21, :cond_12

    if-nez v29, :cond_12

    if-nez v25, :cond_12

    if-eqz v11, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/IA;->j6:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xd7

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "AtomParsers"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object v11, v14

    move-object v12, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v13, v20

    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    if-eqz v2, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Tz;->j6()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_14
    const-wide/32 v2, 0xf4240

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    invoke-static {v11, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/TD;->j6([JJJ)V

    new-instance v2, Lcom/google/android/gms/internal/ads/LA;

    move-object v3, v13

    move-object v4, v12

    move v5, v10

    move-object v6, v11

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, v32

    iget v14, v0, Lcom/google/android/gms/internal/ads/oA;->j6:I

    new-array v15, v14, [J

    new-array v0, v14, [I

    move-object/from16 v16, v0

    :goto_13
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/ads/oA;->j6()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, v32

    iget v3, v0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    move-object/from16 v0, v32

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/oA;->Hw:J

    aput-wide v4, v15, v3

    move-object/from16 v0, v32

    iget v4, v0, Lcom/google/android/gms/internal/ads/oA;->FH:I

    aput v4, v16, v3

    goto :goto_13

    :cond_16
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qA;->j6()I

    move-result v18

    int-to-long v0, v13

    move-wide/from16 v20, v0

    const/16 v2, 0x2000

    div-int v19, v2, v18

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_14
    if-ge v3, v14, :cond_17

    aget v4, v16, v3

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_17
    new-array v3, v2, [J

    new-array v4, v2, [I

    new-array v6, v2, [J

    new-array v7, v2, [I

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    move v13, v2

    :goto_15
    if-ge v13, v14, :cond_19

    aget v2, v16, v13

    aget-wide v8, v15, v13

    move v11, v5

    :goto_16
    if-lez v2, :cond_18

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    aput-wide v8, v3, v12

    mul-int v5, v18, v24

    aput v5, v4, v12

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-long v0, v10

    move-wide/from16 v26, v0

    mul-long v26, v26, v20

    aput-wide v26, v6, v12

    const/4 v5, 0x1

    aput v5, v7, v12

    aget v5, v4, v12

    int-to-long v0, v5

    move-wide/from16 v26, v0

    add-long v8, v8, v26

    add-int v5, v10, v24

    sub-int v2, v2, v24

    add-int/lit8 v12, v12, 0x1

    move v10, v5

    goto :goto_16

    :cond_18
    add-int/lit8 v2, v13, 0x1

    move v5, v11

    move v13, v2

    goto :goto_15

    :cond_19
    new-instance v2, Lcom/google/android/gms/internal/ads/xA;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/xA;-><init>([J[II[J[ILcom/google/android/gms/internal/ads/wA;)V

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/xA;->j6:[J

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/xA;->DW:[I

    iget v10, v2, Lcom/google/android/gms/internal/ads/xA;->FH:I

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/xA;->Hw:[J

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xA;->v5:[I

    const-wide/16 v6, 0x0

    move-object v11, v3

    move-object v12, v4

    move-object v8, v2

    move-wide/from16 v18, v6

    move/from16 v9, v17

    move-object v13, v5

    goto/16 :goto_12

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/IA;->DW:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    array-length v3, v11

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    const/4 v4, 0x0

    aget-wide v14, v3, v4

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/IA;->Hw:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    add-long v16, v2, v14

    const/4 v2, 0x0

    aget-wide v2, v11, v2

    cmp-long v4, v2, v14

    if-gtz v4, :cond_1c

    const/4 v4, 0x1

    aget-wide v4, v11, v4

    cmp-long v4, v14, v4

    if-gez v4, :cond_1c

    array-length v4, v11

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v11, v4

    cmp-long v4, v4, v16

    if-gez v4, :cond_1c

    cmp-long v4, v16, v18

    if-gtz v4, :cond_1c

    sub-long v2, v14, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v14

    sub-long v2, v18, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-nez v4, :cond_1b

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1c

    :cond_1b
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v14, v4

    if-gtz v4, :cond_1c

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1c

    long-to-int v4, v14

    move-object/from16 v0, p2

    iput v4, v0, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    long-to-int v2, v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/google/android/gms/internal/ads/Tz;->Hw:I

    const-wide/32 v2, 0xf4240

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    invoke-static {v11, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/TD;->j6([JJJ)V

    new-instance v2, Lcom/google/android/gms/internal/ads/LA;

    move-object v3, v13

    move-object v4, v12

    move v5, v10

    move-object v6, v11

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    move v9, v2

    :goto_17
    array-length v2, v11

    if-ge v9, v2, :cond_1d

    aget-wide v2, v11, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    aput-wide v2, v11, v9

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_17

    :cond_1d
    new-instance v2, Lcom/google/android/gms/internal/ads/LA;

    move-object v3, v13

    move-object v4, v12

    move v5, v10

    move-object v6, v11

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/IA;->DW:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x1

    move v14, v2

    :goto_18
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    array-length v3, v2

    move/from16 v0, v18

    if-ge v0, v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    aget-wide v20, v3, v18

    const-wide/16 v4, -0x1

    cmp-long v3, v20, v4

    if-eqz v3, :cond_30

    aget-wide v2, v2, v18

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/IA;->Hw:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-wide/from16 v0, v20

    invoke-static {v11, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v4

    add-long v2, v2, v20

    const/4 v5, 0x0

    invoke-static {v11, v2, v3, v14, v5}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v5

    sub-int v2, v5, v4

    add-int v3, v16, v2

    if-eq v15, v4, :cond_20

    const/4 v2, 0x1

    :goto_1a
    or-int v4, v17, v2

    move v2, v5

    :goto_1b
    add-int/lit8 v5, v18, 0x1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_19

    :cond_1f
    const/4 v2, 0x0

    move v14, v2

    goto :goto_18

    :cond_20
    const/4 v2, 0x0

    goto :goto_1a

    :cond_21
    move/from16 v0, v16

    if-eq v0, v9, :cond_23

    const/4 v2, 0x1

    :goto_1c
    or-int v26, v17, v2

    if-eqz v26, :cond_24

    move/from16 v0, v16

    new-array v2, v0, [J

    move-object/from16 v25, v2

    :goto_1d
    if-eqz v26, :cond_25

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v24, v2

    :goto_1e
    if-eqz v26, :cond_2f

    const/4 v3, 0x0

    :goto_1f
    if-eqz v26, :cond_26

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object v10, v2

    :goto_20
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v27, v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object/from16 v18, v8

    move-wide/from16 v20, v22

    move/from16 v19, v2

    move/from16 v16, v3

    move-object/from16 v17, v13

    :goto_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    array-length v3, v2

    move/from16 v0, v19

    if-ge v0, v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    aget-wide v28, v3, v19

    aget-wide v2, v2, v19

    const-wide/16 v4, -0x1

    cmp-long v4, v28, v4

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/IA;->Hw:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-wide/from16 v0, v28

    invoke-static {v11, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v4

    add-long v6, v6, v28

    const/4 v5, 0x0

    invoke-static {v11, v6, v7, v14, v5}, Lcom/google/android/gms/internal/ads/TD;->DW([JJZZ)I

    move-result v23

    if-eqz v26, :cond_22

    sub-int v5, v23, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v24

    invoke-static {v12, v4, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v18

    invoke-static {v0, v4, v10, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    move/from16 v22, v4

    move/from16 v13, v16

    move v15, v9

    :goto_22
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_27

    const-wide/32 v6, 0xf4240

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/IA;->Hw:J

    move-wide/from16 v4, v20

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v30

    aget-wide v4, v11, v22

    sub-long v4, v4, v28

    const-wide/32 v6, 0xf4240

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v4

    add-long v4, v4, v30

    aput-wide v4, v27, v15

    if-eqz v26, :cond_2e

    aget v4, v24, v15

    if-le v4, v13, :cond_2e

    aget v4, v12, v22

    :goto_23
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v22, 0x1

    move/from16 v22, v5

    move v13, v4

    goto :goto_22

    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_24
    move-object/from16 v25, v13

    goto/16 :goto_1d

    :cond_25
    move-object/from16 v24, v12

    goto/16 :goto_1e

    :cond_26
    move-object v10, v8

    goto/16 :goto_20

    :cond_27
    move v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    :goto_24
    add-long v2, v2, v20

    add-int/lit8 v7, v19, 0x1

    move-object/from16 v18, v6

    move-wide/from16 v20, v2

    move/from16 v19, v7

    move v9, v4

    move/from16 v16, v13

    move-object/from16 v17, v5

    goto/16 :goto_21

    :cond_28
    move v4, v9

    move/from16 v13, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto :goto_24

    :cond_29
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_25
    array-length v4, v10

    if-ge v3, v4, :cond_2b

    if-nez v2, :cond_2b

    aget v4, v10, v3

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    :goto_26
    or-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_2a
    const/4 v4, 0x0

    goto :goto_26

    :cond_2b
    if-eqz v2, :cond_2c

    new-instance v2, Lcom/google/android/gms/internal/ads/LA;

    move-object/from16 v3, v25

    move-object/from16 v4, v24

    move/from16 v5, v16

    move-object/from16 v6, v27

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/LA;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_2c
    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    const-string v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    const-string v3, "Track has no sample table size information"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    move v4, v13

    goto :goto_23

    :cond_2f
    move v3, v10

    goto/16 :goto_1f

    :cond_30
    move/from16 v3, v16

    move/from16 v4, v17

    move v2, v15

    goto/16 :goto_1b

    :cond_31
    move/from16 v21, v7

    goto/16 :goto_d

    :cond_32
    move v4, v7

    move v6, v8

    goto/16 :goto_b

    :cond_33
    move-object v3, v7

    goto/16 :goto_6
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/mA;Z)Lcom/google/android/gms/internal/ads/zzki;
    .locals 9

    const/16 v8, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v2

    if-lt v2, v8, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/kA;->AL:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v4

    add-int v5, v2, v3

    if-ge v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/ads/kA;->w9:I

    if-ne v6, v7, :cond_4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v3

    add-int v6, v4, v5

    if-ge v3, v6, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CA;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/zzki$zza;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzki;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzki;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v5, -0x8

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v3, -0x8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto :goto_1
.end method
