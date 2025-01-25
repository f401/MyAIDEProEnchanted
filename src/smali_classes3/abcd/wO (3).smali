.class public Labcd/wO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/tO;


# static fields
.field private static final j6:[B


# instance fields
.field private DW:[B

.field private EQ:[B

.field private FH:[B

.field private Hw:[B

.field J0:[B

.field J8:[S

.field QX:[B

.field private VH:[B

.field Ws:[S

.field XL:[B

.field private Zo:[[B

.field aM:[B

.field private gn:I

.field j3:[B

.field private tp:Labcd/pO;

.field private u7:J

.field private v5:[B

.field private we:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v2, v0, v1

    sput-object v0, Labcd/wO;->j6:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->DW:[B

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->FH:[B

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->Hw:[B

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->v5:[B

    const/4 v1, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Labcd/wO;->Zo:[[B

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->VH:[B

    new-instance v1, Labcd/KO;

    invoke-direct {v1}, Labcd/KO;-><init>()V

    iput-object v1, p0, Labcd/wO;->tp:Labcd/pO;

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->we:[B

    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Labcd/wO;->J0:[B

    const/16 v1, 0x10

    new-array v2, v1, [S

    iput-object v2, p0, Labcd/wO;->J8:[S

    new-array v1, v1, [S

    iput-object v1, p0, Labcd/wO;->Ws:[S

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->QX:[B

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->XL:[B

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/wO;->aM:[B

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/wO;->j3:[B

    const-string v0, "D-A"

    invoke-static {v0}, Labcd/KO;->j6(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/wO;->EQ:[B

    iget-object v1, p0, Labcd/wO;->tp:Labcd/pO;

    new-instance v2, Labcd/YO;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Labcd/YO;-><init>(Labcd/qO;[B)V

    const/4 v0, 0x1

    invoke-interface {v1, v0, v2}, Labcd/pO;->j6(ZLabcd/qO;)V

    invoke-virtual {p0}, Labcd/wO;->reset()V

    return-void
.end method

.method private DW([B)[B
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    iget-object p1, p0, Labcd/wO;->we:[B

    return-object p1

    :cond_8
    iget-object v1, p0, Labcd/wO;->we:[B

    mul-int/lit8 v2, v0, 0x4

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v0, 0x10

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private FH()V
    .registers 5

    iget-wide v0, p0, Labcd/wO;->u7:J

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    iget-object v2, p0, Labcd/wO;->FH:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Labcd/ZO;->DW(J[BI)V

    :goto_c
    iget v0, p0, Labcd/wO;->gn:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Labcd/wO;->FH:[B

    invoke-virtual {p0, v0, v3}, Labcd/wO;->DW([BI)V

    iget-object v0, p0, Labcd/wO;->v5:[B

    invoke-virtual {p0, v0, v3}, Labcd/wO;->DW([BI)V

    return-void

    :cond_1b
    invoke-virtual {p0, v3}, Labcd/wO;->j6(B)V

    goto :goto_c
.end method

.method private FH([B)V
    .registers 9

    iget-object v0, p0, Labcd/wO;->J8:[S

    invoke-direct {p0, p1, v0}, Labcd/wO;->j6([B[S)V

    iget-object v0, p0, Labcd/wO;->Ws:[S

    iget-object v1, p0, Labcd/wO;->J8:[S

    const/4 v2, 0x0

    aget-short v3, v1, v2

    const/4 v4, 0x1

    aget-short v5, v1, v4

    xor-int/2addr v3, v5

    const/4 v5, 0x2

    aget-short v5, v1, v5

    xor-int/2addr v3, v5

    const/4 v5, 0x3

    aget-short v5, v1, v5

    xor-int/2addr v3, v5

    const/16 v5, 0xc

    aget-short v5, v1, v5

    xor-int/2addr v3, v5

    const/16 v5, 0xf

    aget-short v6, v1, v5

    xor-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v0, v5

    invoke-static {v1, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/wO;->Ws:[S

    invoke-direct {p0, v0, p1}, Labcd/wO;->j6([S[B)V

    return-void
.end method

.method private Hw([B)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Labcd/wO;->v5:[B

    array-length v3, v2

    if-ne v0, v3, :cond_8

    return-void

    :cond_8
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-byte v1, v3

    aput-byte v1, v2, v0

    ushr-int/lit8 v1, v3, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private j6([B[BI[BI)V
    .registers 8

    iget-object v0, p0, Labcd/wO;->tp:Labcd/pO;

    new-instance v1, Labcd/XO;

    invoke-direct {v1, p1}, Labcd/XO;-><init>([B)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Labcd/pO;->j6(ZLabcd/qO;)V

    iget-object p1, p0, Labcd/wO;->tp:Labcd/pO;

    invoke-interface {p1, p4, p5, p2, p3}, Labcd/pO;->j6([BI[BI)I

    return-void
.end method

.method private j6([B[S)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private j6([S[B)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-short v3, p1, v0

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private j6([B)[B
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x8

    if-lt v1, v2, :cond_11

    const/16 v1, 0x18

    invoke-static {p1, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Labcd/wO;->J0:[B

    invoke-static {v3, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_11
    iget-object v2, p0, Labcd/wO;->J0:[B

    aget-byte v3, p1, v1

    add-int/lit8 v4, v1, 0x8

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method protected DW([BI)V
    .registers 12

    iget-object v0, p0, Labcd/wO;->Hw:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/wO;->DW:[B

    iget-object p2, p0, Labcd/wO;->XL:[B

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/wO;->Hw:[B

    iget-object p2, p0, Labcd/wO;->aM:[B

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_17
    if-lt p1, v2, :cond_c5

    iget-object p1, p0, Labcd/wO;->j3:[B

    invoke-direct {p0, p1}, Labcd/wO;->DW([B)[B

    move-result-object v4

    iget-object v5, p0, Labcd/wO;->QX:[B

    const/4 v6, 0x0

    iget-object v7, p0, Labcd/wO;->DW:[B

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Labcd/wO;->j6([B[BI[BI)V

    const/4 p1, 0x1

    const/4 p2, 0x1

    :goto_2b
    const/4 p1, 0x4

    if-lt p2, p1, :cond_7a

    const/4 p1, 0x0

    :goto_2f
    const/16 p2, 0xc

    if-lt p1, p2, :cond_72

    const/4 p1, 0x0

    :goto_34
    if-lt p1, v2, :cond_63

    iget-object p1, p0, Labcd/wO;->QX:[B

    invoke-direct {p0, p1}, Labcd/wO;->FH([B)V

    const/4 p1, 0x0

    :goto_3c
    if-lt p1, v2, :cond_54

    const/4 p1, 0x0

    :goto_3f
    const/16 p2, 0x3d

    if-lt p1, p2, :cond_4c

    iget-object p1, p0, Labcd/wO;->QX:[B

    iget-object p2, p0, Labcd/wO;->DW:[B

    array-length v0, p2

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_4c
    iget-object p2, p0, Labcd/wO;->QX:[B

    invoke-direct {p0, p2}, Labcd/wO;->FH([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    :cond_54
    iget-object p2, p0, Labcd/wO;->QX:[B

    iget-object v0, p0, Labcd/wO;->DW:[B

    aget-byte v0, v0, p1

    aget-byte v3, p2, p1

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    :cond_63
    iget-object p2, p0, Labcd/wO;->QX:[B

    aget-byte v0, p2, p1

    iget-object v3, p0, Labcd/wO;->Hw:[B

    aget-byte v3, v3, p1

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_34

    :cond_72
    iget-object p2, p0, Labcd/wO;->QX:[B

    invoke-direct {p0, p2}, Labcd/wO;->FH([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_7a
    iget-object v0, p0, Labcd/wO;->XL:[B

    invoke-direct {p0, v0}, Labcd/wO;->j6([B)[B

    const/4 p1, 0x0

    :goto_80
    if-lt p1, v2, :cond_b4

    iget-object p1, p0, Labcd/wO;->aM:[B

    invoke-direct {p0, p1}, Labcd/wO;->j6([B)[B

    invoke-direct {p0, p1}, Labcd/wO;->j6([B)[B

    iput-object p1, p0, Labcd/wO;->aM:[B

    const/4 p1, 0x0

    :goto_8d
    if-lt p1, v2, :cond_a3

    iget-object p1, p0, Labcd/wO;->j3:[B

    invoke-direct {p0, p1}, Labcd/wO;->DW([B)[B

    move-result-object v4

    iget-object v5, p0, Labcd/wO;->QX:[B

    mul-int/lit8 v8, p2, 0x8

    iget-object v7, p0, Labcd/wO;->DW:[B

    move-object v3, p0

    move v6, v8

    invoke-direct/range {v3 .. v8}, Labcd/wO;->j6([B[BI[BI)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    :cond_a3
    iget-object v0, p0, Labcd/wO;->j3:[B

    iget-object v3, p0, Labcd/wO;->XL:[B

    aget-byte v3, v3, p1

    iget-object v4, p0, Labcd/wO;->aM:[B

    aget-byte v4, v4, p1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8d

    :cond_b4
    iget-object v3, p0, Labcd/wO;->XL:[B

    aget-byte v4, v0, p1

    iget-object v5, p0, Labcd/wO;->Zo:[[B

    aget-object v5, v5, p2

    aget-byte v5, v5, p1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_80

    :cond_c5
    iget-object p2, p0, Labcd/wO;->j3:[B

    iget-object v0, p0, Labcd/wO;->XL:[B

    aget-byte v0, v0, p1

    iget-object v3, p0, Labcd/wO;->aM:[B

    aget-byte v3, v3, p1

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_17
.end method

.method public j6([BI)I
    .registers 6

    invoke-direct {p0}, Labcd/wO;->FH()V

    iget-object v0, p0, Labcd/wO;->DW:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Labcd/wO;->reset()V

    const/16 p1, 0x20

    return p1
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "GOST3411"

    return-object v0
.end method

.method public j6(B)V
    .registers 6

    iget-object v0, p0, Labcd/wO;->VH:[B

    iget v1, p0, Labcd/wO;->gn:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/wO;->gn:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_18

    invoke-direct {p0, v0}, Labcd/wO;->Hw([B)V

    iget-object p1, p0, Labcd/wO;->VH:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/wO;->DW([BI)V

    iput v0, p0, Labcd/wO;->gn:I

    :cond_18
    iget-wide v0, p0, Labcd/wO;->u7:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/wO;->u7:J

    return-void
.end method

.method public reset()V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/wO;->u7:J

    const/4 v0, 0x0

    iput v0, p0, Labcd/wO;->gn:I

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Labcd/wO;->DW:[B

    array-length v3, v2

    if-lt v1, v3, :cond_61

    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Labcd/wO;->FH:[B

    array-length v3, v2

    if-lt v1, v3, :cond_5c

    const/4 v1, 0x0

    :goto_14
    iget-object v2, p0, Labcd/wO;->Hw:[B

    array-length v3, v2

    if-lt v1, v3, :cond_57

    const/4 v1, 0x0

    :goto_1a
    iget-object v2, p0, Labcd/wO;->Zo:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    array-length v3, v2

    if-lt v1, v3, :cond_52

    const/4 v1, 0x0

    :goto_23
    iget-object v2, p0, Labcd/wO;->Zo:[[B

    const/4 v3, 0x3

    aget-object v2, v2, v3

    array-length v3, v2

    if-lt v1, v3, :cond_4d

    const/4 v1, 0x0

    :goto_2c
    iget-object v2, p0, Labcd/wO;->v5:[B

    array-length v3, v2

    if-lt v1, v3, :cond_48

    const/4 v1, 0x0

    :goto_32
    iget-object v2, p0, Labcd/wO;->VH:[B

    array-length v3, v2

    if-lt v1, v3, :cond_43

    sget-object v1, Labcd/wO;->j6:[B

    iget-object v2, p0, Labcd/wO;->Zo:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_43
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_48
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4d
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_52
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_57
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_5c
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_61
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public update([BII)V
    .registers 9

    :goto_0
    iget v0, p0, Labcd/wO;->gn:I

    if-eqz v0, :cond_11

    if-gtz p3, :cond_7

    goto :goto_11

    :cond_7
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/wO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_11
    :goto_11
    iget-object v0, p0, Labcd/wO;->VH:[B

    array-length v1, v0

    if-gt p3, v1, :cond_23

    :goto_16
    if-gtz p3, :cond_19

    return-void

    :cond_19
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/wO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_16

    :cond_23
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/wO;->VH:[B

    invoke-direct {p0, v0}, Labcd/wO;->Hw([B)V

    iget-object v0, p0, Labcd/wO;->VH:[B

    invoke-virtual {p0, v0, v2}, Labcd/wO;->DW([BI)V

    iget-object v0, p0, Labcd/wO;->VH:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Labcd/wO;->u7:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Labcd/wO;->u7:J

    goto :goto_11
.end method
