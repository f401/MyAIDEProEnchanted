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
    .locals 16

    const/4 v3, 0x1

    const/4 v15, 0x4

    const/16 v14, 0x8

    const/16 v13, 0x100

    const/4 v4, 0x0

    new-array v0, v13, [I

    sput-object v0, Lcom/baidu/mobstat/as;->g:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->h:[I

    new-array v1, v13, [B

    sput-object v1, Lcom/baidu/mobstat/as;->i:[B

    new-array v1, v13, [B

    sput-object v1, Lcom/baidu/mobstat/as;->j:[B

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->k:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->l:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->m:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->n:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->o:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->p:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->q:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->r:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->s:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->t:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->u:[I

    new-array v1, v13, [I

    sput-object v1, Lcom/baidu/mobstat/as;->v:[I

    const/16 v1, 0x1e

    new-array v1, v1, [B

    sput-object v1, Lcom/baidu/mobstat/as;->w:[B

    aput v3, v0, v4

    move v1, v3

    :goto_0
    if-ge v1, v13, :cond_1

    sget-object v2, Lcom/baidu/mobstat/as;->g:[I

    add-int/lit8 v0, v1, -0x1

    aget v0, v2, v0

    shl-int/lit8 v5, v0, 0x1

    xor-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_0

    xor-int/lit16 v0, v0, 0x11b

    :cond_0
    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    const/16 v1, 0xff

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/baidu/mobstat/as;->h:[I

    sget-object v2, Lcom/baidu/mobstat/as;->g:[I

    aget v2, v2, v0

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    filled-new-array {v13, v14}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    aget-object v1, v0, v3

    const/4 v2, 0x7

    aput-byte v3, v1, v2

    const/4 v1, 0x2

    move v2, v1

    :goto_2
    if-ge v2, v13, :cond_4

    sget-object v1, Lcom/baidu/mobstat/as;->g:[I

    sget-object v5, Lcom/baidu/mobstat/as;->h:[I

    aget v5, v5, v2

    rsub-int v5, v5, 0xff

    aget v5, v1, v5

    move v1, v4

    :goto_3
    if-ge v1, v14, :cond_3

    aget-object v6, v0, v2

    rsub-int/lit8 v7, v1, 0x7

    ushr-int v7, v5, v7

    and-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    filled-new-array {v13, v14}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move v6, v4

    :goto_4
    if-ge v6, v13, :cond_7

    move v5, v4

    :goto_5
    if-ge v5, v14, :cond_6

    aget-object v2, v1, v6

    new-array v7, v14, [B

    fill-array-data v7, :array_0

    aget-byte v7, v7, v5

    aput-byte v7, v2, v5

    move v2, v4

    :goto_6
    if-ge v2, v14, :cond_5

    aget-object v7, v1, v6

    aget-byte v8, v7, v5

    new-array v9, v14, [[B

    new-array v10, v14, [B

    fill-array-data v10, :array_1

    aput-object v10, v9, v4

    new-array v10, v14, [B

    fill-array-data v10, :array_2

    aput-object v10, v9, v3

    const/4 v10, 0x2

    new-array v11, v14, [B

    fill-array-data v11, :array_3

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-array v11, v14, [B

    fill-array-data v11, :array_4

    aput-object v11, v9, v10

    new-array v10, v14, [B

    fill-array-data v10, :array_5

    aput-object v10, v9, v15

    const/4 v10, 0x5

    new-array v11, v14, [B

    fill-array-data v11, :array_6

    aput-object v11, v9, v10

    const/4 v10, 0x6

    new-array v11, v14, [B

    fill-array-data v11, :array_7

    aput-object v11, v9, v10

    const/4 v10, 0x7

    new-array v11, v14, [B

    fill-array-data v11, :array_8

    aput-object v11, v9, v10

    aget-object v9, v9, v5

    aget-byte v9, v9, v2

    aget-object v10, v0, v6

    aget-byte v10, v10, v2

    mul-int/2addr v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_7
    if-ge v2, v13, :cond_9

    sget-object v0, Lcom/baidu/mobstat/as;->i:[B

    aget-object v5, v1, v2

    aget-byte v5, v5, v4

    shl-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    move v0, v3

    :goto_8
    if-ge v0, v14, :cond_8

    sget-object v5, Lcom/baidu/mobstat/as;->i:[B

    aget-byte v6, v5, v2

    aget-object v7, v1, v2

    aget-byte v7, v7, v0

    rsub-int/lit8 v8, v0, 0x7

    shl-int/2addr v7, v8

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    sget-object v0, Lcom/baidu/mobstat/as;->j:[B

    sget-object v5, Lcom/baidu/mobstat/as;->i:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v6, v2

    aput-byte v6, v0, v5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_9
    new-array v7, v15, [[B

    new-array v0, v15, [B

    fill-array-data v0, :array_9

    aput-object v0, v7, v4

    new-array v0, v15, [B

    fill-array-data v0, :array_a

    aput-object v0, v7, v3

    const/4 v0, 0x2

    new-array v1, v15, [B

    fill-array-data v1, :array_b

    aput-object v1, v7, v0

    const/4 v0, 0x3

    new-array v1, v15, [B

    fill-array-data v1, :array_c

    aput-object v1, v7, v0

    filled-new-array {v15, v14}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v2, v4

    :goto_9
    if-ge v2, v15, :cond_b

    move v1, v4

    :goto_a
    if-ge v1, v15, :cond_a

    aget-object v5, v0, v2

    aget-object v6, v7, v2

    aget-byte v6, v6, v1

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    aget-object v1, v0, v2

    add-int/lit8 v5, v2, 0x4

    aput-byte v3, v1, v5

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    :cond_b
    filled-new-array {v15, v15}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move v6, v4

    :goto_b
    if-ge v6, v15, :cond_15

    aget-object v2, v0, v6

    aget-byte v2, v2, v6

    if-nez v2, :cond_e

    add-int/lit8 v2, v6, 0x1

    :goto_c
    aget-object v5, v0, v2

    aget-byte v5, v5, v6

    if-nez v5, :cond_c

    if-ge v2, v15, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_c
    if-eq v2, v15, :cond_10

    move v5, v4

    :goto_d
    if-ge v5, v14, :cond_d

    aget-object v8, v0, v6

    aget-byte v9, v8, v5

    aget-object v10, v0, v2

    aget-byte v11, v10, v5

    aput-byte v11, v8, v5

    aput-byte v9, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_d
    aget-object v2, v0, v6

    aget-byte v2, v2, v6

    :cond_e
    move v5, v4

    :goto_e
    if-ge v5, v14, :cond_11

    aget-object v8, v0, v6

    aget-byte v9, v8, v5

    if-eqz v9, :cond_f

    sget-object v10, Lcom/baidu/mobstat/as;->g:[I

    sget-object v11, Lcom/baidu/mobstat/as;->h:[I

    and-int/lit16 v9, v9, 0xff

    aget v9, v11, v9

    add-int/lit16 v9, v9, 0xff

    and-int/lit16 v12, v2, 0xff

    aget v11, v11, v12

    sub-int/2addr v9, v11

    rem-int/lit16 v9, v9, 0xff

    aget v9, v10, v9

    int-to-byte v9, v9

    aput-byte v9, v8, v5

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "G matrix is not invertible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move v5, v4

    :goto_f
    if-ge v5, v15, :cond_14

    if-eq v6, v5, :cond_13

    add-int/lit8 v2, v6, 0x1

    :goto_10
    if-ge v2, v14, :cond_12

    aget-object v8, v0, v5

    aget-byte v9, v8, v2

    aget-object v10, v0, v6

    aget-byte v10, v10, v2

    aget-byte v11, v8, v6

    invoke-static {v10, v11}, Lcom/baidu/mobstat/as;->a(II)I

    move-result v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_12
    aget-object v2, v0, v5

    aput-byte v4, v2, v6

    :cond_13
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_f

    :cond_14
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_b

    :cond_15
    move v5, v4

    :goto_11
    if-ge v5, v15, :cond_17

    move v2, v4

    :goto_12
    if-ge v2, v15, :cond_16

    aget-object v6, v1, v5

    aget-object v8, v0, v5

    add-int/lit8 v9, v2, 0x4

    aget-byte v8, v8, v9

    aput-byte v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_16
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_11

    :cond_17
    move v0, v4

    :goto_13
    if-ge v0, v13, :cond_18

    sget-object v2, Lcom/baidu/mobstat/as;->i:[B

    aget-byte v2, v2, v0

    sget-object v5, Lcom/baidu/mobstat/as;->k:[I

    aget-object v6, v7, v4

    invoke-static {v2, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/baidu/mobstat/as;->l:[I

    aget-object v6, v7, v3

    invoke-static {v2, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/baidu/mobstat/as;->m:[I

    const/4 v6, 0x2

    aget-object v6, v7, v6

    invoke-static {v2, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/baidu/mobstat/as;->n:[I

    const/4 v6, 0x3

    aget-object v6, v7, v6

    invoke-static {v2, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v2

    aput v2, v5, v0

    sget-object v2, Lcom/baidu/mobstat/as;->j:[B

    aget-byte v2, v2, v0

    sget-object v5, Lcom/baidu/mobstat/as;->o:[I

    aget-object v6, v1, v4

    invoke-static {v2, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/baidu/mobstat/as;->p:[I

    aget-object v6, v1, v3

    invoke-static {v2, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/baidu/mobstat/as;->q:[I

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v2, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/baidu/mobstat/as;->r:[I

    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-static {v2, v6}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v2

    aput v2, v5, v0

    sget-object v2, Lcom/baidu/mobstat/as;->s:[I

    aget-object v5, v1, v4

    invoke-static {v0, v5}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v5

    aput v5, v2, v0

    sget-object v2, Lcom/baidu/mobstat/as;->t:[I

    aget-object v5, v1, v3

    invoke-static {v0, v5}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v5

    aput v5, v2, v0

    sget-object v2, Lcom/baidu/mobstat/as;->u:[I

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v0, v5}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v5

    aput v5, v2, v0

    sget-object v2, Lcom/baidu/mobstat/as;->v:[I

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v0, v5}, Lcom/baidu/mobstat/as;->a(I[B)I

    move-result v5

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_18
    sget-object v0, Lcom/baidu/mobstat/as;->w:[B

    aput-byte v3, v0, v4

    move v0, v3

    move v1, v3

    :goto_14
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_19

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/baidu/mobstat/as;->a(II)I

    move-result v0

    sget-object v2, Lcom/baidu/mobstat/as;->w:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    move v1, v3

    goto :goto_14

    :cond_19
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mobstat/as;->h:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mobstat/as;->g:[I

    return-void

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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

    :array_9
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    :array_a
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/mobstat/as;->b:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/as;->c:Z

    iput-object v1, p0, Lcom/baidu/mobstat/as;->d:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/baidu/mobstat/as;->e:[I

    iput v0, p0, Lcom/baidu/mobstat/as;->f:I

    return-void
.end method

.method private static final a(II)I
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/as;->g:[I

    sget-object v1, Lcom/baidu/mobstat/as;->h:[I

    and-int/lit16 v2, p0, 0xff

    aget v2, v1, v2

    and-int/lit16 v3, p1, 0xff

    aget v1, v1, v3

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final a(I[B)I
    .locals 7

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v4, Lcom/baidu/mobstat/as;->h:[I

    and-int/lit16 v0, p0, 0xff

    aget v5, v4, v0

    aget-byte v0, p1, v1

    if-eqz v0, :cond_2

    sget-object v2, Lcom/baidu/mobstat/as;->g:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v4, v0

    add-int/2addr v0, v5

    rem-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    :goto_1
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/baidu/mobstat/as;->g:[I

    and-int/lit16 v2, v2, 0xff

    aget v2, v4, v2

    add-int/2addr v2, v5

    rem-int/lit16 v2, v2, 0xff

    aget v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    :goto_2
    const/4 v3, 0x2

    aget-byte v3, p1, v3

    if-eqz v3, :cond_4

    sget-object v6, Lcom/baidu/mobstat/as;->g:[I

    and-int/lit16 v3, v3, 0xff

    aget v3, v4, v3

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    :goto_3
    const/4 v6, 0x3

    aget-byte v6, p1, v6

    if-eqz v6, :cond_1

    sget-object v1, Lcom/baidu/mobstat/as;->g:[I

    and-int/lit16 v6, v6, 0xff

    aget v4, v4, v6

    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    :cond_1
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_3
.end method

.method private a(Z)V
    .locals 11

    const/4 v10, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mobstat/as;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, [[I

    array-length v5, v0

    mul-int/lit8 v3, v5, 0x4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/baidu/mobstat/as;->e:[I

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_1

    move v3, v2

    :goto_1
    const/4 v6, 0x4

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/baidu/mobstat/as;->e:[I

    mul-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v3

    aget-object v8, v0, v4

    aget v8, v8, v3

    aput v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/as;->e:[I

    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    aget v3, v0, v3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x3

    aget v4, v0, v4

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    aget v6, v0, v6

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget v7, v0, v7

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-le v0, v10, :cond_2

    iget-object v8, p0, Lcom/baidu/mobstat/as;->e:[I

    add-int/lit8 v9, v0, -0x4

    aget v9, v8, v9

    aput v9, v8, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/as;->e:[I

    aput v3, v0, v2

    aput v4, v0, v1

    const/4 v3, 0x2

    aput v6, v0, v3

    aput v7, v0, v10

    :cond_3
    const/16 v0, 0xd

    if-lt v5, v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/baidu/mobstat/as;->b:Z

    const/16 v0, 0xf

    if-ne v5, v0, :cond_5

    :goto_4
    iput-boolean v1, p0, Lcom/baidu/mobstat/as;->c:Z

    add-int/lit8 v0, v5, -0x1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/mobstat/as;->f:I

    return-void

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method static final a(I)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/baidu/mobstat/as;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/baidu/mobstat/as;->a:[I

    aget v2, v2, v0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([B)[Ljava/lang/Object;
    .locals 15

    if-eqz p0, :cond_a

    array-length v0, p0

    invoke-static {v0}, Lcom/baidu/mobstat/as;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    array-length v0, p0

    invoke-static {v0}, Lcom/baidu/mobstat/as;->b(I)I

    move-result v8

    add-int/lit8 v1, v8, 0x1

    mul-int/lit8 v9, v1, 0x4

    const/4 v0, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    array-length v2, p0

    div-int/lit8 v10, v2, 0x4

    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v10, :cond_0

    aget-byte v4, p0, v3

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v11, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v10, :cond_1

    if-ge v4, v9, :cond_1

    div-int/lit8 v3, v4, 0x4

    aget-object v5, v0, v3

    rem-int/lit8 v6, v4, 0x4

    aget v7, v11, v2

    aput v7, v5, v6

    sub-int v3, v8, v3

    aget-object v3, v1, v3

    aget v5, v11, v2

    aput v5, v3, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v7, v2

    :goto_2
    if-ge v4, v9, :cond_6

    add-int/lit8 v2, v10, -0x1

    aget v2, v11, v2

    const/4 v3, 0x0

    aget v3, v11, v3

    sget-object v5, Lcom/baidu/mobstat/as;->i:[B

    ushr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v5, v6

    const/4 v12, 0x0

    ushr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v6, v13

    and-int/lit16 v13, v2, 0xff

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v6, v13

    ushr-int/lit8 v2, v2, 0x18

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v2, v6

    sget-object v5, Lcom/baidu/mobstat/as;->w:[B

    aget-byte v5, v5, v7

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v2, v5

    xor-int/2addr v2, v3

    aput v2, v11, v12

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v12, 0x8

    if-eq v10, v12, :cond_2

    move v2, v5

    move v3, v6

    :goto_3
    if-ge v2, v10, :cond_4

    aget v5, v11, v2

    aget v6, v11, v3

    xor-int/2addr v5, v6

    aput v5, v11, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    div-int/lit8 v5, v10, 0x2

    if-ge v3, v5, :cond_3

    aget v5, v11, v3

    aget v6, v11, v2

    xor-int/2addr v5, v6

    aput v5, v11, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v5, -0x1

    aget v2, v11, v2

    aget v3, v11, v5

    sget-object v6, Lcom/baidu/mobstat/as;->i:[B

    and-int/lit16 v12, v2, 0xff

    aget-byte v12, v6, v12

    ushr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v6, v13

    ushr-int/lit8 v14, v2, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v14, v6, v14

    ushr-int/lit8 v2, v2, 0x18

    aget-byte v2, v6, v2

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v6, v14, 0xff

    shl-int/lit8 v6, v6, 0x10

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    and-int/lit16 v12, v12, 0xff

    xor-int/2addr v12, v13

    xor-int/2addr v6, v12

    xor-int/2addr v2, v6

    xor-int/2addr v2, v3

    aput v2, v11, v5

    add-int/lit8 v2, v5, 0x1

    move v3, v5

    :goto_5
    if-ge v2, v10, :cond_4

    aget v5, v11, v2

    aget v6, v11, v3

    xor-int/2addr v5, v6

    aput v5, v11, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    move v3, v4

    :goto_6
    if-ge v2, v10, :cond_5

    if-ge v3, v9, :cond_5

    div-int/lit8 v4, v3, 0x4

    aget-object v5, v0, v4

    rem-int/lit8 v6, v3, 0x4

    aget v12, v11, v2

    aput v12, v5, v6

    sub-int v4, v8, v4

    aget-object v4, v1, v4

    aget v5, v11, v2

    aput v5, v4, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v7, 0x1

    move v4, v3

    move v7, v2

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x1

    move v3, v2

    :goto_7
    if-ge v3, v8, :cond_8

    const/4 v2, 0x0

    :goto_8
    const/4 v4, 0x4

    if-ge v2, v4, :cond_7

    aget-object v4, v1, v3

    aget v5, v4, v2

    sget-object v6, Lcom/baidu/mobstat/as;->s:[I

    ushr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/baidu/mobstat/as;->t:[I

    ushr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    sget-object v9, Lcom/baidu/mobstat/as;->u:[I

    ushr-int/lit8 v10, v5, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    sget-object v10, Lcom/baidu/mobstat/as;->v:[I

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    xor-int/2addr v6, v7

    xor-int/2addr v6, v9

    xor-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AES key length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Empty key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x6

    return v0
.end method


# virtual methods
.method a()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method a(ZLjava/lang/String;[B)V
    .locals 2

    array-length v0, p3

    invoke-static {v0}, Lcom/baidu/mobstat/as;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/baidu/mobstat/as;->a([B)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/as;->d:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/as;->a(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AES key length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a([BI[BI)V
    .locals 26

    aget-byte v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/as;->e:[I

    shl-int/lit8 v1, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, v4, 0xff

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget v2, v5, v2

    xor-int/2addr v2, v1

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    const/4 v3, 0x1

    aget v3, v5, v3

    xor-int/2addr v3, v1

    add-int/lit8 v1, p2, 0x8

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    add-int/lit8 v4, p2, 0xb

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    const/4 v4, 0x2

    aget v4, v5, v4

    xor-int/2addr v4, v1

    add-int/lit8 v1, p2, 0xc

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v6, p2, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, p2, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v1, v6

    add-int/lit8 v6, p2, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    const/4 v6, 0x3

    aget v5, v5, v6

    xor-int/2addr v1, v5

    const/4 v5, 0x4

    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/mobstat/as;->f:I

    if-ge v5, v6, :cond_0

    sget-object v6, Lcom/baidu/mobstat/as;->k:[I

    ushr-int/lit8 v7, v2, 0x18

    aget v7, v6, v7

    sget-object v8, Lcom/baidu/mobstat/as;->l:[I

    ushr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v8, v9

    sget-object v10, Lcom/baidu/mobstat/as;->m:[I

    ushr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    sget-object v12, Lcom/baidu/mobstat/as;->n:[I

    and-int/lit16 v13, v1, 0xff

    aget v13, v12, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mobstat/as;->e:[I

    aget v15, v14, v5

    ushr-int/lit8 v16, v3, 0x18

    aget v16, v6, v16

    ushr-int/lit8 v17, v4, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v17, v8, v17

    ushr-int/lit8 v18, v1, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v18, v10, v18

    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    aget v19, v12, v19

    add-int/lit8 v20, v5, 0x1

    aget v20, v14, v20

    ushr-int/lit8 v21, v4, 0x18

    aget v21, v6, v21

    ushr-int/lit8 v22, v1, 0x10

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v22, v8, v22

    ushr-int/lit8 v23, v2, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget v23, v10, v23

    and-int/lit16 v0, v3, 0xff

    move/from16 v24, v0

    aget v24, v12, v24

    add-int/lit8 v25, v5, 0x2

    aget v25, v14, v25

    ushr-int/lit8 v1, v1, 0x18

    aget v1, v6, v1

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v8, v2

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    and-int/lit16 v4, v4, 0xff

    aget v4, v12, v4

    add-int/lit8 v6, v5, 0x3

    aget v6, v14, v6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    xor-int/2addr v1, v4

    xor-int/2addr v1, v6

    xor-int v2, v22, v21

    xor-int v2, v2, v23

    xor-int v2, v2, v24

    xor-int v4, v2, v25

    xor-int v2, v7, v9

    xor-int/2addr v2, v11

    xor-int/2addr v2, v13

    xor-int/2addr v2, v15

    xor-int v3, v16, v17

    xor-int v3, v3, v18

    xor-int v3, v3, v19

    xor-int v3, v3, v20

    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/as;->e:[I

    aget v7, v6, v5

    sget-object v8, Lcom/baidu/mobstat/as;->i:[B

    ushr-int/lit8 v9, v2, 0x18

    aget-byte v9, v8, v9

    ushr-int/lit8 v10, v7, 0x18

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, p4

    add-int/lit8 v9, p4, 0x1

    ushr-int/lit8 v10, v3, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x10

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x2

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x3

    and-int/lit16 v10, v1, 0xff

    aget-byte v10, v8, v10

    xor-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, p3, v9

    add-int/lit8 v7, v5, 0x1

    aget v7, v6, v7

    add-int/lit8 v9, p4, 0x4

    ushr-int/lit8 v10, v3, 0x18

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x18

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x5

    ushr-int/lit8 v10, v4, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x10

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x6

    ushr-int/lit8 v10, v1, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x7

    and-int/lit16 v10, v2, 0xff

    aget-byte v10, v8, v10

    xor-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, p3, v9

    add-int/lit8 v7, v5, 0x2

    aget v7, v6, v7

    add-int/lit8 v9, p4, 0x8

    ushr-int/lit8 v10, v4, 0x18

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x18

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0x9

    ushr-int/lit8 v10, v1, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x10

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0xa

    ushr-int/lit8 v10, v2, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    ushr-int/lit8 v11, v7, 0x8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    add-int/lit8 v9, p4, 0xb

    and-int/lit16 v10, v3, 0xff

    aget-byte v10, v8, v10

    xor-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, p3, v9

    add-int/lit8 v5, v5, 0x3

    aget v5, v6, v5

    add-int/lit8 v6, p4, 0xc

    ushr-int/lit8 v1, v1, 0x18

    aget-byte v1, v8, v1

    ushr-int/lit8 v7, v5, 0x18

    xor-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, p3, v6

    add-int/lit8 v1, p4, 0xd

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v8, v2

    ushr-int/lit8 v6, v5, 0x10

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0xe

    ushr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v8, v2

    ushr-int/lit8 v3, v5, 0x8

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0xf

    and-int/lit16 v2, v4, 0xff

    aget-byte v2, v8, v2

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    return-void
.end method

.method b([BI[BI)V
    .locals 15

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    iget-object v5, p0, Lcom/baidu/mobstat/as;->e:[I

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, v5, v1

    xor-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const/4 v2, 0x5

    aget v2, v5, v2

    xor-int/2addr v2, v0

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    const/4 v3, 0x6

    aget v3, v5, v3

    xor-int/2addr v3, v0

    add-int/lit8 v0, p2, 0xc

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v4, p2, 0xd

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, p2, 0xe

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, p2, 0xf

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    const/4 v4, 0x7

    aget v4, v5, v4

    xor-int/2addr v0, v4

    iget-boolean v4, p0, Lcom/baidu/mobstat/as;->b:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/baidu/mobstat/as;->o:[I

    ushr-int/lit8 v6, v1, 0x18

    aget v6, v4, v6

    sget-object v7, Lcom/baidu/mobstat/as;->p:[I

    ushr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    sget-object v9, Lcom/baidu/mobstat/as;->q:[I

    ushr-int/lit8 v10, v3, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v9, v10

    sget-object v11, Lcom/baidu/mobstat/as;->r:[I

    xor-int/2addr v6, v8

    xor-int/2addr v6, v10

    and-int/lit16 v8, v2, 0xff

    aget v8, v11, v8

    xor-int/2addr v6, v8

    const/16 v8, 0x8

    aget v8, v5, v8

    xor-int/2addr v6, v8

    ushr-int/lit8 v8, v2, 0x18

    aget v8, v4, v8

    ushr-int/lit8 v10, v1, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v7, v10

    xor-int/2addr v8, v10

    ushr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v9, v10

    xor-int/2addr v8, v10

    and-int/lit16 v10, v3, 0xff

    aget v10, v11, v10

    xor-int/2addr v8, v10

    const/16 v10, 0x9

    aget v10, v5, v10

    xor-int/2addr v8, v10

    ushr-int/lit8 v10, v3, 0x18

    aget v10, v4, v10

    ushr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v7, v12

    xor-int/2addr v10, v12

    ushr-int/lit8 v12, v1, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v9, v12

    xor-int/2addr v10, v12

    and-int/lit16 v12, v0, 0xff

    aget v12, v11, v12

    xor-int/2addr v10, v12

    const/16 v12, 0xa

    aget v12, v5, v12

    xor-int/2addr v10, v12

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v4, v0

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v7, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v9, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v11, v1

    xor-int/2addr v0, v3

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    const/16 v1, 0xb

    aget v1, v5, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v6, 0x18

    aget v1, v4, v1

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v7, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v10, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v9, v2

    xor-int/2addr v1, v2

    and-int/lit16 v2, v8, 0xff

    aget v2, v11, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xc

    aget v2, v5, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v8, 0x18

    aget v2, v4, v2

    ushr-int/lit8 v3, v6, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v7, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v9, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v10, 0xff

    aget v3, v11, v3

    xor-int/2addr v2, v3

    const/16 v3, 0xd

    aget v3, v5, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v10, 0x18

    aget v3, v4, v3

    ushr-int/lit8 v12, v8, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v7, v12

    xor-int/2addr v3, v12

    ushr-int/lit8 v12, v6, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v9, v12

    xor-int/2addr v3, v12

    and-int/lit16 v12, v0, 0xff

    aget v12, v11, v12

    xor-int/2addr v3, v12

    const/16 v12, 0xe

    aget v12, v5, v12

    xor-int/2addr v3, v12

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v4, v0

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v7, v10

    xor-int/2addr v0, v10

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v9, v8

    xor-int/2addr v0, v8

    and-int/lit16 v6, v6, 0xff

    aget v6, v11, v6

    xor-int/2addr v0, v6

    const/16 v6, 0xf

    aget v6, v5, v6

    xor-int/2addr v0, v6

    iget-boolean v6, p0, Lcom/baidu/mobstat/as;->c:Z

    if-eqz v6, :cond_0

    ushr-int/lit8 v6, v1, 0x18

    aget v6, v4, v6

    ushr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    xor-int/2addr v6, v8

    ushr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v9, v8

    xor-int/2addr v6, v8

    and-int/lit16 v8, v2, 0xff

    aget v8, v11, v8

    xor-int/2addr v6, v8

    const/16 v8, 0x10

    aget v8, v5, v8

    xor-int/2addr v6, v8

    ushr-int/lit8 v8, v2, 0x18

    aget v8, v4, v8

    ushr-int/lit8 v10, v1, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v7, v10

    xor-int/2addr v8, v10

    ushr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v9, v10

    xor-int/2addr v8, v10

    and-int/lit16 v10, v3, 0xff

    aget v10, v11, v10

    xor-int/2addr v8, v10

    const/16 v10, 0x11

    aget v10, v5, v10

    xor-int/2addr v8, v10

    ushr-int/lit8 v10, v3, 0x18

    aget v10, v4, v10

    ushr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v7, v12

    xor-int/2addr v10, v12

    ushr-int/lit8 v12, v1, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v9, v12

    xor-int/2addr v10, v12

    and-int/lit16 v12, v0, 0xff

    aget v12, v11, v12

    xor-int/2addr v10, v12

    const/16 v12, 0x12

    aget v12, v5, v12

    xor-int/2addr v10, v12

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v4, v0

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v7, v3

    xor-int/2addr v0, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v9, v2

    xor-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v11, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x13

    aget v1, v5, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v6, 0x18

    aget v1, v4, v1

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v7, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v10, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v9, v2

    xor-int/2addr v1, v2

    and-int/lit16 v2, v8, 0xff

    aget v2, v11, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x14

    aget v2, v5, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v8, 0x18

    aget v2, v4, v2

    ushr-int/lit8 v3, v6, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v7, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v9, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v10, 0xff

    aget v3, v11, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x15

    aget v3, v5, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v10, 0x18

    aget v3, v4, v3

    ushr-int/lit8 v12, v8, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v7, v12

    xor-int/2addr v3, v12

    ushr-int/lit8 v12, v6, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v9, v12

    xor-int/2addr v3, v12

    and-int/lit16 v12, v0, 0xff

    aget v12, v11, v12

    xor-int/2addr v3, v12

    const/16 v12, 0x16

    aget v12, v5, v12

    xor-int/2addr v3, v12

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v4, v0

    ushr-int/lit8 v4, v10, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    xor-int/2addr v0, v4

    ushr-int/lit8 v4, v8, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v9, v4

    xor-int/2addr v0, v4

    and-int/lit16 v4, v6, 0xff

    aget v4, v11, v4

    xor-int/2addr v0, v4

    const/16 v4, 0x17

    aget v4, v5, v4

    xor-int/2addr v0, v4

    const/16 v4, 0x18

    :goto_0
    sget-object v6, Lcom/baidu/mobstat/as;->o:[I

    ushr-int/lit8 v7, v1, 0x18

    aget v7, v6, v7

    sget-object v8, Lcom/baidu/mobstat/as;->p:[I

    ushr-int/lit8 v9, v0, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v8, v9

    sget-object v10, Lcom/baidu/mobstat/as;->q:[I

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    sget-object v12, Lcom/baidu/mobstat/as;->r:[I

    xor-int/2addr v7, v9

    xor-int/2addr v7, v11

    and-int/lit16 v9, v2, 0xff

    aget v9, v12, v9

    xor-int/2addr v7, v9

    aget v9, v5, v4

    xor-int/2addr v7, v9

    ushr-int/lit8 v9, v2, 0x18

    aget v9, v6, v9

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    xor-int/2addr v9, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v12, v11

    xor-int/2addr v9, v11

    add-int/lit8 v11, v4, 0x1

    aget v11, v5, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v3, 0x18

    aget v11, v6, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v4, 0x2

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v10, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v12, v1

    xor-int/2addr v0, v3

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, v4, 0x3

    aget v1, v5, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v7, 0x18

    aget v1, v6, v1

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v8, v2

    ushr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    and-int/lit16 v13, v9, 0xff

    aget v13, v12, v13

    add-int/lit8 v14, v4, 0x4

    aget v14, v5, v14

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    xor-int/2addr v1, v13

    xor-int/2addr v1, v14

    ushr-int/lit8 v2, v9, 0x18

    aget v2, v6, v2

    ushr-int/lit8 v3, v7, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    aget v3, v12, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x5

    aget v3, v5, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v11, 0x18

    aget v3, v6, v3

    ushr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v3, v13

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v3, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v3, v13

    add-int/lit8 v13, v4, 0x6

    aget v13, v5, v13

    xor-int/2addr v3, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v0, v11

    ushr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v10, v9

    xor-int/2addr v0, v9

    and-int/lit16 v7, v7, 0xff

    aget v7, v12, v7

    xor-int/2addr v0, v7

    add-int/lit8 v7, v4, 0x7

    aget v7, v5, v7

    xor-int/2addr v0, v7

    ushr-int/lit8 v7, v1, 0x18

    aget v7, v6, v7

    ushr-int/lit8 v9, v0, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v8, v9

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    and-int/lit16 v13, v2, 0xff

    aget v13, v12, v13

    add-int/lit8 v14, v4, 0x8

    aget v14, v5, v14

    xor-int/2addr v7, v9

    xor-int/2addr v7, v11

    xor-int/2addr v7, v13

    xor-int/2addr v7, v14

    ushr-int/lit8 v9, v2, 0x18

    aget v9, v6, v9

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    xor-int/2addr v9, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v12, v11

    xor-int/2addr v9, v11

    add-int/lit8 v11, v4, 0x9

    aget v11, v5, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v3, 0x18

    aget v11, v6, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v4, 0xa

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    xor-int/2addr v0, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v10, v2

    xor-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v12, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, v4, 0xb

    aget v1, v5, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v7, 0x18

    aget v1, v6, v1

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v8, v2

    ushr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    and-int/lit16 v13, v9, 0xff

    aget v13, v12, v13

    add-int/lit8 v14, v4, 0xc

    aget v14, v5, v14

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    xor-int/2addr v1, v13

    xor-int/2addr v1, v14

    ushr-int/lit8 v2, v9, 0x18

    aget v2, v6, v2

    ushr-int/lit8 v3, v7, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    aget v3, v12, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v4, 0xd

    aget v3, v5, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v11, 0x18

    aget v3, v6, v3

    ushr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v3, v13

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v3, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v3, v13

    add-int/lit8 v13, v4, 0xe

    aget v13, v5, v13

    xor-int/2addr v3, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v0, v11

    ushr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v10, v9

    xor-int/2addr v0, v9

    and-int/lit16 v7, v7, 0xff

    aget v7, v12, v7

    xor-int/2addr v0, v7

    add-int/lit8 v7, v4, 0xf

    aget v7, v5, v7

    xor-int/2addr v0, v7

    ushr-int/lit8 v7, v1, 0x18

    aget v7, v6, v7

    ushr-int/lit8 v9, v0, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v8, v9

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    and-int/lit16 v13, v2, 0xff

    aget v13, v12, v13

    add-int/lit8 v14, v4, 0x10

    aget v14, v5, v14

    xor-int/2addr v7, v9

    xor-int/2addr v7, v11

    xor-int/2addr v7, v13

    xor-int/2addr v7, v14

    ushr-int/lit8 v9, v2, 0x18

    aget v9, v6, v9

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    xor-int/2addr v9, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v12, v11

    xor-int/2addr v9, v11

    add-int/lit8 v11, v4, 0x11

    aget v11, v5, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v3, 0x18

    aget v11, v6, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v4, 0x12

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    xor-int/2addr v0, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v10, v2

    xor-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v12, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, v4, 0x13

    aget v1, v5, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v7, 0x18

    aget v1, v6, v1

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v8, v2

    ushr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    and-int/lit16 v13, v9, 0xff

    aget v13, v12, v13

    add-int/lit8 v14, v4, 0x14

    aget v14, v5, v14

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    xor-int/2addr v1, v13

    xor-int/2addr v1, v14

    ushr-int/lit8 v2, v9, 0x18

    aget v2, v6, v2

    ushr-int/lit8 v3, v7, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    aget v3, v12, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x15

    aget v3, v5, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v11, 0x18

    aget v3, v6, v3

    ushr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v3, v13

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v3, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v3, v13

    add-int/lit8 v13, v4, 0x16

    aget v13, v5, v13

    xor-int/2addr v3, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v0, v11

    ushr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v10, v9

    xor-int/2addr v0, v9

    and-int/lit16 v7, v7, 0xff

    aget v7, v12, v7

    xor-int/2addr v0, v7

    add-int/lit8 v7, v4, 0x17

    aget v7, v5, v7

    xor-int/2addr v0, v7

    ushr-int/lit8 v7, v1, 0x18

    aget v7, v6, v7

    ushr-int/lit8 v9, v0, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v8, v9

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    and-int/lit16 v13, v2, 0xff

    aget v13, v12, v13

    add-int/lit8 v14, v4, 0x18

    aget v14, v5, v14

    xor-int/2addr v7, v9

    xor-int/2addr v7, v11

    xor-int/2addr v7, v13

    xor-int/2addr v7, v14

    ushr-int/lit8 v9, v2, 0x18

    aget v9, v6, v9

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    xor-int/2addr v9, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v12, v11

    xor-int/2addr v9, v11

    add-int/lit8 v11, v4, 0x19

    aget v11, v5, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v3, 0x18

    aget v11, v6, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v4, 0x1a

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    xor-int/2addr v0, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v10, v2

    xor-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v12, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, v4, 0x1b

    aget v1, v5, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v7, 0x18

    aget v1, v6, v1

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v8, v2

    ushr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    and-int/lit16 v13, v9, 0xff

    aget v13, v12, v13

    add-int/lit8 v14, v4, 0x1c

    aget v14, v5, v14

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    xor-int/2addr v1, v13

    xor-int/2addr v1, v14

    ushr-int/lit8 v2, v9, 0x18

    aget v2, v6, v2

    ushr-int/lit8 v3, v7, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    aget v3, v12, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1d

    aget v3, v5, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v11, 0x18

    aget v3, v6, v3

    ushr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v3, v13

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v3, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v3, v13

    add-int/lit8 v13, v4, 0x1e

    aget v13, v5, v13

    xor-int/2addr v3, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v0, v11

    ushr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v10, v9

    xor-int/2addr v0, v9

    and-int/lit16 v7, v7, 0xff

    aget v7, v12, v7

    xor-int/2addr v0, v7

    add-int/lit8 v7, v4, 0x1f

    aget v7, v5, v7

    xor-int/2addr v0, v7

    ushr-int/lit8 v7, v1, 0x18

    aget v7, v6, v7

    ushr-int/lit8 v9, v0, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v8, v9

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    and-int/lit16 v13, v2, 0xff

    aget v13, v12, v13

    add-int/lit8 v14, v4, 0x20

    aget v14, v5, v14

    xor-int/2addr v7, v9

    xor-int/2addr v7, v11

    xor-int/2addr v7, v13

    xor-int/2addr v7, v14

    ushr-int/lit8 v9, v2, 0x18

    aget v9, v6, v9

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    xor-int/2addr v9, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v12, v11

    xor-int/2addr v9, v11

    add-int/lit8 v11, v4, 0x21

    aget v11, v5, v11

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v3, 0x18

    aget v11, v6, v11

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v10, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v12, v13

    xor-int/2addr v11, v13

    add-int/lit8 v13, v4, 0x22

    aget v13, v5, v13

    xor-int/2addr v11, v13

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v6, v0

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    xor-int/2addr v0, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v10, v2

    xor-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v12, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, v4, 0x23

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, v5, v1

    sget-object v2, Lcom/baidu/mobstat/as;->j:[B

    ushr-int/lit8 v3, v7, 0x18

    aget-byte v3, v2, v3

    ushr-int/lit8 v4, v1, 0x18

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, p4

    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v2, v4

    ushr-int/lit8 v6, v1, 0x10

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p4, 0x2

    ushr-int/lit8 v4, v11, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v2, v4

    ushr-int/lit8 v6, v1, 0x8

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p4, 0x3

    and-int/lit16 v4, v9, 0xff

    aget-byte v4, v2, v4

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    const/4 v1, 0x1

    aget v1, v5, v1

    add-int/lit8 v3, p4, 0x4

    ushr-int/lit8 v4, v9, 0x18

    aget-byte v4, v2, v4

    ushr-int/lit8 v6, v1, 0x18

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p4, 0x5

    ushr-int/lit8 v4, v7, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v2, v4

    ushr-int/lit8 v6, v1, 0x10

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p4, 0x6

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v2, v4

    ushr-int/lit8 v6, v1, 0x8

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p4, 0x7

    and-int/lit16 v4, v11, 0xff

    aget-byte v4, v2, v4

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    const/4 v1, 0x2

    aget v1, v5, v1

    add-int/lit8 v3, p4, 0x8

    ushr-int/lit8 v4, v11, 0x18

    aget-byte v4, v2, v4

    ushr-int/lit8 v6, v1, 0x18

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p4, 0x9

    ushr-int/lit8 v4, v9, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v2, v4

    ushr-int/lit8 v6, v1, 0x10

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p4, 0xa

    ushr-int/lit8 v4, v7, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v2, v4

    ushr-int/lit8 v6, v1, 0x8

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p4, 0xb

    and-int/lit16 v4, v0, 0xff

    aget-byte v4, v2, v4

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    const/4 v1, 0x3

    aget v1, v5, v1

    add-int/lit8 v3, p4, 0xc

    ushr-int/lit8 v0, v0, 0x18

    aget-byte v0, v2, v0

    ushr-int/lit8 v4, v1, 0x18

    xor-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    add-int/lit8 v0, p4, 0xd

    ushr-int/lit8 v3, v11, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    ushr-int/lit8 v4, v1, 0x10

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0xe

    ushr-int/lit8 v3, v9, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    ushr-int/lit8 v4, v1, 0x8

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0xf

    and-int/lit16 v3, v7, 0xff

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    return-void

    :cond_0
    const/16 v4, 0x10

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_0
.end method
