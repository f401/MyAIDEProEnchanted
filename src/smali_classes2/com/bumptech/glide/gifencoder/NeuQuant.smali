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

    :goto_0
    if-ge v0, v5, :cond_0

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

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .registers 17

    sub-int v0, p2, p1

    const/4 v1, -0x1

    if-ge v0, v1, :cond_4

    const/4 v0, -0x1

    move v7, v0

    :goto_0
    add-int v0, p2, p1

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    const/16 v0, 0x100

    :cond_0
    const/4 v4, 0x1

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v1, p2, -0x1

    move v3, v1

    move v5, v4

    :goto_1
    if-lt v2, v0, :cond_1

    if-le v3, v7, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    add-int/lit8 v6, v5, 0x1

    aget v5, v1, v5

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v1, v2, 0x1

    aget-object v2, v4, v2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-le v3, v7, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v4, v3, -0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    move v5, v6

    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v2

    move v3, v4

    move v5, v6

    move v2, v1

    goto :goto_1

    :cond_2
    move v5, v6

    move v2, v1

    goto/16 :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v7, v0

    goto/16 :goto_0

    :cond_5
    return-void

    :catch_1
    move-exception v2

    goto :goto_2
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

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    const/4 v5, 0x3

    aget v2, v2, v5

    aput v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v9, :cond_1

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

    goto :goto_1

    :cond_1
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

    :goto_0
    const/16 v0, 0x100

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v0, v2

    aget v0, v4, v8

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    const/4 v1, 0x1

    aget v1, v4, v1

    sub-int/2addr v1, p2

    if-gez v1, :cond_1

    neg-int v1, v1

    :cond_1
    const/4 v9, 0x2

    aget v4, v4, v9

    sub-int/2addr v4, p3

    if-gez v4, :cond_2

    neg-int v4, v4

    :cond_2
    add-int/2addr v0, v1

    add-int/2addr v4, v0

    if-ge v4, v5, :cond_5

    move v0, v2

    move v1, v4

    :goto_1
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v3, v3, v2

    shr-int/lit8 v3, v3, 0xc

    sub-int v3, v4, v3

    if-ge v3, v7, :cond_4

    move v4, v2

    move v7, v3

    :goto_2
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

    goto :goto_0

    :cond_3
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

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    move v0, v3

    move v1, v5

    goto :goto_1
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

    :goto_0
    if-ge v4, v13, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v7, v0, v4

    aget v2, v7, v10

    add-int/lit8 v1, v4, 0x1

    move v0, v4

    :goto_1
    if-ge v1, v13, :cond_1

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v8, v1

    aget v9, v8, v10

    if-ge v9, v2, :cond_0

    aget v2, v8, v10

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    if-eq v4, v0, :cond_2

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

    :cond_2
    if-eq v2, v3, :cond_5

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int v1, v5, v4

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    add-int/lit8 v0, v3, 0x1

    :goto_2
    if-ge v0, v2, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    move v5, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int/lit16 v1, v5, 0xff

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    add-int/lit8 v0, v3, 0x1

    :goto_4
    if-ge v0, v13, :cond_6

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v2, v3

    move v0, v5

    goto :goto_3

    :cond_6
    return-void
.end method

.method public learn()V
    .registers 23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v3, 0x5e5

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    :cond_0
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

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v4, v2, v2

    rsub-int v4, v4, 0x400

    mul-int/lit16 v4, v4, 0x100

    div-int/lit16 v4, v4, 0x400

    mul-int/lit16 v4, v4, 0x400

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v3, 0x5e5

    if-ge v2, v3, :cond_3

    const/4 v2, 0x3

    move v14, v2

    :goto_1
    const/16 v9, 0x20

    const/4 v4, 0x0

    const/16 v2, 0x800

    const/16 v3, 0x400

    const/4 v5, 0x0

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

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

    if-eqz v9, :cond_2

    move-object/from16 v8, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/bumptech/glide/gifencoder/NeuQuant;->alterneigh(IIIII)V

    :cond_2
    add-int v2, v18, v14

    move/from16 v0, v20

    if-lt v2, v0, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    sub-int/2addr v2, v4

    move v5, v2

    :goto_3
    add-int/lit8 v8, v17, 0x1

    if-nez v15, :cond_a

    const/4 v2, 0x1

    :goto_4
    rem-int v4, v8, v2

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    div-int v4, v3, v4

    sub-int v6, v3, v4

    div-int/lit8 v3, v16, 0x1e

    sub-int v7, v16, v3

    shr-int/lit8 v3, v7, 0x6

    const/4 v4, 0x1

    if-gt v3, v4, :cond_8

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_7

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

    goto :goto_6

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1f3

    if-eqz v2, :cond_4

    const/16 v2, 0x5d9

    move v14, v2

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1eb

    if-eqz v2, :cond_5

    const/16 v2, 0x5c1

    move v14, v2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1e7

    if-eqz v2, :cond_6

    const/16 v2, 0x5b5

    move v14, v2

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x5e5

    move v14, v2

    goto/16 :goto_1

    :cond_7
    move v3, v6

    move v9, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move v15, v2

    move/from16 v18, v5

    goto/16 :goto_2

    :cond_8
    move v4, v3

    goto :goto_5

    :cond_9
    move/from16 v17, v8

    move v15, v2

    move/from16 v18, v5

    goto/16 :goto_2

    :cond_a
    move v2, v15

    goto :goto_4

    :cond_b
    move v5, v2

    goto :goto_3

    :cond_c
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

    :goto_0
    if-lt v4, v5, :cond_0

    if-ltz v1, :cond_b

    :cond_0
    if-ge v4, v5, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v0, v4

    aget v0, v8, v10

    sub-int/2addr v0, p2

    if-lt v0, v2, :cond_2

    move v4, v5

    :cond_1
    :goto_1
    if-ltz v1, :cond_a

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v0, v1

    aget v0, v8, v10

    sub-int v0, p2, v0

    if-lt v0, v2, :cond_6

    move v1, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    if-gez v0, :cond_3

    neg-int v0, v0

    :cond_3
    aget v6, v8, v9

    sub-int/2addr v6, p1

    if-gez v6, :cond_4

    neg-int v6, v6

    :cond_4
    add-int/2addr v6, v0

    if-ge v6, v2, :cond_1

    aget v0, v8, v11

    sub-int/2addr v0, p3

    if-gez v0, :cond_5

    neg-int v0, v0

    :cond_5
    add-int/2addr v0, v6

    if-ge v0, v2, :cond_1

    const/4 v2, 0x3

    aget v3, v8, v2

    move v2, v0

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    if-gez v0, :cond_7

    neg-int v0, v0

    :cond_7
    aget v6, v8, v9

    sub-int/2addr v6, p1

    if-gez v6, :cond_8

    neg-int v6, v6

    :cond_8
    add-int/2addr v6, v0

    if-ge v6, v2, :cond_a

    aget v0, v8, v11

    sub-int/2addr v0, p3

    if-gez v0, :cond_9

    neg-int v0, v0

    :cond_9
    add-int/2addr v0, v6

    if-ge v0, v2, :cond_a

    const/4 v2, 0x3

    aget v3, v8, v2

    move v2, v0

    goto :goto_0

    :cond_a
    move v0, v1

    move v1, v0

    goto :goto_0

    :cond_b
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

    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

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

    goto :goto_0

    :cond_0
    return-void
.end method
