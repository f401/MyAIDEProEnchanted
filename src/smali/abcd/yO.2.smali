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
.method private static $d2j$hex$04a90262$decode_B(Ljava/lang/String;)[B
    .registers 14
    .param p0, "src"    # Ljava/lang/String;

    const/16 v12, 0x61

    const/16 v11, 0x46

    const/16 v10, 0x41

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 44
    .local v6, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_6

    .line 45
    mul-int/lit8 v7, v3, 0x2

    aget-char v1, v0, v7

    .line 46
    .local v1, "h":C
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-char v4, v0, v7

    .line 48
    .local v4, "l":C
    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 49
    add-int/lit8 v2, v1, -0x30

    .line 58
    .local v2, "hh":I
    :goto_1
    if-lt v4, v8, :cond_3

    if-gt v4, v9, :cond_3

    .line 59
    add-int/lit8 v5, v4, -0x30

    .line 67
    .local v5, "ll":I
    :goto_2
    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "hh":I
    .end local v5    # "ll":I
    :cond_0
    if-lt v1, v12, :cond_1

    const/16 v7, 0x66

    if-gt v1, v7, :cond_1

    .line 51
    add-int/lit8 v7, v1, -0x61

    add-int/lit8 v2, v7, 0xa

    .restart local v2    # "hh":I
    goto :goto_1

    .line 52
    .end local v2    # "hh":I
    :cond_1
    if-lt v1, v10, :cond_2

    if-gt v1, v11, :cond_2

    .line 53
    add-int/lit8 v7, v1, -0x41

    add-int/lit8 v2, v7, 0xa

    .restart local v2    # "hh":I
    goto :goto_1

    .line 55
    .end local v2    # "hh":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 60
    .restart local v2    # "hh":I
    :cond_3
    if-lt v4, v12, :cond_4

    const/16 v7, 0x66

    if-gt v4, v7, :cond_4

    .line 61
    add-int/lit8 v7, v4, -0x61

    add-int/lit8 v5, v7, 0xa

    .restart local v5    # "ll":I
    goto :goto_2

    .line 62
    .end local v5    # "ll":I
    :cond_4
    if-lt v4, v10, :cond_5

    if-gt v4, v11, :cond_5

    .line 63
    add-int/lit8 v7, v4, -0x41

    add-int/lit8 v5, v7, 0xa

    .restart local v5    # "ll":I
    goto :goto_2

    .line 65
    .end local v5    # "ll":I
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 69
    .end local v1    # "h":C
    .end local v2    # "hh":I
    .end local v4    # "l":C
    :cond_6
    return-object v6
.end method

.method private static $d2j$hex$04a90262$decode_I(Ljava/lang/String;)[I
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Labcd/yO;->$d2j$hex$04a90262$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 23
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 26
    .local v3, "s":Ljava/nio/IntBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x4

    new-array v2, v4, [I

    .line 27
    .local v2, "data":[I
    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v2
.end method

.method private static $d2j$hex$04a90262$decode_J(Ljava/lang/String;)[J
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Labcd/yO;->$d2j$hex$04a90262$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 13
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 16
    .local v3, "s":Ljava/nio/LongBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x8

    new-array v2, v4, [J

    .line 17
    .local v2, "data":[J
    invoke-virtual {v3, v2}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v2
.end method

.method private static $d2j$hex$04a90262$decode_S(Ljava/lang/String;)[S
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Labcd/yO;->$d2j$hex$04a90262$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 33
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 36
    .local v3, "s":Ljava/nio/ShortBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [S

    .line 37
    .local v2, "data":[S
    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v2
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "22ae28d7982f8a42cd65ef23914437712f3b4deccffbc0b5bcdb8981a5dbb5e938b548f35bc2563919d005b6f111f1599b4f19afa4823f9218816ddad55e1cab420203a398aa07d8be6f7045015b83128cb2e44ebe853124e2b4ffd5c37d0c556f897bf2745dbe72b196163bfeb1de803512c725a706dc9b942669cf74f19bc1d24af19ec1699be4e3254f388647beefb5d58c8bc69dc10f659cac77cca10c2475022b596f2ce92d83e4a66eaa84744ad4fb41bddca9b05cb5531183da88f976abdf66ee52513e981032b42d6dc631a83f21fb98c82703b0e40eefbec77f59bfc28fa83df30be0c625a70a934791a7d56f8203e05163ca06706e0e0a67292914fc2fd246850ab72726c9265c38211b2eed2ac45afc6d2c4ddfb3959d130d3853de63af8b54730a65a8b2773cbb0a6a76e6aeed472ec9c2813b358214852c72926403f14ca1e8bfa2013042bc4b661aa89197f8d0708b4bc230be5406a3516cc71852efd619e892d110a96555240699d62a20715785350ef4b8d1bb3270a06a10c8d0d2b816c1a41953ab4151086c371e99eb8edf4c774827a8489be1b5bcb034635ac9c5b30c1c39cb8a41e34aaad84e73e363774fca9c5ba3b8b2d6f36f2e68fcb2ef5dee828f74602f17436f63a57872abf0a11478c884ec39641a0802c78c281e6323faffbe90e9bd82deeb6c50a41579c6b2f7a3f9be2b5372e3f27871c69c6126eace3e27ca07c2c021c7b886d11eebe0cdd67ddaea78d16eee7f4f7df5ba6f1772aa67f006a698c8a2c57d630aae0df9be04983f111b471c13350b711b847d0423f577db289324c7407babca32bcbec9150abe9e3c4c0d109cc4671d43b6423ecbbed4c54c2a7e65fc9c297f59ecfad63aab6fcb5f1758474a8c19446c"

    invoke-static {v0}, Labcd/yO;->$d2j$hex$04a90262$decode_J(Ljava/lang/String;)[J

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
    .registers 12

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

    ushr-long v6, p1, v6

    or-long/2addr v4, v6

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private DW(JJJ)J
    .registers 12

    and-long v0, p1, p5

    and-long v2, p1, p3

    xor-long/2addr v0, v2

    and-long v2, p3, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private FH(J)J
    .registers 12

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

    ushr-long v6, p1, v6

    or-long/2addr v4, v6

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Hw(J)J
    .registers 12

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

    ushr-long v6, p1, v6

    or-long/2addr v4, v6

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private j6(J)J
    .registers 12

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

    ushr-long v6, p1, v6

    or-long/2addr v4, v6

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private j6(JJJ)J
    .registers 12

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p1

    and-long/2addr v0, p5

    and-long v2, p3, p1

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private v5()V
    .registers 9

    const-wide v6, 0x1fffffffffffffffL

    iget-wide v0, p0, Labcd/yO;->Hw:J

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    iget-wide v2, p0, Labcd/yO;->v5:J

    const/16 v4, 0x3d

    ushr-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/yO;->v5:J

    and-long/2addr v0, v6

    iput-wide v0, p0, Labcd/yO;->Hw:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected DW([BI)V
    .registers 7

    iget-object v0, p0, Labcd/yO;->J8:[J

    iget v1, p0, Labcd/yO;->Ws:I

    invoke-static {p1, p2}, Labcd/ZO;->DW([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget v0, p0, Labcd/yO;->Ws:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/yO;->Ws:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/yO;->Hw()V

    :cond_0
    return-void
.end method

.method public FH()V
    .registers 6

    invoke-direct {p0}, Labcd/yO;->v5()V

    iget-wide v0, p0, Labcd/yO;->Hw:J

    iget-wide v2, p0, Labcd/yO;->v5:J

    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Labcd/yO;->j6(B)V

    :goto_0
    iget v4, p0, Labcd/yO;->FH:I

    if-nez v4, :cond_0

    const/4 v4, 0x3

    shl-long/2addr v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Labcd/yO;->j6(JJ)V

    invoke-virtual {p0}, Labcd/yO;->Hw()V

    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Labcd/yO;->j6(B)V

    goto :goto_0
.end method

.method protected Hw()V
    .registers 34

    invoke-direct/range {p0 .. p0}, Labcd/yO;->v5()V

    const/16 v4, 0x10

    :goto_0
    const/16 v5, 0x4f

    if-le v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Labcd/yO;->Zo:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Labcd/yO;->VH:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Labcd/yO;->gn:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Labcd/yO;->u7:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v6, v0, Labcd/yO;->tp:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Labcd/yO;->EQ:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Labcd/yO;->we:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Labcd/yO;->J0:J

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-wide/from16 v24, v4

    move/from16 v30, v12

    move/from16 v31, v13

    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0xa

    move/from16 v0, v31

    if-lt v0, v5, :cond_1

    move-object/from16 v0, p0

    iget-wide v12, v0, Labcd/yO;->Zo:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Labcd/yO;->Zo:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Labcd/yO;->VH:J

    add-long v12, v12, v16

    move-object/from16 v0, p0

    iput-wide v12, v0, Labcd/yO;->VH:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Labcd/yO;->gn:J

    add-long v12, v12, v18

    move-object/from16 v0, p0

    iput-wide v12, v0, Labcd/yO;->gn:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Labcd/yO;->u7:J

    add-long v12, v12, v22

    move-object/from16 v0, p0

    iput-wide v12, v0, Labcd/yO;->u7:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Labcd/yO;->tp:J

    add-long/2addr v6, v12

    move-object/from16 v0, p0

    iput-wide v6, v0, Labcd/yO;->tp:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Labcd/yO;->EQ:J

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Labcd/yO;->EQ:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Labcd/yO;->we:J

    add-long/2addr v6, v10

    move-object/from16 v0, p0

    iput-wide v6, v0, Labcd/yO;->we:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Labcd/yO;->J0:J

    add-long v6, v6, v24

    move-object/from16 v0, p0

    iput-wide v6, v0, Labcd/yO;->J0:J

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Labcd/yO;->Ws:I

    :goto_2
    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/yO;->J8:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Labcd/yO;->Hw(J)J

    move-result-wide v12

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Labcd/yO;->j6(JJJ)J

    move-result-wide v4

    sget-object v20, Labcd/yO;->j6:[J

    aget-wide v20, v20, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/yO;->J8:[J

    move-object/from16 v26, v0

    add-int/lit8 v28, v30, 0x1

    add-long/2addr v4, v12

    add-long v4, v4, v20

    aget-wide v12, v26, v30

    add-long/2addr v4, v12

    add-long v4, v4, v24

    add-long v22, v22, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Labcd/yO;->FH(J)J

    move-result-wide v20

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Labcd/yO;->DW(JJJ)J

    move-result-wide v12

    add-long v12, v12, v20

    add-long/2addr v12, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Labcd/yO;->Hw(J)J

    move-result-wide v4

    move-object/from16 v21, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Labcd/yO;->j6(JJJ)J

    move-result-wide v20

    sget-object v24, Labcd/yO;->j6:[J

    aget-wide v24, v24, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/yO;->J8:[J

    move-object/from16 v26, v0

    add-int/lit8 v27, v28, 0x1

    add-long v4, v4, v20

    add-long v4, v4, v24

    aget-wide v20, v26, v28

    add-long v4, v4, v20

    add-long/2addr v4, v10

    add-long v20, v18, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Labcd/yO;->FH(J)J

    move-result-wide v18

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Labcd/yO;->DW(JJJ)J

    move-result-wide v10

    add-long v10, v10, v18

    add-long/2addr v10, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Labcd/yO;->Hw(J)J

    move-result-wide v4

    move-object/from16 v19, p0

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Labcd/yO;->j6(JJJ)J

    move-result-wide v18

    sget-object v24, Labcd/yO;->j6:[J

    aget-wide v24, v24, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/yO;->J8:[J

    move-object/from16 v26, v0

    add-int/lit8 v28, v27, 0x1

    add-long v4, v4, v18

    add-long v4, v4, v24

    aget-wide v18, v26, v27

    add-long v4, v4, v18

    add-long/2addr v4, v8

    add-long v18, v16, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Labcd/yO;->FH(J)J

    move-result-wide v16

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Labcd/yO;->DW(JJJ)J

    move-result-wide v8

    add-long v8, v8, v16

    add-long/2addr v8, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Labcd/yO;->Hw(J)J

    move-result-wide v4

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v23}, Labcd/yO;->j6(JJJ)J

    move-result-wide v16

    sget-object v24, Labcd/yO;->j6:[J

    aget-wide v24, v24, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/yO;->J8:[J

    move-object/from16 v26, v0

    add-int/lit8 v27, v28, 0x1

    add-long v4, v4, v16

    add-long v4, v4, v24

    aget-wide v16, v26, v28

    add-long v4, v4, v16

    add-long/2addr v4, v6

    add-long v16, v14, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Labcd/yO;->FH(J)J

    move-result-wide v14

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Labcd/yO;->DW(JJJ)J

    move-result-wide v6

    add-long/2addr v6, v14

    add-long/2addr v6, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Labcd/yO;->Hw(J)J

    move-result-wide v4

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Labcd/yO;->j6(JJJ)J

    move-result-wide v14

    sget-object v24, Labcd/yO;->j6:[J

    aget-wide v24, v24, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/yO;->J8:[J

    move-object/from16 v26, v0

    add-int/lit8 v30, v27, 0x1

    add-long/2addr v4, v14

    add-long v4, v4, v24

    aget-wide v14, v26, v27

    add-long/2addr v4, v14

    add-long v14, v22, v4

    add-long v28, v12, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Labcd/yO;->FH(J)J

    move-result-wide v12

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Labcd/yO;->DW(JJJ)J

    move-result-wide v4

    add-long/2addr v4, v12

    add-long v22, v14, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Labcd/yO;->Hw(J)J

    move-result-wide v4

    move-object/from16 v13, p0

    move-wide/from16 v14, v28

    invoke-direct/range {v13 .. v19}, Labcd/yO;->j6(JJJ)J

    move-result-wide v12

    sget-object v14, Labcd/yO;->j6:[J

    aget-wide v14, v14, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/yO;->J8:[J

    move-object/from16 v24, v0

    add-int/lit8 v32, v30, 0x1

    add-long/2addr v4, v12

    add-long/2addr v4, v14

    aget-wide v12, v24, v30

    add-long/2addr v4, v12

    add-long v4, v4, v20

    add-long v12, v10, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Labcd/yO;->FH(J)J

    move-result-wide v10

    move-object/from16 v21, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Labcd/yO;->DW(JJJ)J

    move-result-wide v14

    add-long/2addr v10, v14

    add-long v20, v4, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Labcd/yO;->Hw(J)J

    move-result-wide v4

    move-object/from16 v11, p0

    move-wide/from16 v14, v28

    invoke-direct/range {v11 .. v17}, Labcd/yO;->j6(JJJ)J

    move-result-wide v10

    sget-object v14, Labcd/yO;->j6:[J

    aget-wide v14, v14, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/yO;->J8:[J

    move-object/from16 v24, v0

    add-int/lit8 v30, v32, 0x1

    add-long/2addr v4, v10

    add-long/2addr v4, v14

    aget-wide v10, v24, v32

    add-long/2addr v4, v10

    add-long v10, v18, v4

    add-long v4, v8, v10

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Labcd/yO;->FH(J)J

    move-result-wide v8

    move-object/from16 v19, p0

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Labcd/yO;->DW(JJJ)J

    move-result-wide v14

    add-long/2addr v8, v14

    add-long v26, v10, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Labcd/yO;->Hw(J)J

    move-result-wide v18

    move-object/from16 v9, p0

    move-wide v10, v4

    move-wide/from16 v14, v28

    invoke-direct/range {v9 .. v15}, Labcd/yO;->j6(JJJ)J

    move-result-wide v8

    add-long v8, v8, v18

    sget-object v10, Labcd/yO;->j6:[J

    aget-wide v10, v10, v30

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Labcd/yO;->J8:[J

    aget-wide v10, v10, v30

    add-long/2addr v8, v10

    add-long v8, v8, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Labcd/yO;->FH(J)J

    move-result-wide v10

    move-object/from16 v17, p0

    move-wide/from16 v18, v26

    invoke-direct/range {v17 .. v23}, Labcd/yO;->DW(JJJ)J

    move-result-wide v14

    add-long/2addr v10, v14

    add-long v14, v8, v10

    add-int/lit8 v31, v31, 0x1

    add-int/lit8 v30, v30, 0x1

    add-long/2addr v6, v8

    move-wide/from16 v24, v28

    move-wide v10, v12

    move-wide/from16 v18, v20

    move-wide v8, v4

    move-wide/from16 v16, v26

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/yO;->J8:[J

    add-int/lit8 v6, v4, -0x2

    aget-wide v6, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Labcd/yO;->DW(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/yO;->J8:[J

    add-int/lit8 v9, v4, -0x7

    aget-wide v10, v8, v9

    add-long/2addr v6, v10

    add-int/lit8 v9, v4, -0xf

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Labcd/yO;->j6(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/yO;->J8:[J

    add-int/lit8 v9, v4, -0x10

    aget-wide v8, v8, v9

    add-long/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public j6(B)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/yO;->DW:[B

    iget v1, p0, Labcd/yO;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/yO;->FH:I

    aput-byte p1, v0, v1

    iget v1, p0, Labcd/yO;->FH:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0, v3}, Labcd/yO;->DW([BI)V

    iput v3, p0, Labcd/yO;->FH:I

    :cond_0
    iget-wide v0, p0, Labcd/yO;->Hw:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/yO;->Hw:J

    return-void
.end method

.method protected j6(JJ)V
    .registers 8

    const/16 v1, 0xe

    iget v0, p0, Labcd/yO;->Ws:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/yO;->Hw()V

    :cond_0
    iget-object v0, p0, Labcd/yO;->J8:[J

    aput-wide p3, v0, v1

    const/16 v1, 0xf

    aput-wide p1, v0, v1

    return-void
.end method

.method public reset()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iput-wide v4, p0, Labcd/yO;->Hw:J

    iput-wide v4, p0, Labcd/yO;->v5:J

    iput v1, p0, Labcd/yO;->FH:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/yO;->DW:[B

    array-length v3, v2

    if-lt v0, v3, :cond_1

    iput v1, p0, Labcd/yO;->Ws:I

    :goto_1
    iget-object v0, p0, Labcd/yO;->J8:[J

    array-length v2, v0

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update([BII)V
    .registers 8

    :goto_0
    iget v0, p0, Labcd/yO;->FH:I

    if-eqz v0, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Labcd/yO;->DW:[B

    array-length v0, v0

    if-gt p3, v0, :cond_3

    :goto_2
    if-gtz p3, :cond_2

    return-void

    :cond_1
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/yO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/yO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2}, Labcd/yO;->DW([BI)V

    iget-object v0, p0, Labcd/yO;->DW:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v2, p0, Labcd/yO;->Hw:J

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/yO;->Hw:J

    goto :goto_1
.end method
