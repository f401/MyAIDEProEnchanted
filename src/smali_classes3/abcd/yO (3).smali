.class public abstract Labcd/yO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/tO;


# static fields
.field static final j6:[J


# instance fields
.field private DW:[B

.field protected EQ:J

.field private FH:I

.field private Hw:J

.field protected J0:J

.field private J8:[J

.field protected VH:J

.field private Ws:I

.field protected Zo:J

.field protected gn:J

.field protected tp:J

.field protected u7:J

.field private v5:J

.field protected we:J


# direct methods
.method private static $d2j$hex$2ed93388$decode_B(Ljava/lang/String;)[B
    .registers 13
    .param p0, "src"  # Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 44
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_6b

    .line 45
    mul-int/lit8 v3, v2, 0x2

    aget-char v3, v0, v3

    .line 46
    .local v3, "h":C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v0, v4

    .line 48
    .local v4, "l":C
    const/16 v5, 0x46

    const/16 v6, 0x66

    const/16 v7, 0x39

    const/16 v8, 0x41

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v3, v10, :cond_2d

    if-gt v3, v7, :cond_2d

    .line 49
    add-int/lit8 v11, v3, -0x30

    .local v11, "hh":I
    goto :goto_3e

    .line 50
    .end local v11  # "hh":I
    :cond_2d
    if-lt v3, v9, :cond_36

    if-gt v3, v6, :cond_36

    .line 51
    add-int/lit8 v11, v3, -0x61

    add-int/lit8 v11, v11, 0xa

    .restart local v11  # "hh":I
    goto :goto_3e

    .line 52
    .end local v11  # "hh":I
    :cond_36
    if-lt v3, v8, :cond_65

    if-gt v3, v5, :cond_65

    .line 53
    add-int/lit8 v11, v3, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 58
    .restart local v11  # "hh":I
    :goto_3e
    if-lt v4, v10, :cond_45

    if-gt v4, v7, :cond_45

    .line 59
    add-int/lit8 v5, v4, -0x30

    .local v5, "ll":I
    goto :goto_56

    .line 60
    .end local v5  # "ll":I
    :cond_45
    if-lt v4, v9, :cond_4e

    if-gt v4, v6, :cond_4e

    .line 61
    add-int/lit8 v5, v4, -0x61

    add-int/lit8 v5, v5, 0xa

    .restart local v5  # "ll":I
    goto :goto_56

    .line 62
    .end local v5  # "ll":I
    :cond_4e
    if-lt v4, v8, :cond_5f

    if-gt v4, v5, :cond_5f

    .line 63
    add-int/lit8 v5, v4, -0x41

    add-int/lit8 v5, v5, 0xa

    .line 67
    .restart local v5  # "ll":I
    :goto_56
    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 44
    .end local v3  # "h":C
    .end local v4  # "l":C
    .end local v5  # "ll":I
    .end local v11  # "hh":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 65
    .restart local v3  # "h":C
    .restart local v4  # "l":C
    .restart local v11  # "hh":I
    :cond_5f
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 55
    .end local v11  # "hh":I
    :cond_65
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 69
    .end local v2  # "i":I
    .end local v3  # "h":C
    .end local v4  # "l":C
    :cond_6b
    return-object v1
.end method

.method private static $d2j$hex$2ed93388$decode_I(Ljava/lang/String;)[I
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Labcd/yO;->$d2j$hex$2ed93388$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 26
    .local v2, "s":Ljava/nio/IntBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [I

    .line 27
    .local v3, "data":[I
    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v3
.end method

.method private static $d2j$hex$2ed93388$decode_J(Ljava/lang/String;)[J
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Labcd/yO;->$d2j$hex$2ed93388$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 14
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 16
    .local v2, "s":Ljava/nio/LongBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [J

    .line 17
    .local v3, "data":[J
    invoke-virtual {v2, v3}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v3
.end method

.method private static $d2j$hex$2ed93388$decode_S(Ljava/lang/String;)[S
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Labcd/yO;->$d2j$hex$2ed93388$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 36
    .local v2, "s":Ljava/nio/ShortBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    .line 37
    .local v3, "data":[S
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v3
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "22ae28d7982f8a42cd65ef23914437712f3b4deccffbc0b5bcdb8981a5dbb5e938b548f35bc2563919d005b6f111f1599b4f19afa4823f9218816ddad55e1cab420203a398aa07d8be6f7045015b83128cb2e44ebe853124e2b4ffd5c37d0c556f897bf2745dbe72b196163bfeb1de803512c725a706dc9b942669cf74f19bc1d24af19ec1699be4e3254f388647beefb5d58c8bc69dc10f659cac77cca10c2475022b596f2ce92d83e4a66eaa84744ad4fb41bddca9b05cb5531183da88f976abdf66ee52513e981032b42d6dc631a83f21fb98c82703b0e40eefbec77f59bfc28fa83df30be0c625a70a934791a7d56f8203e05163ca06706e0e0a67292914fc2fd246850ab72726c9265c38211b2eed2ac45afc6d2c4ddfb3959d130d3853de63af8b54730a65a8b2773cbb0a6a76e6aeed472ec9c2813b358214852c72926403f14ca1e8bfa2013042bc4b661aa89197f8d0708b4bc230be5406a3516cc71852efd619e892d110a96555240699d62a20715785350ef4b8d1bb3270a06a10c8d0d2b816c1a41953ab4151086c371e99eb8edf4c774827a8489be1b5bcb034635ac9c5b30c1c39cb8a41e34aaad84e73e363774fca9c5ba3b8b2d6f36f2e68fcb2ef5dee828f74602f17436f63a57872abf0a11478c884ec39641a0802c78c281e6323faffbe90e9bd82deeb6c50a41579c6b2f7a3f9be2b5372e3f27871c69c6126eace3e27ca07c2c021c7b886d11eebe0cdd67ddaea78d16eee7f4f7df5ba6f1772aa67f006a698c8a2c57d630aae0df9be04983f111b471c13350b711b847d0423f577db289324c7407babca32bcbec9150abe9e3c4c0d109cc4671d43b6423ecbbed4c54c2a7e65fc9c297f59ecfad63aab6fcb5f1758474a8c19446c"

    invoke-static {v0}, Labcd/yO;->$d2j$hex$2ed93388$decode_J(Ljava/lang/String;)[J

    move-result-object v0

    sput-object v0, Labcd/yO;->j6:[J

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/yO;->J8:[J

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/yO;->DW:[B

    const/4 v0, 0x0

    iput v0, p0, Labcd/yO;->FH:I

    invoke-virtual {p0}, Labcd/yO;->reset()V

    return-void
.end method

.method private DW(J)J
    .registers 10

    const/4 v0, 0x6

    ushr-long v0, p1, v0

    const/16 v2, 0x2d

    shl-long v2, p1, v2

    const/16 v4, 0x13

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    const/4 v4, 0x3

    shl-long v4, p1, v4

    const/16 v6, 0x3d

    ushr-long/2addr p1, v6

    or-long/2addr p1, v4

    xor-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private DW(JJJ)J
    .registers 9

    and-long v0, p1, p5

    and-long/2addr p1, p3

    xor-long/2addr p1, v0

    and-long/2addr p3, p5

    xor-long/2addr p1, p3

    return-wide p1
.end method

.method private FH(J)J
    .registers 10

    const/16 v0, 0x27

    ushr-long v0, p1, v0

    const/16 v2, 0x19

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x24

    shl-long v2, p1, v2

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    const/16 v4, 0x1e

    shl-long v4, p1, v4

    const/16 v6, 0x22

    ushr-long/2addr p1, v6

    or-long/2addr p1, v4

    xor-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private Hw(J)J
    .registers 10

    const/16 v0, 0x29

    ushr-long v0, p1, v0

    const/16 v2, 0x17

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x32

    shl-long v2, p1, v2

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    const/16 v4, 0x2e

    shl-long v4, p1, v4

    const/16 v6, 0x12

    ushr-long/2addr p1, v6

    or-long/2addr p1, v4

    xor-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private j6(J)J
    .registers 10

    const/4 v0, 0x7

    ushr-long v0, p1, v0

    const/16 v2, 0x3f

    shl-long v2, p1, v2

    const/4 v4, 0x1

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long v4, p1, v4

    const/16 v6, 0x8

    ushr-long/2addr p1, v6

    or-long/2addr p1, v4

    xor-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private j6(JJJ)J
    .registers 9

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p1

    and-long/2addr p5, v0

    and-long/2addr p1, p3

    xor-long/2addr p1, p5

    return-wide p1
.end method

.method private v5()V
    .registers 9

    iget-wide v0, p0, Labcd/yO;->Hw:J

    const-wide v2, 0x1fffffffffffffffL

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    iget-wide v4, p0, Labcd/yO;->v5:J

    const/16 v6, 0x3d

    ushr-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Labcd/yO;->v5:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Labcd/yO;->Hw:J

    :cond_17
    return-void
.end method


# virtual methods
.method protected DW([BI)V
    .registers 5

    iget-object v0, p0, Labcd/yO;->J8:[J

    iget v1, p0, Labcd/yO;->Ws:I

    invoke-static {p1, p2}, Labcd/ZO;->DW([BI)J

    move-result-wide p1

    aput-wide p1, v0, v1

    iget p1, p0, Labcd/yO;->Ws:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/yO;->Ws:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    invoke-virtual {p0}, Labcd/yO;->Hw()V

    :cond_17
    return-void
.end method

.method public FH()V
    .registers 6

    invoke-direct {p0}, Labcd/yO;->v5()V

    iget-wide v0, p0, Labcd/yO;->Hw:J

    iget-wide v2, p0, Labcd/yO;->v5:J

    const/16 v4, -0x80

    :goto_9
    invoke-virtual {p0, v4}, Labcd/yO;->j6(B)V

    iget v4, p0, Labcd/yO;->FH:I

    if-nez v4, :cond_19

    const/4 v4, 0x3

    shl-long/2addr v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Labcd/yO;->j6(JJ)V

    invoke-virtual {p0}, Labcd/yO;->Hw()V

    return-void

    :cond_19
    const/4 v4, 0x0

    goto :goto_9
.end method

.method protected Hw()V
    .registers 35

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Labcd/yO;->v5()V

    const/16 v0, 0x10

    :goto_7
    const/16 v1, 0x4f

    if-le v0, v1, :cond_23b

    iget-wide v0, v7, Labcd/yO;->Zo:J

    iget-wide v2, v7, Labcd/yO;->VH:J

    iget-wide v4, v7, Labcd/yO;->gn:J

    iget-wide v9, v7, Labcd/yO;->u7:J

    iget-wide v11, v7, Labcd/yO;->tp:J

    iget-wide v13, v7, Labcd/yO;->EQ:J

    move-wide/from16 v16, v9

    iget-wide v8, v7, Labcd/yO;->we:J

    move-wide/from16 v18, v0

    iget-wide v0, v7, Labcd/yO;->J0:J

    const/4 v10, 0x0

    move-wide/from16 v22, v13

    move-wide/from16 v20, v16

    const/16 v24, 0x0

    move-wide v13, v2

    move-wide/from16 v16, v4

    move-wide v5, v11

    move-wide/from16 v11, v18

    const/4 v3, 0x0

    move-wide/from16 v18, v8

    move-wide v8, v0

    :goto_30
    const/16 v0, 0xa

    if-lt v3, v0, :cond_70

    iget-wide v0, v7, Labcd/yO;->Zo:J

    add-long/2addr v0, v11

    iput-wide v0, v7, Labcd/yO;->Zo:J

    iget-wide v0, v7, Labcd/yO;->VH:J

    add-long/2addr v0, v13

    iput-wide v0, v7, Labcd/yO;->VH:J

    iget-wide v0, v7, Labcd/yO;->gn:J

    add-long v0, v0, v16

    iput-wide v0, v7, Labcd/yO;->gn:J

    iget-wide v0, v7, Labcd/yO;->u7:J

    add-long v0, v0, v20

    iput-wide v0, v7, Labcd/yO;->u7:J

    iget-wide v0, v7, Labcd/yO;->tp:J

    add-long/2addr v0, v5

    iput-wide v0, v7, Labcd/yO;->tp:J

    iget-wide v0, v7, Labcd/yO;->EQ:J

    add-long v0, v0, v22

    iput-wide v0, v7, Labcd/yO;->EQ:J

    iget-wide v0, v7, Labcd/yO;->we:J

    add-long v0, v0, v18

    iput-wide v0, v7, Labcd/yO;->we:J

    iget-wide v0, v7, Labcd/yO;->J0:J

    add-long/2addr v0, v8

    iput-wide v0, v7, Labcd/yO;->J0:J

    iput v10, v7, Labcd/yO;->Ws:I

    const/16 v15, 0x10

    :goto_64
    if-lt v10, v15, :cond_67

    return-void

    :cond_67
    iget-object v0, v7, Labcd/yO;->J8:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_64

    :cond_70
    const/16 v15, 0x10

    invoke-direct {v7, v5, v6}, Labcd/yO;->Hw(J)J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide v1, v5

    move/from16 v27, v3

    move-wide/from16 v3, v22

    move-wide/from16 v28, v5

    move-wide/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Labcd/yO;->j6(JJJ)J

    move-result-wide v0

    sget-object v30, Labcd/yO;->j6:[J

    aget-wide v2, v30, v24

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v31, v24, 0x1

    add-long v25, v25, v0

    add-long v25, v25, v2

    aget-wide v0, v4, v24

    add-long v25, v25, v0

    add-long v8, v8, v25

    add-long v5, v20, v8

    invoke-direct {v7, v11, v12}, Labcd/yO;->FH(J)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    move-wide/from16 v24, v11

    move-wide v10, v5

    move-wide/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Labcd/yO;->DW(JJJ)J

    move-result-wide v0

    add-long v20, v20, v0

    add-long v8, v8, v20

    invoke-direct {v7, v10, v11}, Labcd/yO;->Hw(J)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide/from16 v3, v28

    move-wide/from16 v5, v22

    invoke-direct/range {v0 .. v6}, Labcd/yO;->j6(JJJ)J

    move-result-wide v0

    aget-wide v2, v30, v31

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v26, v31, 0x1

    add-long v20, v20, v0

    add-long v20, v20, v2

    aget-wide v0, v4, v31

    add-long v20, v20, v0

    add-long v18, v18, v20

    add-long v5, v16, v18

    invoke-direct {v7, v8, v9}, Labcd/yO;->FH(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide/from16 v3, v24

    move-wide/from16 v20, v8

    move-wide v8, v5

    move-wide v5, v13

    invoke-direct/range {v0 .. v6}, Labcd/yO;->DW(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    add-long v5, v18, v16

    invoke-direct {v7, v8, v9}, Labcd/yO;->Hw(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v10

    move-wide/from16 v32, v5

    move-wide/from16 v5, v28

    invoke-direct/range {v0 .. v6}, Labcd/yO;->j6(JJJ)J

    move-result-wide v0

    aget-wide v2, v30, v26

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v18, v26, 0x1

    add-long v16, v16, v0

    add-long v16, v16, v2

    aget-wide v0, v4, v26

    add-long v16, v16, v0

    add-long v22, v22, v16

    add-long v13, v13, v22

    move-wide/from16 v5, v32

    invoke-direct {v7, v5, v6}, Labcd/yO;->FH(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide/from16 v3, v20

    move-wide/from16 v31, v5

    move-wide/from16 v5, v24

    invoke-direct/range {v0 .. v6}, Labcd/yO;->DW(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    add-long v5, v22, v16

    invoke-direct {v7, v13, v14}, Labcd/yO;->Hw(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v8

    move-wide/from16 v22, v13

    move-wide v12, v5

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Labcd/yO;->j6(JJJ)J

    move-result-wide v0

    aget-wide v2, v30, v18

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v14, v18, 0x1

    add-long v16, v16, v0

    add-long v16, v16, v2

    aget-wide v0, v4, v18

    add-long v16, v16, v0

    add-long v16, v28, v16

    add-long v5, v24, v16

    invoke-direct {v7, v12, v13}, Labcd/yO;->FH(J)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide/from16 v3, v31

    move-wide/from16 v28, v12

    move-wide v12, v5

    move-wide/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Labcd/yO;->DW(JJJ)J

    move-result-wide v0

    add-long v24, v24, v0

    add-long v5, v16, v24

    invoke-direct {v7, v12, v13}, Labcd/yO;->Hw(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide/from16 v3, v22

    move-wide/from16 v24, v12

    move-wide v12, v5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Labcd/yO;->j6(JJJ)J

    move-result-wide v0

    aget-wide v2, v30, v14

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v18, v14, 0x1

    add-long v16, v16, v0

    add-long v16, v16, v2

    aget-wide v0, v4, v14

    add-long v16, v16, v0

    add-long v10, v10, v16

    add-long v5, v20, v10

    invoke-direct {v7, v12, v13}, Labcd/yO;->FH(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide/from16 v3, v28

    move-wide v14, v5

    move-wide/from16 v5, v31

    invoke-direct/range {v0 .. v6}, Labcd/yO;->DW(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    add-long v10, v10, v16

    invoke-direct {v7, v14, v15}, Labcd/yO;->Hw(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v3, v24

    move-wide/from16 v5, v22

    invoke-direct/range {v0 .. v6}, Labcd/yO;->j6(JJJ)J

    move-result-wide v0

    aget-wide v2, v30, v18

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v21, v18, 0x1

    add-long v16, v16, v0

    add-long v16, v16, v2

    aget-wide v0, v4, v18

    add-long v16, v16, v0

    add-long v8, v8, v16

    add-long v5, v31, v8

    invoke-direct {v7, v10, v11}, Labcd/yO;->FH(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move-wide/from16 v31, v12

    move-wide v12, v5

    move-wide/from16 v5, v28

    invoke-direct/range {v0 .. v6}, Labcd/yO;->DW(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    add-long v8, v8, v16

    invoke-direct {v7, v12, v13}, Labcd/yO;->Hw(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v14

    move-wide/from16 v5, v24

    invoke-direct/range {v0 .. v6}, Labcd/yO;->j6(JJJ)J

    move-result-wide v0

    aget-wide v2, v30, v21

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v18, v21, 0x1

    add-long v16, v16, v0

    add-long v16, v16, v2

    aget-wide v0, v4, v21

    add-long v16, v16, v0

    add-long v16, v22, v16

    add-long v5, v28, v16

    invoke-direct {v7, v8, v9}, Labcd/yO;->FH(J)J

    move-result-wide v21

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v10

    move-wide/from16 v28, v10

    move-wide v10, v5

    move-wide/from16 v5, v31

    invoke-direct/range {v0 .. v6}, Labcd/yO;->DW(JJJ)J

    move-result-wide v0

    add-long v21, v21, v0

    add-long v5, v16, v21

    invoke-direct {v7, v10, v11}, Labcd/yO;->Hw(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move-wide/from16 v21, v10

    move-wide v10, v5

    move-wide v5, v14

    invoke-direct/range {v0 .. v6}, Labcd/yO;->j6(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    aget-wide v0, v30, v18

    add-long v16, v16, v0

    iget-object v0, v7, Labcd/yO;->J8:[J

    aget-wide v1, v0, v18

    add-long v16, v16, v1

    add-long v16, v24, v16

    invoke-direct {v7, v10, v11}, Labcd/yO;->FH(J)J

    move-result-wide v23

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v8

    move-wide/from16 v5, v28

    invoke-direct/range {v0 .. v6}, Labcd/yO;->DW(JJJ)J

    move-result-wide v0

    add-long v23, v23, v0

    add-long v0, v16, v23

    add-int/lit8 v3, v27, 0x1

    add-int/lit8 v24, v18, 0x1

    add-long v5, v31, v16

    move-wide/from16 v16, v8

    move-wide/from16 v18, v12

    move-wide v8, v14

    move-wide/from16 v22, v21

    move-wide/from16 v20, v28

    move-wide v13, v10

    const/4 v10, 0x0

    move-wide v11, v0

    goto/16 :goto_30

    :cond_23b
    iget-object v1, v7, Labcd/yO;->J8:[J

    add-int/lit8 v2, v0, -0x2

    aget-wide v2, v1, v2

    invoke-direct {v7, v2, v3}, Labcd/yO;->DW(J)J

    move-result-wide v2

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v5, v0, -0x7

    aget-wide v5, v4, v5

    add-long/2addr v2, v5

    add-int/lit8 v5, v0, -0xf

    aget-wide v5, v4, v5

    invoke-direct {v7, v5, v6}, Labcd/yO;->j6(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, v7, Labcd/yO;->J8:[J

    add-int/lit8 v5, v0, -0x10

    aget-wide v5, v4, v5

    add-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7
.end method

.method public j6(B)V
    .registers 6

    iget-object v0, p0, Labcd/yO;->DW:[B

    iget v1, p0, Labcd/yO;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/yO;->FH:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_13

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Labcd/yO;->DW([BI)V

    iput p1, p0, Labcd/yO;->FH:I

    :cond_13
    iget-wide v0, p0, Labcd/yO;->Hw:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/yO;->Hw:J

    return-void
.end method

.method protected j6(JJ)V
    .registers 7

    iget v0, p0, Labcd/yO;->Ws:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Labcd/yO;->Hw()V

    :cond_9
    iget-object v0, p0, Labcd/yO;->J8:[J

    aput-wide p3, v0, v1

    const/16 p3, 0xf

    aput-wide p1, v0, p3

    return-void
.end method

.method public reset()V
    .registers 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/yO;->Hw:J

    iput-wide v0, p0, Labcd/yO;->v5:J

    const/4 v2, 0x0

    iput v2, p0, Labcd/yO;->FH:I

    const/4 v3, 0x0

    :goto_a
    iget-object v4, p0, Labcd/yO;->DW:[B

    array-length v5, v4

    if-lt v3, v5, :cond_1c

    iput v2, p0, Labcd/yO;->Ws:I

    :goto_11
    iget-object v3, p0, Labcd/yO;->J8:[J

    array-length v4, v3

    if-ne v2, v4, :cond_17

    return-void

    :cond_17
    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1c
    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method public update([BII)V
    .registers 9

    :goto_0
    iget v0, p0, Labcd/yO;->FH:I

    if-eqz v0, :cond_11

    if-gtz p3, :cond_7

    goto :goto_11

    :cond_7
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/yO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_11
    :goto_11
    iget-object v0, p0, Labcd/yO;->DW:[B

    array-length v0, v0

    if-gt p3, v0, :cond_23

    :goto_16
    if-gtz p3, :cond_19

    return-void

    :cond_19
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/yO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_16

    :cond_23
    invoke-virtual {p0, p1, p2}, Labcd/yO;->DW([BI)V

    iget-object v0, p0, Labcd/yO;->DW:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Labcd/yO;->Hw:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Labcd/yO;->Hw:J

    goto :goto_11
.end method
