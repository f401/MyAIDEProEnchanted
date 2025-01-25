.class Lcom/caverock/androidsvg/NumberParser;
.super Ljava/lang/Object;


# static fields
.field private static final negativePowersOf10:[F

.field private static final positivePowersOf10:[F


# instance fields
.field private pos:I


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    const/16 v1, 0x27

    new-array v0, v1, [F

    fill-array-data v0, :array_12

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_64

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    return-void

    nop

    :array_12
    .array-data 4
        0x3f800000  # 1.0f
        0x41200000  # 10.0f
        0x42c80000  # 100.0f
        0x447a0000  # 1000.0f
        0x461c4000  # 10000.0f
        0x47c35000  # 100000.0f
        0x49742400  # 1000000.0f
        0x4b189680  # 1.0E7f
        0x4cbebc20  # 1.0E8f
        0x4e6e6b28  # 1.0E9f
        0x501502f9  # 1.0E10f
        0x51ba43b7  # 9.9999998E10f
        0x5368d4a5  # 1.0E12f
        0x551184e7  # 9.9999998E12f
        0x56b5e621  # 1.0E14f
        0x58635fa9  # 9.9999999E14f
        0x5a0e1bca  # 1.00000003E16f
        0x5bb1a2bc  # 9.9999998E16f
        0x5d5e0b6b  # 9.9999998E17f
        0x5f0ac723  # 1.0E19f
        0x60ad78ec  # 1.0E20f
        0x6258d727  # 1.0E21f
        0x64078678  # 1.0E22f
        0x65a96816  # 1.0E23f
        0x6753c21c  # 1.0E24f
        0x69045951  # 1.0E25f
        0x6aa56fa6  # 1.0E26f
        0x6c4ecb8f  # 1.0E27f
        0x6e013f39  # 1.0E28f
        0x6fa18f08  # 1.0E29f
        0x7149f2ca  # 1.0E30f
        0x72fc6f7c  # 1.0E31f
        0x749dc5ae  # 1.0E32f
        0x76453719  # 1.0E33f
        0x77f684df  # 1.0E34f
        0x799a130c  # 1.0E35f
        0x7b4097ce  # 1.0E36f
        0x7cf0bdc2  # 1.0E37f
        0x7e967699  # 1.0E38f
    .end array-data

    :array_64
    .array-data 4
        0x3f800000  # 1.0f
        0x3dcccccd  # 0.1f
        0x3c23d70a  # 0.01f
        0x3a83126f  # 0.001f
        0x38d1b717  # 1.0E-4f
        0x3727c5ac  # 1.0E-5f
        0x358637bd  # 1.0E-6f
        0x33d6bf95  # 1.0E-7f
        0x322bcc77  # 1.0E-8f
        0x3089705f  # 1.0E-9f
        0x2edbe6ff  # 1.0E-10f
        0x2d2febff  # 1.0E-11f
        0x2b8cbccc  # 1.0E-12f
        0x29e12e13  # 1.0E-13f
        0x283424dc  # 1.0E-14f
        0x26901d7d  # 1.0E-15f
        0x24e69595  # 1.0E-16f
        0x233877aa  # 1.0E-17f
        0x219392ef  # 1.0E-18f
        0x1fec1e4a  # 1.0E-19f
        0x1e3ce508  # 1.0E-20f
        0x1c971da0  # 1.0E-21f
        0x1af1c901  # 1.0E-22f
        0x19416d9a  # 1.0E-23f
        0x179abe15  # 1.0E-24f
        0x15f79688  # 1.0E-25f
        0x14461206  # 1.0E-26f
        0x129e74d2  # 1.0E-27f
        0x10fd87b6  # 1.0E-28f
        0xf4ad2f8  # 1.0E-29f
        0xda24260  # 1.0E-30f
        0xc01ceb3  # 1.0E-31f
        0xa4fb11f  # 1.0E-32f
        0x8a6274c  # 1.0E-33f
        0x704ec3d  # 1.0E-34f
        0x554ad2e
        0x3aa2425
        0x2081cea
        0x6ce3ee
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getEndPos()I
    .registers 2

    iget v0, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    return v0
.end method

.method parseNumber(Ljava/lang/String;II)F
    .registers 20

    const/4 v2, 0x0

    int-to-long v4, v2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v0, p3

    if-lt v2, v0, :cond_17

    sget v2, Ljava/lang/Float;->NaN:F

    :cond_16
    :goto_16
    return v2

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_1c0

    const/4 v2, 0x0

    move v3, v2

    :goto_26
    move-object/from16 v0, p0

    iget v11, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    const/4 v2, 0x0

    :goto_2b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v0, p3

    if-lt v10, v0, :cond_4d

    :cond_33
    if-eqz v9, :cond_b9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v11, v2, 0x1

    if-ne v10, v11, :cond_b9

    sget v2, Ljava/lang/Float;->NaN:F

    goto :goto_16

    :pswitch_40  #0x2d
    const/4 v2, 0x1

    :goto_41
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move v3, v2

    goto :goto_26

    :cond_4d
    move-object/from16 v0, p0

    iget v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v10, 0x30

    if-ne v12, v10, :cond_6d

    if-nez v7, :cond_6a

    add-int/lit8 v6, v6, 0x1

    :goto_5f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_2b

    :cond_6a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    :cond_6d
    const/16 v10, 0x31

    if-lt v12, v10, :cond_ac

    const/16 v10, 0x39

    if-gt v12, v10, :cond_ac

    move v10, v8

    :goto_76
    if-gtz v10, :cond_84

    const-wide v14, 0xcccccccccccccccL

    cmp-long v13, v4, v14

    if-lez v13, :cond_97

    sget v2, Ljava/lang/Float;->NaN:F

    goto :goto_16

    :cond_84
    const-wide v14, 0xcccccccccccccccL

    cmp-long v13, v4, v14

    if-lez v13, :cond_90

    sget v2, Ljava/lang/Float;->NaN:F

    goto :goto_16

    :cond_90
    const/16 v13, 0xa

    int-to-long v14, v13

    mul-long/2addr v4, v14

    add-int/lit8 v10, v10, -0x1

    goto :goto_76

    :cond_97
    const/16 v13, 0xa

    int-to-long v14, v13

    mul-long/2addr v4, v14

    add-int/lit8 v12, v12, -0x30

    int-to-long v12, v12

    add-long/2addr v4, v12

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    int-to-long v12, v8

    cmp-long v8, v4, v12

    if-gez v8, :cond_1b0

    sget v2, Ljava/lang/Float;->NaN:F

    goto/16 :goto_16

    :cond_ac
    const/16 v10, 0x2e

    if-ne v12, v10, :cond_33

    if-nez v9, :cond_33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    sub-int/2addr v2, v11

    const/4 v9, 0x1

    goto :goto_5f

    :cond_b9
    if-nez v7, :cond_1bc

    if-nez v6, :cond_c1

    sget v2, Ljava/lang/Float;->NaN:F

    goto/16 :goto_16

    :cond_c1
    const/4 v7, 0x1

    move v10, v7

    :goto_c3
    if-eqz v9, :cond_c8

    sub-int/2addr v2, v6

    sub-int v8, v2, v10

    :cond_c8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v0, p3

    if-ge v2, v0, :cond_1ae

    move-object/from16 v0, p0

    iget v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x45

    if-eq v2, v6, :cond_e2

    const/16 v6, 0x65

    if-ne v2, v6, :cond_1ae

    :cond_e2
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v0, p3

    if-ne v7, v0, :cond_fa

    sget v2, Ljava/lang/Float;->NaN:F

    goto/16 :goto_16

    :cond_fa
    move-object/from16 v0, p0

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_1ca

    :pswitch_107  #0x2c, 0x2e, 0x2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    const/4 v7, 0x0

    const/4 v2, 0x1

    move v6, v2

    :goto_114
    if-nez v6, :cond_1ae

    move-object/from16 v0, p0

    iget v6, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    const/4 v2, 0x0

    :goto_11b
    move-object/from16 v0, p0

    iget v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v0, p3

    if-lt v9, v0, :cond_13d

    :cond_123
    move-object/from16 v0, p0

    iget v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    if-ne v9, v6, :cond_16d

    sget v2, Ljava/lang/Float;->NaN:F

    goto/16 :goto_16

    :pswitch_12d  #0x2d
    const/4 v2, 0x1

    :pswitch_12e  #0x2b
    move-object/from16 v0, p0

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move v7, v2

    goto :goto_114

    :pswitch_13a  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/4 v2, 0x0

    move v7, v2

    goto :goto_114

    :cond_13d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x30

    if-lt v9, v11, :cond_123

    const/16 v11, 0x39

    if-gt v9, v11, :cond_123

    int-to-long v12, v2

    const-wide v14, 0xcccccccccccccccL

    cmp-long v11, v12, v14

    if-lez v11, :cond_15d

    sget v2, Ljava/lang/Float;->NaN:F

    goto/16 :goto_16

    :cond_15d
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v2, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_11b

    :cond_16d
    if-eqz v7, :cond_181

    sub-int v6, v8, v2

    :goto_171
    add-int v2, v6, v10

    const/16 v7, 0x27

    if-gt v2, v7, :cond_17d

    add-int v2, v6, v10

    const/16 v7, -0x2c

    if-ge v2, v7, :cond_184

    :cond_17d
    sget v2, Ljava/lang/Float;->NaN:F

    goto/16 :goto_16

    :cond_181
    add-int v6, v8, v2

    goto :goto_171

    :cond_184
    long-to-float v2, v4

    const/4 v7, 0x0

    int-to-long v8, v7

    cmp-long v4, v4, v8

    if-eqz v4, :cond_192

    if-lez v6, :cond_197

    sget-object v4, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    aget v4, v4, v6

    mul-float/2addr v2, v4

    :cond_192
    :goto_192
    if-eqz v3, :cond_16

    neg-float v2, v2

    goto/16 :goto_16

    :cond_197
    if-gez v6, :cond_192

    const/16 v4, -0x26

    if-ge v6, v4, :cond_1ba

    float-to-double v4, v2

    const-wide v8, 0x3bc79ca10c924223L  # 1.0E-20

    mul-double/2addr v4, v8

    double-to-float v2, v4

    add-int/lit8 v4, v6, 0x14

    :goto_1a7
    sget-object v5, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    neg-int v4, v4

    aget v4, v5, v4

    mul-float/2addr v2, v4

    goto :goto_192

    :cond_1ae
    move v6, v8

    goto :goto_171

    :cond_1b0
    move v8, v10

    goto/16 :goto_5f

    :pswitch_1b3  #0x2c
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_26

    :pswitch_1b7  #0x2b
    const/4 v2, 0x0

    goto/16 :goto_41

    :cond_1ba
    move v4, v6

    goto :goto_1a7

    :cond_1bc
    move v10, v7

    goto/16 :goto_c3

    nop

    :pswitch_data_1c0
    .packed-switch 0x2b
        :pswitch_1b7  #0000002b
        :pswitch_1b3  #0000002c
        :pswitch_40  #0000002d
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x2b
        :pswitch_12e  #0000002b
        :pswitch_107  #0000002c
        :pswitch_12d  #0000002d
        :pswitch_107  #0000002e
        :pswitch_107  #0000002f
        :pswitch_13a  #00000030
        :pswitch_13a  #00000031
        :pswitch_13a  #00000032
        :pswitch_13a  #00000033
        :pswitch_13a  #00000034
        :pswitch_13a  #00000035
        :pswitch_13a  #00000036
        :pswitch_13a  #00000037
        :pswitch_13a  #00000038
        :pswitch_13a  #00000039
    .end packed-switch
.end method
