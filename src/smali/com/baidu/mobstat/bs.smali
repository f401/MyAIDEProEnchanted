.class public Lcom/baidu/mobstat/bs;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/baidu/mobstat/bs;->b:Z

    iput-boolean p3, p0, Lcom/baidu/mobstat/bs;->c:Z

    return-void
.end method

.method private static a(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p0, v1, :cond_15

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    if-eq p0, v2, :cond_13

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 p0, -0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    return v0

    :cond_14
    return v1

    :cond_15
    return v2

    :cond_16
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    array-length v5, v1

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/4 v7, 0x5

    div-int/2addr v5, v7

    if-ge v4, v5, :cond_cc

    new-array v5, v7, [S

    const/4 v8, 0x0

    const/4 v9, 0x5

    :goto_16
    if-ge v8, v7, :cond_2d

    mul-int/lit8 v10, v4, 0x5

    add-int/2addr v10, v8

    array-length v11, v1

    if-ge v10, v11, :cond_26

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v5, v8

    goto :goto_2a

    :cond_26
    aput-short v3, v5, v8

    add-int/lit8 v9, v9, -0x1

    :goto_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_2d
    invoke-static {v9}, Lcom/baidu/mobstat/bs;->a(I)I

    move-result v8

    aget-short v9, v5, v3

    shr-int/lit8 v10, v9, 0x3

    and-int/lit8 v10, v10, 0x1f

    int-to-byte v10, v10

    const/4 v11, 0x1

    aget-short v12, v5, v11

    const/4 v13, 0x7

    and-int/2addr v9, v13

    const/4 v14, 0x2

    shl-int/2addr v9, v14

    shr-int/lit8 v15, v12, 0x6

    const/16 v16, 0x3

    and-int/lit8 v15, v15, 0x3

    or-int/2addr v9, v15

    int-to-byte v9, v9

    shr-int/lit8 v15, v12, 0x1

    and-int/lit8 v15, v15, 0x1f

    int-to-byte v15, v15

    aget-short v17, v5, v14

    and-int/2addr v12, v11

    shl-int/2addr v12, v6

    shr-int/lit8 v18, v17, 0x4

    and-int/lit8 v18, v18, 0xf

    or-int v12, v12, v18

    int-to-byte v12, v12

    aget-short v18, v5, v16

    and-int/lit8 v17, v17, 0xf

    shl-int/lit8 v17, v17, 0x1

    shr-int/lit8 v19, v18, 0x7

    and-int/lit8 v19, v19, 0x1

    or-int v7, v17, v19

    int-to-byte v7, v7

    shr-int/lit8 v17, v18, 0x2

    and-int/lit8 v14, v17, 0x1f

    int-to-byte v14, v14

    aget-short v5, v5, v6

    shr-int/lit8 v17, v5, 0x5

    and-int/lit8 v17, v17, 0x7

    and-int/lit8 v18, v18, 0x3

    shl-int/lit8 v18, v18, 0x3

    or-int v13, v17, v18

    int-to-byte v13, v13

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    const/4 v6, 0x0

    :goto_7a
    const/16 v11, 0x8

    rsub-int/lit8 v3, v8, 0x8

    if-ge v6, v3, :cond_b7

    iget-object v3, v0, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    new-array v11, v11, [I

    const/16 v22, 0x0

    aput v10, v11, v22

    const/16 v18, 0x1

    aput v9, v11, v18

    const/16 v19, 0x2

    aput v15, v11, v19

    aput v12, v11, v16

    const/16 v17, 0x4

    aput v7, v11, v17

    const/16 v20, 0x5

    aput v14, v11, v20

    const/16 v23, 0x6

    aput v13, v11, v23

    const/16 v21, 0x7

    aput v5, v11, v21

    aget v11, v11, v6

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-boolean v11, v0, Lcom/baidu/mobstat/bs;->c:Z

    if-eqz v11, :cond_b0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    :cond_b0
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto :goto_7a

    :cond_b7
    const/16 v22, 0x0

    iget-boolean v5, v0, Lcom/baidu/mobstat/bs;->b:Z

    if-eqz v5, :cond_c7

    :goto_bd
    if-ge v3, v11, :cond_c7

    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    :cond_c7
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_cc
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
