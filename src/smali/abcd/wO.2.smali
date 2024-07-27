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

    const/4 v2, -0x1

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x1

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
    .registers 6

    const/16 v3, 0x10

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->DW:[B

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->FH:[B

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->Hw:[B

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->v5:[B

    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Labcd/wO;->Zo:[[B

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->VH:[B

    new-instance v0, Labcd/KO;

    invoke-direct {v0}, Labcd/KO;-><init>()V

    iput-object v0, p0, Labcd/wO;->tp:Labcd/pO;

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->we:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/wO;->J0:[B

    new-array v0, v3, [S

    iput-object v0, p0, Labcd/wO;->J8:[S

    new-array v0, v3, [S

    iput-object v0, p0, Labcd/wO;->Ws:[S

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->QX:[B

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->XL:[B

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->aM:[B

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/wO;->j3:[B

    const-string v0, "D-A"

    invoke-static {v0}, Labcd/KO;->j6(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/wO;->EQ:[B

    iget-object v0, p0, Labcd/wO;->tp:Labcd/pO;

    const/4 v1, 0x1

    new-instance v2, Labcd/YO;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/wO;->EQ:[B

    invoke-direct {v2, v3, v4}, Labcd/YO;-><init>(Labcd/qO;[B)V

    invoke-interface {v0, v1, v2}, Labcd/pO;->j6(ZLabcd/qO;)V

    invoke-virtual {p0}, Labcd/wO;->reset()V

    return-void
.end method

.method private DW([B)[B
    .registers 7

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Labcd/wO;->we:[B

    return-object v0

    :cond_0
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

    goto :goto_0
.end method

.method private FH()V
    .registers 6

    const/4 v4, 0x0

    iget-wide v0, p0, Labcd/wO;->u7:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Labcd/wO;->FH:[B

    invoke-static {v0, v1, v2, v4}, Labcd/ZO;->DW(J[BI)V

    :goto_0
    iget v0, p0, Labcd/wO;->gn:I

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/wO;->FH:[B

    invoke-virtual {p0, v0, v4}, Labcd/wO;->DW([BI)V

    iget-object v0, p0, Labcd/wO;->v5:[B

    invoke-virtual {p0, v0, v4}, Labcd/wO;->DW([BI)V

    return-void

    :cond_0
    invoke-virtual {p0, v4}, Labcd/wO;->j6(B)V

    goto :goto_0
.end method

.method private FH([B)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xf

    iget-object v0, p0, Labcd/wO;->J8:[S

    invoke-direct {p0, p1, v0}, Labcd/wO;->j6([B[S)V

    iget-object v0, p0, Labcd/wO;->Ws:[S

    iget-object v1, p0, Labcd/wO;->J8:[S

    aget-short v2, v1, v5

    aget-short v3, v1, v6

    xor-int/2addr v2, v3

    const/4 v3, 0x2

    aget-short v3, v1, v3

    xor-int/2addr v2, v3

    const/4 v3, 0x3

    aget-short v3, v1, v3

    xor-int/2addr v2, v3

    const/16 v3, 0xc

    aget-short v3, v1, v3

    xor-int/2addr v2, v3

    aget-short v3, v1, v4

    xor-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v0, v4

    invoke-static {v1, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/wO;->Ws:[S

    invoke-direct {p0, v0, p1}, Labcd/wO;->j6([S[B)V

    return-void
.end method

.method private Hw([B)V
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Labcd/wO;->v5:[B

    array-length v3, v1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private j6([B[BI[BI)V
    .registers 9

    iget-object v0, p0, Labcd/wO;->tp:Labcd/pO;

    const/4 v1, 0x1

    new-instance v2, Labcd/XO;

    invoke-direct {v2, p1}, Labcd/XO;-><init>([B)V

    invoke-interface {v0, v1, v2}, Labcd/pO;->j6(ZLabcd/qO;)V

    iget-object v0, p0, Labcd/wO;->tp:Labcd/pO;

    invoke-interface {v0, p4, p5, p2, p3}, Labcd/pO;->j6([BI[BI)I

    return-void
.end method

.method private j6([B[S)V
    .registers 7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
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

    goto :goto_0
.end method

.method private j6([S[B)V
    .registers 7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-short v3, p1, v0

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    aget-short v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private j6([B)[B
    .registers 9

    const/16 v6, 0x18

    const/16 v5, 0x8

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_0

    invoke-static {p1, v5, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/wO;->J0:[B

    invoke-static {v0, v1, p1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    iget-object v2, p0, Labcd/wO;->J0:[B

    aget-byte v3, p1, v0

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method protected DW([BI)V
    .registers 14

    const/16 v10, 0x20

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/wO;->Hw:[B

    invoke-static {p1, p2, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/wO;->DW:[B

    iget-object v1, p0, Labcd/wO;->XL:[B

    invoke-static {v0, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/wO;->Hw:[B

    iget-object v1, p0, Labcd/wO;->aM:[B

    invoke-static {v0, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    :goto_0
    if-lt v0, v10, :cond_7

    iget-object v0, p0, Labcd/wO;->j3:[B

    invoke-direct {p0, v0}, Labcd/wO;->DW([B)[B

    move-result-object v1

    iget-object v2, p0, Labcd/wO;->QX:[B

    iget-object v4, p0, Labcd/wO;->DW:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Labcd/wO;->j6([B[BI[BI)V

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const/4 v0, 0x4

    if-lt v1, v0, :cond_4

    move v0, v3

    :goto_2
    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    move v0, v3

    :goto_3
    if-lt v0, v10, :cond_2

    iget-object v0, p0, Labcd/wO;->QX:[B

    invoke-direct {p0, v0}, Labcd/wO;->FH([B)V

    move v0, v3

    :goto_4
    if-lt v0, v10, :cond_1

    move v0, v3

    :goto_5
    const/16 v1, 0x3d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Labcd/wO;->QX:[B

    iget-object v1, p0, Labcd/wO;->DW:[B

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    iget-object v1, p0, Labcd/wO;->QX:[B

    invoke-direct {p0, v1}, Labcd/wO;->FH([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    iget-object v1, p0, Labcd/wO;->QX:[B

    iget-object v2, p0, Labcd/wO;->DW:[B

    aget-byte v2, v2, v0

    aget-byte v4, v1, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    iget-object v1, p0, Labcd/wO;->QX:[B

    aget-byte v2, v1, v0

    iget-object v4, p0, Labcd/wO;->Hw:[B

    aget-byte v4, v4, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Labcd/wO;->QX:[B

    invoke-direct {p0, v1}, Labcd/wO;->FH([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Labcd/wO;->XL:[B

    invoke-direct {p0, v2}, Labcd/wO;->j6([B)[B

    move v0, v3

    :goto_6
    if-lt v0, v10, :cond_6

    iget-object v0, p0, Labcd/wO;->aM:[B

    invoke-direct {p0, v0}, Labcd/wO;->j6([B)[B

    invoke-direct {p0, v0}, Labcd/wO;->j6([B)[B

    iput-object v0, p0, Labcd/wO;->aM:[B

    move v0, v3

    :goto_7
    if-lt v0, v10, :cond_5

    iget-object v0, p0, Labcd/wO;->j3:[B

    invoke-direct {p0, v0}, Labcd/wO;->DW([B)[B

    move-result-object v5

    iget-object v6, p0, Labcd/wO;->QX:[B

    mul-int/lit8 v7, v1, 0x8

    iget-object v8, p0, Labcd/wO;->DW:[B

    move-object v4, p0

    move v9, v7

    invoke-direct/range {v4 .. v9}, Labcd/wO;->j6([B[BI[BI)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Labcd/wO;->j3:[B

    iget-object v4, p0, Labcd/wO;->XL:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Labcd/wO;->aM:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    iget-object v4, p0, Labcd/wO;->XL:[B

    aget-byte v5, v2, v0

    iget-object v6, p0, Labcd/wO;->Zo:[[B

    aget-object v6, v6, v1

    aget-byte v6, v6, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iget-object v1, p0, Labcd/wO;->j3:[B

    iget-object v2, p0, Labcd/wO;->XL:[B

    aget-byte v2, v2, v0

    iget-object v4, p0, Labcd/wO;->aM:[B

    aget-byte v4, v4, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public j6([BI)I
    .registers 6

    invoke-direct {p0}, Labcd/wO;->FH()V

    iget-object v0, p0, Labcd/wO;->DW:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Labcd/wO;->reset()V

    const/16 v0, 0x20

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "GOST3411"

    return-object v0
.end method

.method public j6(B)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/wO;->VH:[B

    iget v1, p0, Labcd/wO;->gn:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/wO;->gn:I

    aput-byte p1, v0, v1

    iget v1, p0, Labcd/wO;->gn:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Labcd/wO;->Hw([B)V

    iget-object v0, p0, Labcd/wO;->VH:[B

    invoke-virtual {p0, v0, v3}, Labcd/wO;->DW([BI)V

    iput v3, p0, Labcd/wO;->gn:I

    :cond_0
    iget-wide v0, p0, Labcd/wO;->u7:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/wO;->u7:J

    return-void
.end method

.method public reset()V
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Labcd/wO;->u7:J

    iput v1, p0, Labcd/wO;->gn:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/wO;->DW:[B

    array-length v3, v2

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Labcd/wO;->FH:[B

    array-length v3, v2

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_2
    iget-object v2, p0, Labcd/wO;->Hw:[B

    array-length v3, v2

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_3
    iget-object v2, p0, Labcd/wO;->Zo:[[B

    aget-object v3, v2, v4

    array-length v3, v3

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_4
    iget-object v2, p0, Labcd/wO;->Zo:[[B

    aget-object v3, v2, v5

    array-length v3, v3

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_5
    iget-object v2, p0, Labcd/wO;->v5:[B

    array-length v3, v2

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_6
    iget-object v2, p0, Labcd/wO;->VH:[B

    array-length v3, v2

    if-lt v0, v3, :cond_0

    sget-object v0, Labcd/wO;->j6:[B

    iget-object v2, p0, Labcd/wO;->Zo:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2
    aget-object v2, v2, v5

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    aget-object v2, v2, v4

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update([BII)V
    .registers 9

    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Labcd/wO;->gn:I

    if-eqz v0, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Labcd/wO;->VH:[B

    array-length v1, v0

    if-gt p3, v1, :cond_3

    :goto_2
    if-gtz p3, :cond_2

    return-void

    :cond_1
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/wO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/wO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    array-length v1, v0

    invoke-static {p1, p2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/wO;->VH:[B

    invoke-direct {p0, v0}, Labcd/wO;->Hw([B)V

    iget-object v0, p0, Labcd/wO;->VH:[B

    invoke-virtual {p0, v0, v4}, Labcd/wO;->DW([BI)V

    iget-object v0, p0, Labcd/wO;->VH:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v2, p0, Labcd/wO;->u7:J

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/wO;->u7:J

    goto :goto_1
.end method
