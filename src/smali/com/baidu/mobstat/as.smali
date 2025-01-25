.class public final Lcom/baidu/mobstat/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mobstat/ar;


# static fields
.field private static g:[I

.field private static h:[I

.field private static final i:[B

.field private static final j:[B

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I

.field private static final p:[I

.field private static final q:[I

.field private static final r:[I

.field private static final s:[I

.field private static final t:[I

.field private static final u:[I

.field private static final v:[I

.field private static final w:[B


# instance fields
.field private b:Z

.field private c:Z

.field private d:[Ljava/lang/Object;

.field private e:[I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 20

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/baidu/mobstat/as;->g:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->h:[I

    new-array v2, v0, [B

    sput-object v2, Lcom/baidu/mobstat/as;->i:[B

    new-array v2, v0, [B

    sput-object v2, Lcom/baidu/mobstat/as;->j:[B

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->k:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->l:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->m:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->n:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->o:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->p:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->q:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->r:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->s:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->t:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->u:[I

    new-array v2, v0, [I

    sput-object v2, Lcom/baidu/mobstat/as;->v:[I

    const/16 v2, 0x1e

    new-array v3, v2, [B

    sput-object v3, Lcom/baidu/mobstat/as;->w:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v1, v3

    const/4 v1, 0x1

    :goto_4d
    if-ge v1, v0, :cond_63

    sget-object v5, Lcom/baidu/mobstat/as;->g:[I

    add-int/lit8 v6, v1, -0x1

    aget v6, v5, v6

    shl-int/lit8 v7, v6, 0x1

    xor-int/2addr v6, v7

    and-int/lit16 v7, v6, 0x100

    if-eqz v7, :cond_5e

    xor-int/lit16 v6, v6, 0x11b

    :cond_5e
    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_63
    const/4 v1, 0x1

    :goto_64
    const/16 v5, 0xff

    if-ge v1, v5, :cond_73

    sget-object v5, Lcom/baidu/mobstat/as;->h:[I

    sget-object v6, Lcom/baidu/mobstat/as;->g:[I

    aget v6, v6, v1

    aput v1, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_73
    const/16 v1, 0x8

    new-array v6, v1, [B

    fill-array-data v6, :array_302

    new-array v7, v1, [B

    fill-array-data v7, :array_30a

    new-array v8, v1, [B

    fill-array-data v8, :array_312

    new-array v9, v1, [B

    fill-array-data v9, :array_31a

    new-array v10, v1, [B

    fill-array-data v10, :array_322

    filled-new-array {v0, v1}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[B

    aget-object v12, v11, v4

    const/4 v13, 0x7

    aput-byte v4, v12, v13

    const/4 v12, 0x2

    const/4 v14, 0x2

    :goto_a1
    if-ge v14, v0, :cond_c7

    sget-object v15, Lcom/baidu/mobstat/as;->g:[I

    sget-object v16, Lcom/baidu/mobstat/as;->h:[I

    aget v2, v16, v14

    rsub-int v2, v2, 0xff

    aget v2, v15, v2

    const/4 v15, 0x0

    :goto_ae
    if-ge v15, v1, :cond_c0

    aget-object v16, v11, v14

    rsub-int/lit8 v17, v15, 0x7

    ushr-int v17, v2, v17

    and-int/lit8 v5, v17, 0x1

    int-to-byte v5, v5

    aput-byte v5, v16, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v5, 0xff

    goto :goto_ae

    :cond_c0
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x1e

    const/16 v5, 0xff

    goto :goto_a1

    :cond_c7
    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    const/4 v5, 0x0

    :goto_d4
    const/4 v14, 0x3

    if-ge v5, v0, :cond_131

    const/4 v0, 0x0

    :goto_d8
    if-ge v0, v1, :cond_12a

    aget-object v17, v2, v5

    new-array v13, v1, [B

    fill-array-data v13, :array_32a

    aget-byte v13, v13, v0

    aput-byte v13, v17, v0

    const/4 v13, 0x0

    :goto_e6
    if-ge v13, v1, :cond_125

    aget-object v17, v2, v5

    aget-byte v18, v17, v0

    new-array v15, v1, [[B

    aput-object v6, v15, v3

    aput-object v7, v15, v4

    new-array v4, v1, [B

    fill-array-data v4, :array_332

    aput-object v4, v15, v12

    new-array v4, v1, [B

    fill-array-data v4, :array_33a

    aput-object v4, v15, v14

    new-array v4, v1, [B

    fill-array-data v4, :array_342

    const/16 v19, 0x4

    aput-object v4, v15, v19

    const/4 v4, 0x5

    aput-object v8, v15, v4

    const/4 v4, 0x6

    aput-object v9, v15, v4

    const/4 v4, 0x7

    aput-object v10, v15, v4

    aget-object v4, v15, v0

    aget-byte v4, v4, v13

    aget-object v15, v11, v5

    aget-byte v15, v15, v13

    mul-int v4, v4, v15

    xor-int v4, v18, v4

    int-to-byte v4, v4

    aput-byte v4, v17, v0

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_e6

    :cond_125
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    const/4 v13, 0x7

    goto :goto_d8

    :cond_12a
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x100

    const/4 v4, 0x1

    const/4 v13, 0x7

    goto :goto_d4

    :cond_131
    const/4 v0, 0x0

    :goto_132
    const/16 v4, 0x100

    if-ge v0, v4, :cond_165

    sget-object v4, Lcom/baidu/mobstat/as;->i:[B

    aget-object v5, v2, v0

    aget-byte v5, v5, v3

    const/4 v6, 0x7

    shl-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    const/4 v4, 0x1

    :goto_142
    if-ge v4, v1, :cond_156

    sget-object v5, Lcom/baidu/mobstat/as;->i:[B

    aget-byte v7, v5, v0

    aget-object v8, v2, v0

    aget-byte v8, v8, v4

    rsub-int/lit8 v9, v4, 0x7

    shl-int/2addr v8, v9

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_142

    :cond_156
    sget-object v4, Lcom/baidu/mobstat/as;->j:[B

    sget-object v5, Lcom/baidu/mobstat/as;->i:[B

    aget-byte v5, v5, v0

    const/16 v7, 0xff

    and-int/2addr v5, v7

    int-to-byte v7, v0

    aput-byte v7, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_132

    :cond_165
    const/4 v0, 0x4

    new-array v2, v0, [[B

    new-array v4, v0, [B

    fill-array-data v4, :array_34a

    aput-object v4, v2, v3

    new-array v4, v0, [B

    fill-array-data v4, :array_350

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v0, [B

    fill-array-data v4, :array_356

    aput-object v4, v2, v12

    new-array v4, v0, [B

    fill-array-data v4, :array_35c

    aput-object v4, v2, v14

    filled-new-array {v0, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    const/4 v5, 0x0

    :goto_192
    if-ge v5, v0, :cond_1ae

    const/4 v6, 0x0

    :goto_195
    if-ge v6, v0, :cond_1a3

    aget-object v0, v4, v5

    aget-object v7, v2, v5

    aget-byte v7, v7, v6

    aput-byte v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x4

    goto :goto_195

    :cond_1a3
    aget-object v0, v4, v5

    add-int/lit8 v6, v5, 0x4

    const/4 v7, 0x1

    aput-byte v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x4

    goto :goto_192

    :cond_1ae
    filled-new-array {v0, v0}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    const/4 v6, 0x0

    :goto_1bb
    if-ge v6, v0, :cond_243

    aget-object v7, v4, v6

    aget-byte v7, v7, v6

    if-nez v7, :cond_1f1

    add-int/lit8 v7, v6, 0x1

    :goto_1c5
    aget-object v8, v4, v7

    aget-byte v8, v8, v6

    if-nez v8, :cond_1d0

    if-ge v7, v0, :cond_1d0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c5

    :cond_1d0
    if-eq v7, v0, :cond_1e9

    const/4 v0, 0x0

    :goto_1d3
    if-ge v0, v1, :cond_1e4

    aget-object v8, v4, v6

    aget-byte v9, v8, v0

    aget-object v10, v4, v7

    aget-byte v11, v10, v0

    aput-byte v11, v8, v0

    aput-byte v9, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d3

    :cond_1e4
    aget-object v0, v4, v6

    aget-byte v7, v0, v6

    goto :goto_1f1

    :cond_1e9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "G matrix is not invertible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f1
    :goto_1f1
    const/4 v0, 0x0

    :goto_1f2
    if-ge v0, v1, :cond_216

    aget-object v8, v4, v6

    aget-byte v9, v8, v0

    if-eqz v9, :cond_211

    sget-object v10, Lcom/baidu/mobstat/as;->g:[I

    sget-object v11, Lcom/baidu/mobstat/as;->h:[I

    and-int/lit16 v9, v9, 0xff

    aget v9, v11, v9

    const/16 v13, 0xff

    add-int/2addr v9, v13

    and-int/lit16 v15, v7, 0xff

    aget v11, v11, v15

    sub-int/2addr v9, v11

    rem-int/2addr v9, v13

    aget v9, v10, v9

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    goto :goto_213

    :cond_211
    const/16 v13, 0xff

    :goto_213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f2

    :cond_216
    const/16 v13, 0xff

    const/4 v0, 0x0

    :goto_219
    const/4 v7, 0x4

    if-ge v0, v7, :cond_23e

    if-eq v6, v0, :cond_23b

    add-int/lit8 v7, v6, 0x1

    :goto_220
    if-ge v7, v1, :cond_237

    aget-object v8, v4, v0

    aget-byte v9, v8, v7

    aget-object v10, v4, v6

    aget-byte v10, v10, v7

    aget-byte v11, v8, v6

    invoke-static {v10, v11}, Lcom/baidu/mobstat/as;->a(II)I

    move-result v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_220

    :cond_237
    aget-object v7, v4, v0

    aput-byte v3, v7, v6

    :cond_23b
    add-int/lit8 v0, v0, 0x1

    goto :goto_219

    :cond_23e
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x4

    goto/16 :goto_1bb

    :cond_243
    const/4 v0, 0x0

    const/4 v1, 0x4

    :goto_245
    if-ge v0, v1, :cond_25a

    const/4 v6, 0x0

    :goto_248
    if-ge v6, v1, :cond_257

    aget-object v7, v5, v0

    aget-object v8, v4, v0

    add-int/lit8 v9, v6, 0x4

    aget-byte v8, v8, v9

    aput-byte v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_248

    :cond_257
    add-int/lit8 v0, v0, 0x1

    goto :goto_245

    :cond_25a
    const/4 v0, 0x0

    const/16 v1, 0x100

    :goto_25d
    if-ge v0, v1, :cond_2e6

    sget-object v4, Lcom/baidu/mobstat/as;->i:[B

    aget-byte v4, v4, v0

    sget-object v6, Lcom/baidu/mobstat/as;->k:[I

    aget-object v7, v2, v3

    invoke-static {v4, v7}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v7

    aput v7, v6, v0

    sget-object v6, Lcom/baidu/mobstat/as;->l:[I

    const/4 v7, 0x1

    aget-object v8, v2, v7

    invoke-static {v4, v8}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v7

    aput v7, v6, v0

    sget-object v6, Lcom/baidu/mobstat/as;->m:[I

    aget-object v7, v2, v12

    invoke-static {v4, v7}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v7

    aput v7, v6, v0

    sget-object v6, Lcom/baidu/mobstat/as;->n:[I

    aget-object v7, v2, v14

    invoke-static {v4, v7}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v4

    aput v4, v6, v0

    sget-object v4, Lcom/baidu/mobstat/as;->j:[B

    aget-byte v4, v4, v0

    sget-object v6, Lcom/baidu/mobstat/as;->o:[I

    aget-object v7, v5, v3

    invoke-static {v4, v7}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v7

    aput v7, v6, v0

    sget-object v6, Lcom/baidu/mobstat/as;->p:[I

    const/4 v7, 0x1

    aget-object v8, v5, v7

    invoke-static {v4, v8}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v7

    aput v7, v6, v0

    sget-object v6, Lcom/baidu/mobstat/as;->q:[I

    aget-object v7, v5, v12

    invoke-static {v4, v7}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v7

    aput v7, v6, v0

    sget-object v6, Lcom/baidu/mobstat/as;->r:[I

    aget-object v7, v5, v14

    invoke-static {v4, v7}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v4

    aput v4, v6, v0

    sget-object v4, Lcom/baidu/mobstat/as;->s:[I

    aget-object v6, v5, v3

    invoke-static {v0, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v4, v0

    sget-object v4, Lcom/baidu/mobstat/as;->t:[I

    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-static {v0, v7}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v4, v0

    sget-object v4, Lcom/baidu/mobstat/as;->u:[I

    aget-object v6, v5, v12

    invoke-static {v0, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v4, v0

    sget-object v4, Lcom/baidu/mobstat/as;->v:[I

    aget-object v6, v5, v14

    invoke-static {v0, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25d

    :cond_2e6
    sget-object v0, Lcom/baidu/mobstat/as;->w:[B

    const/4 v1, 0x1

    aput-byte v1, v0, v3

    const/16 v0, 0x1e

    const/4 v4, 0x1

    :goto_2ee
    if-ge v4, v0, :cond_2fc

    invoke-static {v12, v1}, Lcom/baidu/mobstat/as;->a(II)I

    move-result v1

    sget-object v2, Lcom/baidu/mobstat/as;->w:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2ee

    :cond_2fc
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mobstat/as;->h:[I

    sput-object v0, Lcom/baidu/mobstat/as;->g:[I

    return-void

    :array_302
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_30a
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_312
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_31a
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_322
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_32a
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_332
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_33a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_342
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_34a
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    :array_350
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    :array_356
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    :array_35c
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/as;->b:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/as;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mobstat/as;->d:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/baidu/mobstat/as;->e:[I

    iput v0, p0, Lcom/baidu/mobstat/as;->f:I

    return-void
.end method

.method private static final a(II)I
    .registers 4

    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    sget-object v0, Lcom/baidu/mobstat/as;->g:[I

    sget-object v1, Lcom/baidu/mobstat/as;->h:[I

    and-int/lit16 p0, p0, 0xff

    aget p0, v1, p0

    and-int/lit16 p1, p1, 0xff

    aget p1, v1, p1

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0xff

    aget p0, v0, p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static final a(I[B)I
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/baidu/mobstat/as;->h:[I

    and-int/lit16 p0, p0, 0xff

    aget p0, v1, p0

    aget-byte v2, p1, v0

    if-eqz v2, :cond_1c

    sget-object v3, Lcom/baidu/mobstat/as;->g:[I

    and-int/lit16 v2, v2, 0xff

    aget v2, v1, v2

    add-int/2addr v2, p0

    rem-int/lit16 v2, v2, 0xff

    aget v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_30

    sget-object v4, Lcom/baidu/mobstat/as;->g:[I

    and-int/lit16 v3, v3, 0xff

    aget v3, v1, v3

    add-int/2addr v3, p0

    rem-int/lit16 v3, v3, 0xff

    aget v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    const/4 v4, 0x2

    aget-byte v4, p1, v4

    if-eqz v4, :cond_44

    sget-object v5, Lcom/baidu/mobstat/as;->g:[I

    and-int/lit16 v4, v4, 0xff

    aget v4, v1, v4

    add-int/2addr v4, p0

    rem-int/lit16 v4, v4, 0xff

    aget v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    const/4 v5, 0x3

    aget-byte p1, p1, v5

    if-eqz p1, :cond_57

    sget-object v0, Lcom/baidu/mobstat/as;->g:[I

    and-int/lit16 p1, p1, 0xff

    aget p1, v1, p1

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0xff

    aget p0, v0, p0

    and-int/lit16 v0, p0, 0xff

    :cond_57
    shl-int/lit8 p0, v2, 0x18

    shl-int/lit8 p1, v3, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v4, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private a(Z)V
    .registers 14

    iget-object v0, p0, Lcom/baidu/mobstat/as;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, [[I

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/baidu/mobstat/as;->e:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x4

    if-ge v3, v1, :cond_26

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_23

    iget-object v6, p0, Lcom/baidu/mobstat/as;->e:[I

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v5

    aget-object v8, v0, v3

    aget v8, v8, v5

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_26
    const/4 v0, 0x1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/baidu/mobstat/as;->e:[I

    array-length v3, p1

    sub-int/2addr v3, v4

    aget v3, p1, v3

    array-length v5, p1

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    aget v5, p1, v5

    array-length v7, p1

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    aget v7, p1, v7

    array-length v9, p1

    sub-int/2addr v9, v0

    aget v9, p1, v9

    array-length p1, p1

    sub-int/2addr p1, v0

    :goto_3f
    if-le p1, v6, :cond_4c

    iget-object v10, p0, Lcom/baidu/mobstat/as;->e:[I

    add-int/lit8 v11, p1, -0x4

    aget v11, v10, v11

    aput v11, v10, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_3f

    :cond_4c
    iget-object p1, p0, Lcom/baidu/mobstat/as;->e:[I

    aput v3, p1, v2

    aput v5, p1, v0

    aput v7, p1, v8

    aput v9, p1, v6

    :cond_56
    const/16 p1, 0xd

    if-lt v1, p1, :cond_5c

    const/4 p1, 0x1

    goto :goto_5d

    :cond_5c
    const/4 p1, 0x0

    :goto_5d
    iput-boolean p1, p0, Lcom/baidu/mobstat/as;->b:Z

    const/16 p1, 0xf

    if-ne v1, p1, :cond_64

    const/4 v2, 0x1

    :cond_64
    iput-boolean v2, p0, Lcom/baidu/mobstat/as;->c:Z

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/baidu/mobstat/as;->f:I

    return-void
.end method

.method static final a(I)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/baidu/mobstat/as;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_12

    sget-object v2, Lcom/baidu/mobstat/as;->a:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method private static a([B)[Ljava/lang/Object;
    .registers 17

    move-object/from16 v0, p0

    if-eqz v0, :cond_188

    array-length v1, v0

    invoke-static {v1}, Lcom/baidu/mobstat/as;->a(I)Z

    move-result v1

    if-eqz v1, :cond_16e

    array-length v1, v0

    invoke-static {v1}, Lcom/baidu/mobstat/as;->b(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    filled-new-array {v2, v4}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    filled-new-array {v2, v4}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    array-length v6, v0

    div-int/2addr v6, v4

    new-array v7, v6, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_34
    const/16 v11, 0x8

    if-ge v9, v6, :cond_5b

    aget-byte v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, v0, v13

    add-int/lit8 v14, v10, 0x2

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v11, v14, 0x8

    shl-int/lit8 v12, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v12, v10, 0x3

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v10, v4

    goto :goto_34

    :cond_5b
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_5d
    if-ge v0, v6, :cond_78

    if-ge v9, v3, :cond_78

    div-int/lit8 v10, v9, 0x4

    aget-object v12, v5, v10

    rem-int/lit8 v13, v9, 0x4

    aget v14, v7, v0

    aput v14, v12, v13

    sub-int v10, v1, v10

    aget-object v10, v2, v10

    aget v12, v7, v0

    aput v12, v10, v13

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_5d

    :cond_78
    const/4 v0, 0x0

    :goto_79
    if-ge v9, v3, :cond_130

    add-int/lit8 v12, v6, -0x1

    aget v12, v7, v12

    aget v13, v7, v8

    sget-object v14, Lcom/baidu/mobstat/as;->i:[B

    ushr-int/lit8 v15, v12, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v14, v15

    ushr-int/lit8 v4, v12, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v14, v4

    and-int/lit16 v10, v12, 0xff

    aget-byte v10, v14, v10

    ushr-int/lit8 v12, v12, 0x18

    aget-byte v12, v14, v12

    sget-object v14, Lcom/baidu/mobstat/as;->w:[B

    aget-byte v14, v14, v0

    shl-int/lit8 v14, v14, 0x18

    shl-int/lit8 v15, v15, 0x18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v4, v15

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v11

    xor-int/2addr v4, v10

    and-int/lit16 v10, v12, 0xff

    xor-int/2addr v4, v10

    xor-int/2addr v4, v14

    xor-int/2addr v4, v13

    aput v4, v7, v8

    const/4 v4, 0x1

    const/4 v10, 0x0

    if-eq v6, v11, :cond_c1

    :goto_b3
    if-ge v4, v6, :cond_10e

    aget v12, v7, v4

    aget v13, v7, v10

    xor-int/2addr v12, v13

    aput v12, v7, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x1

    add-int/2addr v10, v12

    goto :goto_b3

    :cond_c1
    :goto_c1
    div-int/lit8 v12, v6, 0x2

    if-ge v4, v12, :cond_d1

    aget v12, v7, v4

    aget v13, v7, v10

    xor-int/2addr v12, v13

    aput v12, v7, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x1

    add-int/2addr v10, v12

    goto :goto_c1

    :cond_d1
    add-int/lit8 v4, v12, -0x1

    aget v4, v7, v4

    aget v10, v7, v12

    sget-object v13, Lcom/baidu/mobstat/as;->i:[B

    and-int/lit16 v14, v4, 0xff

    aget-byte v14, v13, v14

    ushr-int/lit8 v15, v4, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v13, v15

    ushr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v13, v8

    ushr-int/lit8 v4, v4, 0x18

    aget-byte v4, v13, v4

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v13, v15, 0xff

    shl-int/2addr v13, v11

    and-int/lit16 v14, v14, 0xff

    xor-int/2addr v13, v14

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v8, v13

    xor-int/2addr v4, v8

    xor-int/2addr v4, v10

    aput v4, v7, v12

    add-int/lit8 v4, v12, 0x1

    :goto_100
    if-ge v4, v6, :cond_10e

    aget v8, v7, v4

    aget v10, v7, v12

    xor-int/2addr v8, v10

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    add-int/2addr v12, v8

    goto :goto_100

    :cond_10e
    const/4 v4, 0x0

    :goto_10f
    if-ge v4, v6, :cond_12a

    if-ge v9, v3, :cond_12a

    div-int/lit8 v8, v9, 0x4

    aget-object v10, v5, v8

    rem-int/lit8 v12, v9, 0x4

    aget v13, v7, v4

    aput v13, v10, v12

    sub-int v8, v1, v8

    aget-object v8, v2, v8

    aget v10, v7, v4

    aput v10, v8, v12

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_10f

    :cond_12a
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x4

    const/4 v8, 0x0

    goto/16 :goto_79

    :cond_130
    const/4 v12, 0x1

    :goto_131
    if-ge v12, v1, :cond_164

    const/4 v0, 0x0

    const/4 v3, 0x4

    :goto_135
    if-ge v0, v3, :cond_161

    aget-object v4, v2, v12

    aget v6, v4, v0

    sget-object v7, Lcom/baidu/mobstat/as;->s:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    sget-object v8, Lcom/baidu/mobstat/as;->t:[I

    ushr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    sget-object v9, Lcom/baidu/mobstat/as;->u:[I

    ushr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    sget-object v10, Lcom/baidu/mobstat/as;->v:[I

    and-int/lit16 v6, v6, 0xff

    aget v6, v10, v6

    xor-int/2addr v7, v8

    xor-int/2addr v7, v9

    xor-int/2addr v6, v7

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_135

    :cond_161
    add-int/lit8 v12, v12, 0x1

    goto :goto_131

    :cond_164
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-object v0

    :cond_16e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid AES key length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_188
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Empty key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    goto :goto_191

    :goto_190
    throw v0

    :goto_191
    goto :goto_190
.end method

.method private static b(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x6

    return p0
.end method


# virtual methods
.method a()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method a(ZLjava/lang/String;[B)V
    .registers 4

    array-length p2, p3

    invoke-static {p2}, Lcom/baidu/mobstat/as;->a(I)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {p3}, Lcom/baidu/mobstat/as;->a([B)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/mobstat/as;->d:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/as;->a(Z)V

    return-void

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid AES key length: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method a([BI[BI)V
    .registers 29

    move-object/from16 v0, p0

    aget-byte v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    iget-object v5, v0, Lcom/baidu/mobstat/as;->e:[I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, v4, 0xff

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget v2, v5, v2

    xor-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v5, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xb

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v5, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xc

    aget-byte v4, p1, v4

    add-int/lit8 v6, p2, 0xd

    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0xe

    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0xf

    aget-byte v8, p1, v8

    const/4 v9, 0x3

    aget v5, v5, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v4, v6

    and-int/lit16 v6, v7, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    and-int/lit16 v6, v8, 0xff

    or-int/2addr v4, v6

    xor-int/2addr v4, v5

    const/4 v5, 0x4

    :goto_8f
    iget v6, v0, Lcom/baidu/mobstat/as;->f:I

    if-ge v5, v6, :cond_125

    sget-object v6, Lcom/baidu/mobstat/as;->k:[I

    ushr-int/lit8 v7, v1, 0x18

    aget v7, v6, v7

    sget-object v8, Lcom/baidu/mobstat/as;->l:[I

    ushr-int/lit8 v10, v2, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v8, v10

    sget-object v11, Lcom/baidu/mobstat/as;->m:[I

    ushr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v11, v12

    sget-object v13, Lcom/baidu/mobstat/as;->n:[I

    and-int/lit16 v14, v4, 0xff

    aget v14, v13, v14

    iget-object v15, v0, Lcom/baidu/mobstat/as;->e:[I

    aget v16, v15, v5

    ushr-int/lit8 v17, v2, 0x18

    aget v17, v6, v17

    ushr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v8, v9

    ushr-int/lit8 v0, v4, 0x8

    and-int/lit16 v0, v0, 0xff

    aget v0, v11, v0

    move/from16 p2, v0

    and-int/lit16 v0, v1, 0xff

    aget v0, v13, v0

    add-int/lit8 v18, v5, 0x1

    aget v18, v15, v18

    ushr-int/lit8 v19, v3, 0x18

    aget v19, v6, v19

    move/from16 v20, v0

    ushr-int/lit8 v0, v4, 0x10

    and-int/lit16 v0, v0, 0xff

    aget v0, v8, v0

    move/from16 v21, v9

    ushr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v11, v9

    move/from16 v22, v14

    and-int/lit16 v14, v2, 0xff

    aget v14, v13, v14

    add-int/lit8 v23, v5, 0x2

    aget v23, v15, v23

    ushr-int/lit8 v4, v4, 0x18

    aget v4, v6, v4

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    aget v1, v8, v1

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v11, v2

    and-int/lit16 v3, v3, 0xff

    aget v3, v13, v3

    add-int/lit8 v6, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, v15, v5

    xor-int/2addr v1, v4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    xor-int v4, v5, v1

    xor-int v0, v0, v19

    xor-int/2addr v0, v9

    xor-int/2addr v0, v14

    xor-int v3, v0, v23

    xor-int v0, v7, v10

    xor-int/2addr v0, v12

    xor-int v0, v0, v22

    xor-int v1, v0, v16

    xor-int v0, v17, v21

    xor-int v0, v0, p2

    xor-int v0, v0, v20

    xor-int v2, v18, v0

    move-object/from16 v0, p0

    move v5, v6

    const/4 v9, 0x3

    goto/16 :goto_8f

    :cond_125
    iget-object v6, v0, Lcom/baidu/mobstat/as;->e:[I

    aget v7, v6, v5

    sget-object v8, Lcom/baidu/mobstat/as;->i:[B

    ushr-int/lit8 v9, v1, 0x18

    aget-byte v9, v8, v9

    ushr-int/lit8 v10, v7, 0x18

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, p4

    add-int/lit8 v9, p4, 0x1

    ushr-int/lit8 v10, v2, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x10

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x2

    ushr-int/lit8 v10, v3, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x3

    and-int/lit16 v10, v4, 0xff

    aget-byte v10, v8, v10

    xor-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, p3, v9

    add-int/lit8 v7, v5, 0x1

    aget v7, v6, v7

    add-int/lit8 v9, p4, 0x4

    ushr-int/lit8 v10, v2, 0x18

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x18

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x5

    ushr-int/lit8 v10, v3, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x10

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x6

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x7

    and-int/lit16 v10, v1, 0xff

    aget-byte v10, v8, v10

    xor-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, p3, v9

    add-int/lit8 v7, v5, 0x2

    aget v7, v6, v7

    add-int/lit8 v9, p4, 0x8

    ushr-int/lit8 v10, v3, 0x18

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x18

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x9

    ushr-int/lit8 v10, v4, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x10

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0xa

    ushr-int/lit8 v10, v1, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0xb

    and-int/lit16 v10, v2, 0xff

    aget-byte v10, v8, v10

    xor-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, p3, v9

    const/4 v7, 0x3

    add-int/2addr v5, v7

    aget v5, v6, v5

    add-int/lit8 v6, p4, 0xc

    ushr-int/lit8 v4, v4, 0x18

    aget-byte v4, v8, v4

    ushr-int/lit8 v7, v5, 0x18

    xor-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, p3, v6

    add-int/lit8 v4, p4, 0xd

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v8, v1

    ushr-int/lit8 v6, v5, 0x10

    xor-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, p3, v4

    add-int/lit8 v1, p4, 0xe

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v8, v2

    ushr-int/lit8 v4, v5, 0x8

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0xf

    and-int/lit16 v2, v3, 0xff

    aget-byte v2, v8, v2

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    return-void
.end method

.method b([BI[BI)V
    .registers 24

    move-object/from16 v0, p0

    aget-byte v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    iget-object v5, v0, Lcom/baidu/mobstat/as;->e:[I

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0x10

    shl-int/2addr v2, v6

    const/16 v7, 0x18

    shl-int/2addr v1, v7

    or-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    and-int/lit16 v2, v4, 0xff

    or-int/2addr v1, v2

    const/4 v2, 0x4

    aget v2, v5, v2

    xor-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    shl-int/2addr v2, v7

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v3

    or-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    const/4 v4, 0x5

    aget v4, v5, v4

    xor-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, p1, v4

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v6

    shl-int/2addr v4, v7

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v3

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    const/4 v8, 0x6

    aget v8, v5, v8

    xor-int/2addr v4, v8

    add-int/lit8 v8, p2, 0xc

    aget-byte v8, p1, v8

    add-int/lit8 v9, p2, 0xd

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    shl-int/2addr v8, v7

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0xe

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v3

    or-int/2addr v8, v9

    const/16 v9, 0xf

    add-int/lit8 v10, p2, 0xf

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    const/4 v10, 0x7

    aget v10, v5, v10

    xor-int/2addr v8, v10

    iget-boolean v10, v0, Lcom/baidu/mobstat/as;->b:Z

    if-eqz v10, :cond_260

    sget-object v10, Lcom/baidu/mobstat/as;->o:[I

    ushr-int/lit8 v11, v1, 0x18

    aget v11, v10, v11

    sget-object v12, Lcom/baidu/mobstat/as;->p:[I

    ushr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    sget-object v14, Lcom/baidu/mobstat/as;->q:[I

    ushr-int/lit8 v15, v4, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    sget-object v16, Lcom/baidu/mobstat/as;->r:[I

    xor-int/2addr v11, v13

    xor-int/2addr v11, v15

    and-int/lit16 v13, v2, 0xff

    aget v13, v16, v13

    xor-int/2addr v11, v13

    aget v13, v5, v3

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v2, 0x18

    aget v13, v10, v13

    ushr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v13, v15

    and-int/lit16 v15, v4, 0xff

    aget v15, v16, v15

    xor-int/2addr v13, v15

    const/16 v15, 0x9

    aget v15, v5, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v4, 0x18

    aget v15, v10, v15

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v12, v9

    xor-int/2addr v9, v15

    ushr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v9, v15

    and-int/lit16 v15, v8, 0xff

    aget v15, v16, v15

    xor-int/2addr v9, v15

    const/16 v15, 0xa

    aget v15, v5, v15

    xor-int/2addr v9, v15

    ushr-int/lit8 v8, v8, 0x18

    aget v8, v10, v8

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v14, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v16, v1

    xor-int/2addr v4, v8

    xor-int/2addr v2, v4

    xor-int/2addr v1, v2

    const/16 v2, 0xb

    aget v2, v5, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v11, 0x18

    aget v2, v10, v2

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v9, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v14, v4

    xor-int/2addr v2, v4

    and-int/lit16 v4, v13, 0xff

    aget v4, v16, v4

    xor-int/2addr v2, v4

    const/16 v4, 0xc

    aget v4, v5, v4

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v13, 0x18

    aget v4, v10, v4

    ushr-int/lit8 v8, v11, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v4, v8

    and-int/lit16 v8, v9, 0xff

    aget v8, v16, v8

    xor-int/2addr v4, v8

    const/16 v8, 0xd

    aget v8, v5, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v9, 0x18

    aget v8, v10, v8

    ushr-int/lit8 v15, v13, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v8, v15

    ushr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v8, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v8, v15

    const/16 v15, 0xe

    aget v15, v5, v15

    xor-int/2addr v8, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v9, v6

    and-int/lit16 v9, v9, 0xff

    aget v9, v12, v9

    xor-int/2addr v1, v9

    ushr-int/lit8 v9, v13, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v14, v9

    xor-int/2addr v1, v9

    and-int/lit16 v9, v11, 0xff

    aget v9, v16, v9

    xor-int/2addr v1, v9

    const/16 v9, 0xf

    aget v11, v5, v9

    xor-int/2addr v1, v11

    iget-boolean v9, v0, Lcom/baidu/mobstat/as;->c:Z

    if-eqz v9, :cond_256

    ushr-int/lit8 v9, v2, 0x18

    aget v9, v10, v9

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v12, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v14, v11

    xor-int/2addr v9, v11

    and-int/lit16 v11, v4, 0xff

    aget v11, v16, v11

    xor-int/2addr v9, v11

    aget v11, v5, v6

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v4, 0x18

    aget v11, v10, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v8, 0xff

    aget v13, v16, v13

    xor-int/2addr v11, v13

    const/16 v13, 0x11

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v8, 0x18

    aget v13, v10, v13

    ushr-int/lit8 v15, v4, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v2, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v13, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v13, v15

    const/16 v15, 0x12

    aget v15, v5, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v1, v1, 0x18

    aget v1, v10, v1

    ushr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v1, v8

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v14, v4

    xor-int/2addr v1, v4

    and-int/lit16 v2, v2, 0xff

    aget v2, v16, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x13

    aget v2, v5, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v9, 0x18

    aget v2, v10, v2

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v13, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v14, v4

    xor-int/2addr v2, v4

    and-int/lit16 v4, v11, 0xff

    aget v4, v16, v4

    xor-int/2addr v2, v4

    const/16 v4, 0x14

    aget v4, v5, v4

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v11, 0x18

    aget v4, v10, v4

    ushr-int/lit8 v8, v9, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v4, v8

    and-int/lit16 v8, v13, 0xff

    aget v8, v16, v8

    xor-int/2addr v4, v8

    const/16 v8, 0x15

    aget v8, v5, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v13, 0x18

    aget v8, v10, v8

    ushr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v8, v15

    ushr-int/lit8 v15, v9, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v8, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v8, v15

    const/16 v15, 0x16

    aget v15, v5, v15

    xor-int/2addr v8, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/lit8 v10, v13, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v12, v10

    xor-int/2addr v1, v10

    ushr-int/lit8 v10, v11, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v14, v10

    xor-int/2addr v1, v10

    and-int/lit16 v9, v9, 0xff

    aget v9, v16, v9

    xor-int/2addr v1, v9

    const/16 v9, 0x17

    aget v9, v5, v9

    xor-int/2addr v1, v9

    const/16 v9, 0x18

    goto :goto_258

    :cond_256
    const/16 v9, 0x10

    :goto_258
    move/from16 v18, v8

    move v8, v1

    move v1, v2

    move v2, v4

    move/from16 v4, v18

    goto :goto_262

    :cond_260
    const/16 v9, 0x8

    :goto_262
    sget-object v10, Lcom/baidu/mobstat/as;->o:[I

    ushr-int/lit8 v11, v1, 0x18

    aget v11, v10, v11

    sget-object v12, Lcom/baidu/mobstat/as;->p:[I

    ushr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    sget-object v14, Lcom/baidu/mobstat/as;->q:[I

    ushr-int/lit8 v15, v4, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    sget-object v16, Lcom/baidu/mobstat/as;->r:[I

    xor-int/2addr v11, v13

    xor-int/2addr v11, v15

    and-int/lit16 v13, v2, 0xff

    aget v13, v16, v13

    xor-int/2addr v11, v13

    aget v13, v5, v9

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v2, 0x18

    aget v13, v10, v13

    ushr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v13, v15

    and-int/lit16 v15, v4, 0xff

    aget v15, v16, v15

    xor-int/2addr v13, v15

    add-int/lit8 v15, v9, 0x1

    aget v15, v5, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v4, 0x18

    aget v15, v10, v15

    ushr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v12, v3

    xor-int/2addr v3, v15

    ushr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v3, v15

    and-int/lit16 v15, v8, 0xff

    aget v15, v16, v15

    xor-int/2addr v3, v15

    add-int/lit8 v15, v9, 0x2

    aget v15, v5, v15

    xor-int/2addr v3, v15

    ushr-int/2addr v8, v7

    aget v8, v10, v8

    ushr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    const/16 v15, 0x8

    ushr-int/2addr v2, v15

    and-int/lit16 v2, v2, 0xff

    aget v2, v14, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v16, v1

    xor-int/2addr v4, v8

    xor-int/2addr v2, v4

    xor-int/2addr v1, v2

    add-int/lit8 v2, v9, 0x3

    aget v2, v5, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v11, 0x18

    aget v2, v10, v2

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    ushr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    and-int/lit16 v15, v13, 0xff

    aget v15, v16, v15

    add-int/lit8 v17, v9, 0x4

    aget v17, v5, v17

    xor-int/2addr v2, v4

    xor-int/2addr v2, v8

    xor-int/2addr v2, v15

    xor-int v2, v17, v2

    ushr-int/lit8 v4, v13, 0x18

    aget v4, v10, v4

    ushr-int/lit8 v8, v11, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v4, v8

    and-int/lit16 v8, v3, 0xff

    aget v8, v16, v8

    xor-int/2addr v4, v8

    add-int/lit8 v8, v9, 0x5

    aget v8, v5, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v3, 0x18

    aget v8, v10, v8

    ushr-int/lit8 v15, v13, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v8, v15

    ushr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v8, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v8, v15

    add-int/lit8 v15, v9, 0x6

    aget v15, v5, v15

    xor-int/2addr v8, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget v3, v12, v3

    xor-int/2addr v1, v3

    const/16 v3, 0x8

    ushr-int/2addr v13, v3

    and-int/lit16 v3, v13, 0xff

    aget v3, v14, v3

    xor-int/2addr v1, v3

    and-int/lit16 v3, v11, 0xff

    aget v3, v16, v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v9, 0x7

    aget v3, v5, v3

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v2, 0x18

    aget v3, v10, v3

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v12, v11

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    and-int/lit16 v15, v4, 0xff

    aget v15, v16, v15

    add-int/lit8 v17, v9, 0x8

    aget v17, v5, v17

    xor-int/2addr v3, v11

    xor-int/2addr v3, v13

    xor-int/2addr v3, v15

    xor-int v3, v17, v3

    ushr-int/lit8 v11, v4, 0x18

    aget v11, v10, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v8, 0xff

    aget v13, v16, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v9, 0x9

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v8, 0x18

    aget v13, v10, v13

    ushr-int/lit8 v15, v4, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v2, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v13, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v13, v15

    add-int/lit8 v15, v9, 0xa

    aget v15, v5, v15

    xor-int/2addr v13, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v1, v8

    const/16 v8, 0x8

    ushr-int/2addr v4, v8

    and-int/lit16 v4, v4, 0xff

    aget v4, v14, v4

    xor-int/2addr v1, v4

    and-int/lit16 v2, v2, 0xff

    aget v2, v16, v2

    xor-int/2addr v1, v2

    add-int/lit8 v2, v9, 0xb

    aget v2, v5, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x18

    aget v2, v10, v2

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    ushr-int/lit8 v8, v13, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    and-int/lit16 v15, v11, 0xff

    aget v15, v16, v15

    add-int/lit8 v17, v9, 0xc

    aget v17, v5, v17

    xor-int/2addr v2, v4

    xor-int/2addr v2, v8

    xor-int/2addr v2, v15

    xor-int v2, v17, v2

    ushr-int/lit8 v4, v11, 0x18

    aget v4, v10, v4

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v4, v8

    and-int/lit16 v8, v13, 0xff

    aget v8, v16, v8

    xor-int/2addr v4, v8

    add-int/lit8 v8, v9, 0xd

    aget v8, v5, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v13, 0x18

    aget v8, v10, v8

    ushr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v8, v15

    ushr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v8, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v8, v15

    add-int/lit8 v15, v9, 0xe

    aget v15, v5, v15

    xor-int/2addr v8, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v13, v6

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v1, v13

    const/16 v13, 0x8

    ushr-int/2addr v11, v13

    and-int/lit16 v11, v11, 0xff

    aget v11, v14, v11

    xor-int/2addr v1, v11

    and-int/lit16 v3, v3, 0xff

    aget v3, v16, v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v9, 0xf

    aget v3, v5, v3

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v2, 0x18

    aget v3, v10, v3

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v12, v11

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    and-int/lit16 v15, v4, 0xff

    aget v15, v16, v15

    add-int/lit8 v17, v9, 0x10

    aget v17, v5, v17

    xor-int/2addr v3, v11

    xor-int/2addr v3, v13

    xor-int/2addr v3, v15

    xor-int v3, v17, v3

    ushr-int/lit8 v11, v4, 0x18

    aget v11, v10, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v8, 0xff

    aget v13, v16, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v9, 0x11

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v8, 0x18

    aget v13, v10, v13

    ushr-int/lit8 v15, v4, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v2, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v13, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v13, v15

    add-int/lit8 v15, v9, 0x12

    aget v15, v5, v15

    xor-int/2addr v13, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v1, v8

    const/16 v8, 0x8

    ushr-int/2addr v4, v8

    and-int/lit16 v4, v4, 0xff

    aget v4, v14, v4

    xor-int/2addr v1, v4

    and-int/lit16 v2, v2, 0xff

    aget v2, v16, v2

    xor-int/2addr v1, v2

    add-int/lit8 v2, v9, 0x13

    aget v2, v5, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x18

    aget v2, v10, v2

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    ushr-int/lit8 v8, v13, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    and-int/lit16 v15, v11, 0xff

    aget v15, v16, v15

    add-int/lit8 v17, v9, 0x14

    aget v17, v5, v17

    xor-int/2addr v2, v4

    xor-int/2addr v2, v8

    xor-int/2addr v2, v15

    xor-int v2, v17, v2

    ushr-int/lit8 v4, v11, 0x18

    aget v4, v10, v4

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v4, v8

    and-int/lit16 v8, v13, 0xff

    aget v8, v16, v8

    xor-int/2addr v4, v8

    add-int/lit8 v8, v9, 0x15

    aget v8, v5, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v13, 0x18

    aget v8, v10, v8

    ushr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v8, v15

    ushr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v8, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v8, v15

    add-int/lit8 v15, v9, 0x16

    aget v15, v5, v15

    xor-int/2addr v8, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v13, v6

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v1, v13

    const/16 v13, 0x8

    ushr-int/2addr v11, v13

    and-int/lit16 v11, v11, 0xff

    aget v11, v14, v11

    xor-int/2addr v1, v11

    and-int/lit16 v3, v3, 0xff

    aget v3, v16, v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v9, 0x17

    aget v3, v5, v3

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v2, 0x18

    aget v3, v10, v3

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v12, v11

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    and-int/lit16 v15, v4, 0xff

    aget v15, v16, v15

    add-int/lit8 v17, v9, 0x18

    aget v17, v5, v17

    xor-int/2addr v3, v11

    xor-int/2addr v3, v13

    xor-int/2addr v3, v15

    xor-int v3, v17, v3

    ushr-int/lit8 v11, v4, 0x18

    aget v11, v10, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v8, 0xff

    aget v13, v16, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v9, 0x19

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v8, 0x18

    aget v13, v10, v13

    ushr-int/lit8 v15, v4, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v2, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v13, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v13, v15

    add-int/lit8 v15, v9, 0x1a

    aget v15, v5, v15

    xor-int/2addr v13, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v1, v8

    const/16 v8, 0x8

    ushr-int/2addr v4, v8

    and-int/lit16 v4, v4, 0xff

    aget v4, v14, v4

    xor-int/2addr v1, v4

    and-int/lit16 v2, v2, 0xff

    aget v2, v16, v2

    xor-int/2addr v1, v2

    add-int/lit8 v2, v9, 0x1b

    aget v2, v5, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x18

    aget v2, v10, v2

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    ushr-int/lit8 v8, v13, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    and-int/lit16 v15, v11, 0xff

    aget v15, v16, v15

    add-int/lit8 v17, v9, 0x1c

    aget v17, v5, v17

    xor-int/2addr v2, v4

    xor-int/2addr v2, v8

    xor-int/2addr v2, v15

    xor-int v2, v17, v2

    ushr-int/lit8 v4, v11, 0x18

    aget v4, v10, v4

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v4, v8

    and-int/lit16 v8, v13, 0xff

    aget v8, v16, v8

    xor-int/2addr v4, v8

    add-int/lit8 v8, v9, 0x1d

    aget v8, v5, v8

    xor-int/2addr v4, v8

    ushr-int/lit8 v8, v13, 0x18

    aget v8, v10, v8

    ushr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v8, v15

    ushr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v8, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v8, v15

    add-int/lit8 v15, v9, 0x1e

    aget v15, v5, v15

    xor-int/2addr v8, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v13, v6

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v1, v13

    const/16 v13, 0x8

    ushr-int/2addr v11, v13

    and-int/lit16 v11, v11, 0xff

    aget v11, v14, v11

    xor-int/2addr v1, v11

    and-int/lit16 v3, v3, 0xff

    aget v3, v16, v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v9, 0x1f

    aget v3, v5, v3

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v2, 0x18

    aget v3, v10, v3

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v12, v11

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    and-int/lit16 v15, v4, 0xff

    aget v15, v16, v15

    add-int/lit8 v17, v9, 0x20

    aget v17, v5, v17

    xor-int/2addr v3, v11

    xor-int/2addr v3, v13

    xor-int/2addr v3, v15

    xor-int v3, v17, v3

    ushr-int/lit8 v11, v4, 0x18

    aget v11, v10, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v8, 0xff

    aget v13, v16, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v9, 0x21

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v8, 0x18

    aget v13, v10, v13

    ushr-int/lit8 v15, v4, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v2, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v13, v15

    and-int/lit16 v15, v1, 0xff

    aget v15, v16, v15

    xor-int/2addr v13, v15

    add-int/lit8 v15, v9, 0x22

    aget v15, v5, v15

    xor-int/2addr v13, v15

    ushr-int/2addr v1, v7

    aget v1, v10, v1

    ushr-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    xor-int/2addr v1, v8

    const/16 v8, 0x8

    ushr-int/2addr v4, v8

    and-int/lit16 v4, v4, 0xff

    aget v4, v14, v4

    xor-int/2addr v1, v4

    and-int/lit16 v2, v2, 0xff

    aget v2, v16, v2

    xor-int/2addr v1, v2

    add-int/lit8 v9, v9, 0x23

    aget v2, v5, v9

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aget v2, v5, v2

    sget-object v4, Lcom/baidu/mobstat/as;->j:[B

    ushr-int/lit8 v8, v3, 0x18

    aget-byte v8, v4, v8

    ushr-int/lit8 v9, v2, 0x18

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, p4

    add-int/lit8 v8, p4, 0x1

    ushr-int/lit8 v9, v1, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v4, v9

    ushr-int/lit8 v10, v2, 0x10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    add-int/lit8 v8, p4, 0x2

    ushr-int/lit8 v9, v13, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v4, v9

    ushr-int/lit8 v10, v2, 0x8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    add-int/lit8 v8, p4, 0x3

    and-int/lit16 v9, v11, 0xff

    aget-byte v9, v4, v9

    xor-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, p3, v8

    const/4 v2, 0x1

    aget v2, v5, v2

    add-int/lit8 v8, p4, 0x4

    ushr-int/lit8 v9, v11, 0x18

    aget-byte v9, v4, v9

    ushr-int/lit8 v10, v2, 0x18

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    add-int/lit8 v8, p4, 0x5

    ushr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v4, v9

    ushr-int/lit8 v10, v2, 0x10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    add-int/lit8 v8, p4, 0x6

    ushr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v4, v9

    ushr-int/lit8 v10, v2, 0x8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    add-int/lit8 v8, p4, 0x7

    and-int/lit16 v9, v13, 0xff

    aget-byte v9, v4, v9

    xor-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, p3, v8

    const/4 v2, 0x2

    aget v2, v5, v2

    add-int/lit8 v8, p4, 0x8

    ushr-int/lit8 v9, v13, 0x18

    aget-byte v9, v4, v9

    ushr-int/lit8 v10, v2, 0x18

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    add-int/lit8 v8, p4, 0x9

    ushr-int/lit8 v9, v11, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v4, v9

    ushr-int/lit8 v10, v2, 0x10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    add-int/lit8 v8, p4, 0xa

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v4, v9

    ushr-int/lit8 v10, v2, 0x8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    add-int/lit8 v8, p4, 0xb

    and-int/lit16 v9, v1, 0xff

    aget-byte v9, v4, v9

    xor-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, p3, v8

    const/4 v2, 0x3

    aget v2, v5, v2

    add-int/lit8 v5, p4, 0xc

    ushr-int/2addr v1, v7

    aget-byte v1, v4, v1

    ushr-int/lit8 v7, v2, 0x18

    xor-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, p3, v5

    add-int/lit8 v1, p4, 0xd

    ushr-int/lit8 v5, v13, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v4, v5

    ushr-int/lit8 v6, v2, 0x10

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v1

    add-int/lit8 v1, p4, 0xe

    const/16 v5, 0x8

    ushr-int/lit8 v5, v11, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v4, v5

    ushr-int/lit8 v6, v2, 0x8

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v1

    const/16 v1, 0xf

    add-int/lit8 v1, p4, 0xf

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v4, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    return-void
.end method
