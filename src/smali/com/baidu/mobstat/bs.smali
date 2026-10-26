.class public Lcom/baidu/mobstat/bs;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/baidu/mobstat/bs;->b:Z

    iput-boolean p3, p0, Lcom/baidu/mobstat/bs;->c:Z

    return-void
.end method

.method private static a(I)I
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v3, 0x2

    if-eq p0, v3, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_0
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 16

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    new-array v5, v2, [S

    const/4 v3, 0x0

    const/4 v2, 0x5

    :goto_1
    const/4 v6, 0x5

    if-ge v3, v6, :cond_1

    mul-int/lit8 v6, v1, 0x5

    add-int/2addr v6, v3

    move-object/from16 v0, p1

    array-length v7, v0

    if-ge v6, v7, :cond_0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    aput-short v6, v5, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lcom/baidu/mobstat/bs;->a(I)I

    move-result v6

    const/4 v2, 0x0

    aget-short v2, v5, v2

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x1f

    int-to-byte v7, v3

    const/4 v3, 0x1

    aget-short v3, v5, v3

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v2, v8

    int-to-byte v8, v2

    shr-int/lit8 v2, v3, 0x1

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v9, v2

    const/4 v2, 0x2

    aget-short v2, v5, v2

    and-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v10, v2, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v3, v10

    int-to-byte v10, v3

    const/4 v3, 0x3

    aget-short v3, v5, v3

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x1

    shr-int/lit8 v11, v3, 0x7

    and-int/lit8 v11, v11, 0x1

    or-int/2addr v2, v11

    int-to-byte v11, v2

    shr-int/lit8 v2, v3, 0x2

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v12, v2

    const/4 v2, 0x4

    aget-short v2, v5, v2

    shr-int/lit8 v5, v2, 0x5

    and-int/lit8 v5, v5, 0x7

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v5

    int-to-byte v5, v3

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v13, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    rsub-int/lit8 v2, v6, 0x8

    if-ge v3, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    const/16 v14, 0x8

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v7, v14, v15

    const/4 v15, 0x1

    aput v8, v14, v15

    const/4 v15, 0x2

    aput v9, v14, v15

    const/4 v15, 0x3

    aput v10, v14, v15

    const/4 v15, 0x4

    aput v11, v14, v15

    const/4 v15, 0x5

    aput v12, v14, v15

    const/4 v15, 0x6

    aput v5, v14, v15

    const/4 v15, 0x7

    aput v13, v14, v15

    aget v14, v14, v3

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/baidu/mobstat/bs;->c:Z

    if-eqz v14, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    :cond_2
    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/mobstat/bs;->b:Z

    if-eqz v3, :cond_4

    :goto_4
    const/16 v3, 0x8

    if-ge v2, v3, :cond_4

    const/16 v3, 0x3d

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
