.class Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;


# static fields
.field protected static final alphabiasshift:I = 0xa

.field protected static final alpharadbias:I = 0x40000

.field protected static final alpharadbshift:I = 0x12

.field protected static final beta:I = 0x40

.field protected static final betagamma:I = 0x10000

.field protected static final betashift:I = 0xa

.field protected static final gamma:I = 0x400

.field protected static final gammashift:I = 0xa

.field protected static final initalpha:I = 0x400

.field protected static final initrad:I = 0x20

.field protected static final initradius:I = 0x800

.field protected static final intbias:I = 0x10000

.field protected static final intbiasshift:I = 0x10

.field protected static final maxnetpos:I = 0xff

.field protected static final minpicturebytes:I = 0x5e5

.field protected static final ncycles:I = 0x64

.field protected static final netbiasshift:I = 0x4

.field protected static final netsize:I = 0x100

.field protected static final prime1:I = 0x1f3

.field protected static final prime2:I = 0x1eb

.field protected static final prime3:I = 0x1e7

.field protected static final prime4:I = 0x1f7

.field protected static final radbias:I = 0x100

.field protected static final radbiasshift:I = 0x8

.field protected static final radiusbias:I = 0x40

.field protected static final radiusbiasshift:I = 0x6

.field protected static final radiusdec:I = 0x1e


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .registers 10

    const/4 v1, 0x0

    const/16 v5, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    new-array v0, v5, [[I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v0, v1

    :goto_23
    if-ge v0, v5, :cond_47

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    shl-int/lit8 v3, v0, 0xc

    div-int/lit16 v3, v3, 0x100

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    aput v3, v2, v1

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aput v5, v2, v0

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_47
    return-void
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .registers 17

    sub-int v0, p2, p1

    const/4 v1, -0x1

    if-ge v0, v1, :cond_9c

    const/4 v0, -0x1

    move v7, v0

    :goto_7
    add-int v0, p2, p1

    const/16 v1, 0x100

    if-le v0, v1, :cond_f

    const/16 v0, 0x100

    :cond_f
    const/4 v4, 0x1

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v1, p2, -0x1

    move v3, v1

    move v5, v4

    :goto_16
    if-lt v2, v0, :cond_1a

    if-le v3, v7, :cond_9f

    :cond_1a
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    add-int/lit8 v6, v5, 0x1

    aget v5, v1, v5

    if-ge v2, v0, :cond_9a

    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v1, v2, 0x1

    aget-object v2, v4, v2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :try_start_2a
    aget v8, v2, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v5

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v4

    const/4 v4, 0x1

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v5

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v4

    const/4 v4, 0x2

    const/4 v8, 0x2

    aget v8, v2, v8

    const/4 v9, 0x2

    aget v9, v2, v9

    sub-int v9, v9, p5

    mul-int/2addr v9, v5

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v4
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_56} :catch_a0

    :goto_56
    if-le v3, v7, :cond_96

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v4, v3, -0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    :try_start_60
    aget v8, v2, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v5

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v3

    const/4 v3, 0x1

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v5

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v3

    const/4 v3, 0x2

    const/4 v8, 0x2

    aget v8, v2, v8

    const/4 v9, 0x2

    aget v9, v2, v9

    sub-int v9, v9, p5

    mul-int/2addr v5, v9

    const/high16 v9, 0x40000

    div-int/2addr v5, v9

    sub-int v5, v8, v5

    aput v5, v2, v3
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_8d} :catch_91

    move v3, v4

    move v5, v6

    move v2, v1

    goto :goto_16

    :catch_91
    move-exception v2

    move v3, v4

    move v5, v6

    move v2, v1

    goto :goto_16

    :cond_96
    move v5, v6

    move v2, v1

    goto/16 :goto_16

    :cond_9a
    move v1, v2

    goto :goto_56

    :cond_9c
    move v7, v0

    goto/16 :goto_7

    :cond_9f
    return-void

    :catch_a0
    move-exception v2

    goto :goto_56
.end method

.method protected altersingle(IIIII)V
    .registers 12

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v0, v0, p2

    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method public colorMap()[B
    .registers 11

    const/16 v9, 0x100

    const/4 v1, 0x0

    const/16 v0, 0x300

    new-array v3, v0, [B

    new-array v4, v9, [I

    move v0, v1

    :goto_a
    if-ge v0, v9, :cond_18

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    const/4 v5, 0x3

    aget v2, v2, v5

    aput v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    move v0, v1

    move v2, v1

    :goto_1a
    if-ge v2, v9, :cond_47

    aget v5, v4, v2

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v7, v7, v5

    aget v7, v7, v1

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    add-int/lit8 v7, v6, 0x1

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v0, v0, v5

    const/4 v8, 0x1

    aget v0, v0, v8

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v6

    add-int/lit8 v0, v7, 0x1

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v5, v6, v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_47
    return-object v3
.end method

.method protected contest(III)I
    .registers 14

    const v1, 0x7fffffff

    const/4 v8, 0x0

    const/4 v0, -0x1

    move v3, v0

    move v6, v0

    move v5, v1

    move v7, v1

    move v2, v8

    :goto_a
    const/16 v0, 0x100

    if-ge v2, v0, :cond_54

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v0, v2

    aget v0, v4, v8

    sub-int/2addr v0, p1

    if-gez v0, :cond_18

    neg-int v0, v0

    :cond_18
    const/4 v1, 0x1

    aget v1, v4, v1

    sub-int/2addr v1, p2

    if-gez v1, :cond_1f

    neg-int v1, v1

    :cond_1f
    const/4 v9, 0x2

    aget v4, v4, v9

    sub-int/2addr v4, p3

    if-gez v4, :cond_26

    neg-int v4, v4

    :cond_26
    add-int/2addr v0, v1

    add-int/2addr v4, v0

    if-ge v4, v5, :cond_68

    move v0, v2

    move v1, v4

    :goto_2c
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v3, v3, v2

    shr-int/lit8 v3, v3, 0xc

    sub-int v3, v4, v3

    if-ge v3, v7, :cond_66

    move v4, v2

    move v7, v3

    :goto_38
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v3, v3, v2

    shr-int/lit8 v3, v3, 0xa

    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v6, v5, v2

    sub-int/2addr v6, v3

    aput v6, v5, v2

    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    shl-int/lit8 v3, v3, 0xa

    aget v6, v5, v2

    add-int/2addr v3, v6

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    move v6, v4

    move v5, v1

    goto :goto_a

    :cond_54
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x40

    aput v1, v0, v3

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v1, v0, v3

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    aput v1, v0, v3

    return v6

    :cond_66
    move v4, v6

    goto :goto_38

    :cond_68
    move v0, v3

    move v1, v5

    goto :goto_2c
.end method

.method public inxbuild()V
    .registers 15

    const/16 v13, 0x100

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    move v3, v6

    move v5, v6

    move v4, v6

    :goto_9
    if-ge v4, v13, :cond_65

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v7, v0, v4

    aget v2, v7, v10

    add-int/lit8 v1, v4, 0x1

    move v0, v4

    :goto_14
    if-ge v1, v13, :cond_24

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v8, v1

    aget v9, v8, v10

    if-ge v9, v2, :cond_21

    aget v2, v8, v10

    move v0, v1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    if-eq v4, v0, :cond_4a

    aget v0, v1, v6

    aget v8, v7, v6

    aput v8, v1, v6

    aput v0, v7, v6

    aget v0, v1, v10

    aget v8, v7, v10

    aput v8, v1, v10

    aput v0, v7, v10

    aget v0, v1, v11

    aget v8, v7, v11

    aput v8, v1, v11

    aput v0, v7, v11

    aget v0, v1, v12

    aget v8, v7, v12

    aput v8, v1, v12

    aput v0, v7, v12

    :cond_4a
    if-eq v2, v3, :cond_7a

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int v1, v5, v4

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    add-int/lit8 v0, v3, 0x1

    :goto_56
    if-ge v0, v2, :cond_5f

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_5f
    move v0, v4

    :goto_60
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    move v5, v0

    goto :goto_9

    :cond_65
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int/lit16 v1, v5, 0xff

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    add-int/lit8 v0, v3, 0x1

    :goto_6f
    if-ge v0, v13, :cond_7d

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_7a
    move v2, v3

    move v0, v5

    goto :goto_60

    :cond_7d
    return-void
.end method

.method public learn()V
    .registers 23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v3, 0x5e5

    if-ge v2, v3, :cond_d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    mul-int/lit8 v3, v3, 0x3

    div-int v21, v2, v3

    div-int/lit8 v15, v21, 0x64

    const/4 v2, 0x0

    :goto_36
    const/16 v3, 0x20

    if-ge v2, v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v4, v2, v2

    rsub-int v4, v4, 0x400

    mul-int/lit16 v4, v4, 0x100

    div-int/lit16 v4, v4, 0x400

    mul-int/lit16 v4, v4, 0x400

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_4d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v3, 0x5e5

    if-ge v2, v3, :cond_d8

    const/4 v2, 0x3

    move v14, v2

    :goto_57
    const/16 v9, 0x20

    const/4 v4, 0x0

    const/16 v2, 0x800

    const/16 v3, 0x400

    const/4 v5, 0x0

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    :goto_65
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_11c

    add-int/lit8 v2, v18, 0x0

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v5, v2, 0x4

    add-int/lit8 v2, v18, 0x1

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v6, v2, 0x4

    add-int/lit8 v2, v18, 0x2

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v7, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/gifencoder/NeuQuant;->contest(III)I

    move-result v4

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/gifencoder/NeuQuant;->altersingle(IIIII)V

    if-eqz v9, :cond_99

    move-object/from16 v8, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/bumptech/glide/gifencoder/NeuQuant;->alterneigh(IIIII)V

    :cond_99
    add-int v2, v18, v14

    move/from16 v0, v20

    if-lt v2, v0, :cond_11a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    sub-int/2addr v2, v4

    move v5, v2

    :goto_a5
    add-int/lit8 v8, v17, 0x1

    if-nez v15, :cond_118

    const/4 v2, 0x1

    :goto_aa
    rem-int v4, v8, v2

    if-nez v4, :cond_111

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    div-int v4, v3, v4

    sub-int v6, v3, v4

    div-int/lit8 v3, v16, 0x1e

    sub-int v7, v16, v3

    shr-int/lit8 v3, v7, 0x6

    const/4 v4, 0x1

    if-gt v3, v4, :cond_10f

    const/4 v3, 0x0

    move v4, v3

    :goto_c1
    const/4 v3, 0x0

    :goto_c2
    if-ge v3, v4, :cond_104

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v10, v4, v4

    mul-int v11, v3, v3

    sub-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x100

    mul-int v11, v4, v4

    div-int/2addr v10, v11

    mul-int/2addr v10, v6

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    :cond_d8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1f3

    if-eqz v2, :cond_e5

    const/16 v2, 0x5d9

    move v14, v2

    goto/16 :goto_57

    :cond_e5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1eb

    if-eqz v2, :cond_f2

    const/16 v2, 0x5c1

    move v14, v2

    goto/16 :goto_57

    :cond_f2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1e7

    if-eqz v2, :cond_ff

    const/16 v2, 0x5b5

    move v14, v2

    goto/16 :goto_57

    :cond_ff
    const/16 v2, 0x5e5

    move v14, v2

    goto/16 :goto_57

    :cond_104
    move v3, v6

    move v9, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move v15, v2

    move/from16 v18, v5

    goto/16 :goto_65

    :cond_10f
    move v4, v3

    goto :goto_c1

    :cond_111
    move/from16 v17, v8

    move v15, v2

    move/from16 v18, v5

    goto/16 :goto_65

    :cond_118
    move v2, v15

    goto :goto_aa

    :cond_11a
    move v5, v2

    goto :goto_a5

    :cond_11c
    return-void
.end method

.method public map(III)I
    .registers 16

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    const/16 v5, 0x100

    const/16 v2, 0x3e8

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aget v4, v0, p2

    add-int/lit8 v1, v4, -0x1

    move v3, v7

    :goto_f
    if-lt v4, v5, :cond_13

    if-ltz v1, :cond_68

    :cond_13
    if-ge v4, v5, :cond_1f

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v0, v4

    aget v0, v8, v10

    sub-int/2addr v0, p2

    if-lt v0, v2, :cond_2d

    move v4, v5

    :cond_1f
    :goto_1f
    if-ltz v1, :cond_65

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v0, v1

    aget v0, v8, v10

    sub-int v0, p2, v0

    if-lt v0, v2, :cond_49

    move v1, v7

    goto :goto_f

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    if-gez v0, :cond_32

    neg-int v0, v0

    :cond_32
    aget v6, v8, v9

    sub-int/2addr v6, p1

    if-gez v6, :cond_38

    neg-int v6, v6

    :cond_38
    add-int/2addr v6, v0

    if-ge v6, v2, :cond_1f

    aget v0, v8, v11

    sub-int/2addr v0, p3

    if-gez v0, :cond_41

    neg-int v0, v0

    :cond_41
    add-int/2addr v0, v6

    if-ge v0, v2, :cond_1f

    const/4 v2, 0x3

    aget v3, v8, v2

    move v2, v0

    goto :goto_1f

    :cond_49
    add-int/lit8 v1, v1, -0x1

    if-gez v0, :cond_4e

    neg-int v0, v0

    :cond_4e
    aget v6, v8, v9

    sub-int/2addr v6, p1

    if-gez v6, :cond_54

    neg-int v6, v6

    :cond_54
    add-int/2addr v6, v0

    if-ge v6, v2, :cond_65

    aget v0, v8, v11

    sub-int/2addr v0, p3

    if-gez v0, :cond_5d

    neg-int v0, v0

    :cond_5d
    add-int/2addr v0, v6

    if-ge v0, v2, :cond_65

    const/4 v2, 0x3

    aget v3, v8, v2

    move v2, v0

    goto :goto_f

    :cond_65
    move v0, v1

    move v1, v0

    goto :goto_f

    :cond_68
    return v3
.end method

.method public process()[B
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->learn()V

    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->unbiasnet()V

    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->inxbuild()V

    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->colorMap()[B

    move-result-object v0

    return-object v0
.end method

.method public unbiasnet()V
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_4
    const/16 v2, 0x100

    if-ge v0, v2, :cond_30

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    aget v3, v2, v1

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v1

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    aget v3, v2, v4

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v4

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    aget v3, v2, v5

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v5

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_30
    return-void
.end method
