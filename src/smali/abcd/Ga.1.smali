.class public Labcd/Ga;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:[I
    .annotation runtime Labcd/ru;
        field = -0xcfd153239f98707L
    .end annotation
.end field


# instance fields
.field private EQ:[C
    .annotation runtime Labcd/ru;
        field = 0x21ae73587d075bc4L
    .end annotation
.end field

.field private Hw:[I
    .annotation runtime Labcd/ru;
        field = 0x18790c8e36338b5dL
    .end annotation
.end field

.field private J0:Labcd/qb;
    .annotation runtime Labcd/ru;
        field = -0x144047c03484a97bL
    .end annotation
.end field

.field private J8:[C
    .annotation runtime Labcd/ru;
        field = -0x16cf1665063ade9L
    .end annotation
.end field

.field private QX:[C
    .annotation runtime Labcd/ru;
        field = 0x48b9ae19433bee7L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x320ecb463a40765L
    .end annotation
.end field

.field private Ws:[C
    .annotation runtime Labcd/ru;
        field = 0x48b8c0d3a78350cL
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = -0x43427cc9d0f4f00L
    .end annotation
.end field

.field private gn:[B
    .annotation runtime Labcd/ru;
        field = 0x2970b534ad19d678L
    .end annotation
.end field

.field private tp:[I
    .annotation runtime Labcd/ru;
        field = 0x2d3e7c4594055457L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x25b4bc8fa1b6d0c0L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0x1218215ee0b977e8L
    .end annotation
.end field

.field private we:Labcd/qb;
    .annotation runtime Labcd/ru;
        field = 0x203a2caae1e412ecL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2ec6f94b589f24d9L
    .end annotation

    const-wide v8, -0x2945c02de59c9f6dL    # -6.164759803960882E109

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Ga;

    const-wide v2, -0x1b21f2239256083L    # -2.501167630706194E300

    const-wide v4, -0x1b21f2239256083L    # -2.501167630706194E300

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2945c02de59c9f6dL    # -6.164759803960882E109

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Ga;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    nop

    :array_0
    .array-data 4
        0x5
        0xb
        0x11
        0x25
        0x43
        0x83
        0x101
        0x209
        0x407
        0x805
        0x1003
        0x2011
        0x401b
        0x8003
        0x10001
        0x2001d
        0x40003
        0x80015
        0x100007
        0x200011
        0x40000f
        0x800009
        0x100002b
        0x2000023
        0x400000f
        0x800001d
        0x10000003
        0x2000000b
        0x40000003    # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 11

    const-wide v8, -0x365854d5c2718ba0L    # -6.75619474102426E46

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ga;->DW:Z

    if-eqz v1, :cond_0

    const-wide v4, -0x365854d5c2718ba0L    # -6.75619474102426E46

    const/4 v1, 0x0

    invoke-static {v4, v5, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/qb;

    invoke-direct {v1}, Labcd/qb;-><init>()V

    iput-object v1, p0, Labcd/Ga;->we:Labcd/qb;

    new-instance v1, Labcd/qb;

    invoke-direct {v1}, Labcd/qb;-><init>()V

    iput-object v1, p0, Labcd/Ga;->J0:Labcd/qb;

    const/16 v1, 0x64

    new-array v1, v1, [C

    iput-object v1, p0, Labcd/Ga;->J8:[C

    const/16 v1, 0x3e8

    new-array v1, v1, [C

    iput-object v1, p0, Labcd/Ga;->Ws:[C

    const/16 v1, 0x3e8

    new-array v1, v1, [C

    iput-object v1, p0, Labcd/Ga;->QX:[C

    const/4 v1, 0x0

    iput v1, p0, Labcd/Ga;->VH:I

    sget-object v1, Labcd/Ga;->j6:[I

    iget v3, p0, Labcd/Ga;->VH:I

    aget v1, v1, v3

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Ga;->Hw:[I

    sget-object v1, Labcd/Ga;->j6:[I

    iget v3, p0, Labcd/Ga;->VH:I

    aget v1, v1, v3

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Ga;->v5:[I

    const/4 v1, 0x0

    iput v1, p0, Labcd/Ga;->Zo:I

    const/16 v1, 0x2710

    new-array v1, v1, [B

    iput-object v1, p0, Labcd/Ga;->gn:[B

    const/4 v1, 0x1

    iput v1, p0, Labcd/Ga;->u7:I

    const/16 v1, 0x7b

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Ga;->tp:[I

    const/16 v1, 0x61

    :goto_0
    const/16 v3, 0x7a

    if-gt v1, v3, :cond_1

    iget-object v3, p0, Labcd/Ga;->tp:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x41

    :goto_1
    const/16 v3, 0x5a

    if-gt v1, v3, :cond_2

    iget-object v3, p0, Labcd/Ga;->tp:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v1, v3, :cond_3

    iget-object v3, p0, Labcd/Ga;->tp:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Labcd/Ga;->tp:[I

    const/16 v3, 0x5f

    aput v2, v1, v3

    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p0, Labcd/Ga;->EQ:[C

    :goto_3
    iget-object v1, p0, Labcd/Ga;->tp:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Labcd/Ga;->EQ:[C

    iget-object v2, p0, Labcd/Ga;->tp:[I

    aget v2, v2, v0

    int-to-char v3, v0

    aput-char v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    return-void
.end method

.method private DW()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x24e4b5f7c05a6d4bL
    .end annotation

    const-wide v8, 0x19fed955a5374b78L

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19fed955a5374b78L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ga;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ga;->VH:I

    sget-object v0, Labcd/Ga;->j6:[I

    iget v1, p0, Labcd/Ga;->VH:I

    aget v0, v0, v1

    new-array v2, v0, [I

    sget-object v0, Labcd/Ga;->j6:[I

    iget v1, p0, Labcd/Ga;->VH:I

    aget v0, v0, v1

    new-array v3, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Labcd/Ga;->Hw:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Labcd/Ga;->Hw:[I

    aget v4, v0, v1

    if-eqz v4, :cond_2

    const v0, 0x7fffffff

    and-int v5, v0, v4

    array-length v6, v2

    array-length v0, v2

    rem-int v0, v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    aget v7, v2, v0

    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, -0x2

    :try_start_1
    rem-int v7, v5, v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v0, v7

    array-length v7, v2

    rem-int/2addr v0, v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    aput v4, v2, v0

    :try_start_2
    iget-object v4, p0, Labcd/Ga;->v5:[I

    aget v4, v4, v1

    aput v4, v3, v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iput-object v2, p0, Labcd/Ga;->Hw:[I

    iput-object v3, p0, Labcd/Ga;->v5:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private DW([CII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x1090f78541eaba73L
    .end annotation

    const-wide v10, -0xebe25d0ab54ead0L    # -3.632790896735311E237

    const/16 v8, 0x7f

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xebe25d0ab54ead0L    # -3.632790896735311E237

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v0, p0, Labcd/Ga;->u7:I

    mul-int/lit8 v1, p3, 0x3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/Ga;->gn:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Labcd/Ga;->gn:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Labcd/Ga;->gn:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Ga;->gn:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Ga;->gn:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ga;->FH:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    add-int v1, p2, p3

    move v0, p2

    :goto_1
    if-ge v0, v1, :cond_3

    aget-char v2, p1, v0

    if-lt v2, v7, :cond_3

    if-le v2, v8, :cond_4

    :cond_3
    :goto_2
    if-ge v0, v1, :cond_7

    aget-char v2, p1, v0

    if-lt v2, v7, :cond_5

    if-gt v2, v8, :cond_5

    :try_start_1
    iget-object v3, p0, Labcd/Ga;->gn:[B

    iget v4, p0, Labcd/Ga;->u7:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ga;->u7:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :try_start_2
    iget-object v3, p0, Labcd/Ga;->gn:[B

    iget v4, p0, Labcd/Ga;->u7:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ga;->u7:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/16 v3, 0x7ff

    if-le v2, v3, :cond_6

    :try_start_3
    iget-object v3, p0, Labcd/Ga;->gn:[B

    iget v4, p0, Labcd/Ga;->u7:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ga;->u7:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    :try_start_4
    iget-object v3, p0, Labcd/Ga;->gn:[B

    iget v4, p0, Labcd/Ga;->u7:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ga;->u7:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    :try_start_5
    iget-object v3, p0, Labcd/Ga;->gn:[B

    iget v4, p0, Labcd/Ga;->u7:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ga;->u7:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    goto :goto_3

    :cond_6
    :try_start_6
    iget-object v3, p0, Labcd/Ga;->gn:[B

    iget v4, p0, Labcd/Ga;->u7:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ga;->u7:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    :try_start_7
    iget-object v3, p0, Labcd/Ga;->gn:[B

    iget v4, p0, Labcd/Ga;->u7:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ga;->u7:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    goto :goto_3

    :cond_7
    :try_start_8
    iget-object v0, p0, Labcd/Ga;->gn:[B

    iget v1, p0, Labcd/Ga;->u7:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/Ga;->u7:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    aput-byte v6, v0, v1

    return-void
.end method

.method private j6(I[CII)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x30b106e761bc9814L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x17a4c98b937a0c73L    # -4.9662556645872835E194

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int v2, p3, p4

    move v1, p3

    move v0, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-char v3, p2, v1

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7f

    if-le v3, v4, :cond_3

    :cond_2
    :goto_2
    if-ge v1, v2, :cond_d

    aget-char v3, p2, v1

    if-nez v3, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    int-to-byte v3, v3

    :try_start_1
    iget-object v4, p0, Labcd/Ga;->gn:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    if-lt v3, v4, :cond_8

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_8

    int-to-byte v3, v3

    iget-object v4, p0, Labcd/Ga;->gn:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_b

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    iget-object v5, p0, Labcd/Ga;->gn:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v5, v0

    if-eq v4, v0, :cond_9

    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    :try_start_2
    iget-object v4, p0, Labcd/Ga;->gn:[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v5, v6, 0x1

    aget-byte v4, v4, v6

    if-eq v0, v4, :cond_a

    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    shr-int/lit8 v0, v3, 0x0

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v3, v0

    :try_start_3
    iget-object v4, p0, Labcd/Ga;->gn:[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v0, v5, 0x1

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    :try_start_4
    iget-object v5, p0, Labcd/Ga;->gn:[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v5, v0

    if-eq v4, v0, :cond_c

    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    shr-int/lit8 v0, v3, 0x0

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v3, v0

    :try_start_5
    iget-object v4, p0, Labcd/Ga;->gn:[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    add-int/lit8 v0, v6, 0x1

    aget-byte v4, v4, v6

    if-eq v3, v4, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_d
    :try_start_6
    iget-object v1, p0, Labcd/Ga;->gn:[B

    aget-byte v0, v1, v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ga;->FH:Z

    if-eqz v0, :cond_f

    const-wide v2, -0x17a4c98b937a0c73L    # -4.9662556645872835E194

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    throw v1
.end method

.method private v5(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xc2340f79256e38L
    .end annotation

    const-wide v4, 0x5cb6b22bdeea4465L    # 4.223057546629284E138

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5cb6b22bdeea4465L    # 4.223057546629284E138

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    const v0, 0x7fffffff

    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Ga;->Hw:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Ga;->Hw:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Ga;->Hw:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Ga;->Hw:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Ga;->Hw:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Ga;->Hw:[I

    aput p1, v0, v1

    iget-object v0, p0, Labcd/Ga;->v5:[I

    iget v2, p0, Labcd/Ga;->u7:I

    aput v2, v0, v1

    iget v0, p0, Labcd/Ga;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ga;->Zo:I

    iget v0, p0, Labcd/Ga;->Zo:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Ga;->Hw:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Ga;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public DW(I)I
    .registers 6

    const-wide v2, -0x220ff948097ded80L    # -3.126869105963953E144

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x220ff948097ded80L    # -3.126869105963953E144

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/Ga;->Ws:[C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Labcd/Ga;->j6(I[CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Labcd/Ga;->Ws:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Ga;->Ws:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return v0
.end method

.method public FH(I)I
    .registers 10

    const-wide v6, 0xfadc0341f01088L

    const/4 v4, -0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    const-wide v2, 0xfadc0341f01088L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Ga;->J0:Labcd/qb;

    invoke-virtual {v0, p1}, Labcd/qb;->DW(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    :goto_0
    return v0

    :cond_1
    :goto_1
    iget-object v0, p0, Labcd/Ga;->J8:[C

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Labcd/Ga;->j6(I[CI)I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v0, p0, Labcd/Ga;->J8:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Ga;->J8:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_4

    :try_start_1
    iget-object v1, p0, Labcd/Ga;->J8:[C

    iget-object v3, p0, Labcd/Ga;->J8:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Labcd/Ga;->J8:[C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Labcd/Ga;->j6([CII)I

    move-result v0

    iget-object v1, p0, Labcd/Ga;->J0:Labcd/qb;

    invoke-virtual {v1, p1, v0}, Labcd/qb;->j6(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public Hw(I)I
    .registers 10

    const-wide v6, -0xaf058df223294bfL    # -7.426070887710036E255

    const/4 v4, -0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    const-wide v2, -0xaf058df223294bfL    # -7.426070887710036E255

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Ga;->we:Labcd/qb;

    invoke-virtual {v0, p1}, Labcd/qb;->DW(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    :goto_0
    return v0

    :cond_1
    :goto_1
    iget-object v0, p0, Labcd/Ga;->J8:[C

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Labcd/Ga;->j6(I[CI)I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v0, p0, Labcd/Ga;->J8:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Ga;->J8:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_4

    :try_start_1
    iget-object v1, p0, Labcd/Ga;->J8:[C

    iget-object v3, p0, Labcd/Ga;->J8:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Labcd/Ga;->J8:[C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Labcd/Ga;->j6([CII)I

    move-result v0

    iget-object v1, p0, Labcd/Ga;->we:Labcd/qb;

    invoke-virtual {v1, p1, v0}, Labcd/qb;->j6(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public j6(III)I
    .registers 14

    const-wide v8, 0x2fe0d6fe8baf967bL    # 4.544735544238169E-78

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x2fe0d6fe8baf967bL    # 4.544735544238169E-78

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/Ga;->Ws:[C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Labcd/Ga;->j6(I[CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Labcd/Ga;->Ws:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Ga;->Ws:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ga;->FH:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Labcd/Ga;->Ws:[C

    sub-int v1, p3, p2

    invoke-virtual {p0, v0, p2, v1}, Labcd/Ga;->j6([CII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0
.end method

.method public j6(I[CI)I
    .registers 16

    const-wide v10, -0x2dfeb0aafa507188L    # -1.0760763820968447E87

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2dfeb0aafa507188L    # -1.0760763820968447E87

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    and-int v0, p1, v8

    if-ne v0, v8, :cond_3

    add-int/lit8 v0, p3, 0x1

    array-length v1, p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-lt v0, v1, :cond_2

    move p3, v6

    :cond_1
    :goto_0
    return p3

    :cond_2
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    int-to-char v1, v1

    aput-char v1, p2, p3

    move p3, v0

    goto :goto_0

    :cond_3
    and-int v0, p1, v9

    if-ne v0, v9, :cond_9

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    move v0, v7

    move v2, v7

    move v1, p1

    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    if-nez v1, :cond_5

    :cond_4
    add-int v0, p3, v2

    :try_start_1
    array-length v1, p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v0, v1, :cond_d

    move p3, v6

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    :try_start_2
    iget-object v5, p0, Labcd/Ga;->EQ:[C

    aget-char v3, v5, v3

    aput-char v3, p2, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v1, v1, 0x1

    :goto_2
    if-ge v1, v2, :cond_7

    and-int/lit8 v3, p1, 0x3f

    if-nez v3, :cond_6

    :cond_7
    move p3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v1

    :goto_3
    move-object v1, v0

    move p1, v2

    :goto_4
    sget-boolean v0, Labcd/Ga;->FH:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :cond_9
    move v0, p1

    :goto_5
    :try_start_3
    iget v1, p0, Labcd/Ga;->u7:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Labcd/Ga;->gn:[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    :try_start_4
    array-length v2, p2

    if-lt p3, v2, :cond_a

    move p3, v6

    goto :goto_0

    :cond_a
    shr-int/lit8 v2, v0, 0x4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Malformed input"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Labcd/Ga;->u7:I

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Labcd/Ga;->gn:[B

    aget-byte v1, v3, v1

    iget-object v3, p0, Labcd/Ga;->gn:[B

    aget-byte v3, v3, v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v2, 0x1

    goto :goto_5

    :cond_b
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "End index not on boundary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget v2, p0, Labcd/Ga;->u7:I

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Labcd/Ga;->gn:[B

    aget-byte v2, v2, v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    int-to-char v0, v0

    aput-char v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    :cond_c
    :try_start_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "End index not on boundary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :pswitch_3
    int-to-char v0, v0

    aput-char v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    move v0, v1

    goto :goto_5

    :catch_2
    move-exception v0

    move v1, p1

    move v2, v1

    goto/16 :goto_3

    :cond_d
    move v1, v7

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public j6(Ljava/lang/String;)I
    .registers 6

    const-wide v2, -0x4602e22fc6d8664dL    # -2.2968835797157176E-29

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4602e22fc6d8664dL    # -2.2968835797157176E-29

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;II)I
    .registers 14

    const-wide v8, 0x3f4df8dc5f587de9L    # 9.146762883495671E-4

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3f4df8dc5f587de9L    # 9.146762883495671E-4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Labcd/Ga;->j6([CII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ga;->FH:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6([CII)I
    .registers 14

    const-wide v8, 0x3523bb5a9802da21L    # 1.0300506892404691E-52

    const/4 v7, 0x4

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3523bb5a9802da21L    # 1.0300506892404691E-52

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    if-eq p3, v7, :cond_3

    const/4 v0, 0x5

    if-eq p3, v0, :cond_3

    :cond_1
    if-ge p3, v7, :cond_4

    move v1, p3

    move v2, p2

    move v0, v6

    :goto_0
    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    aget-char v3, p1, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-char v0, p1, p2

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :goto_1
    return v0

    :cond_3
    move v0, v6

    move v1, v6

    :goto_2
    if-ge v0, p3, :cond_8

    add-int v2, p2, v0

    aget-char v2, p1, v2

    :try_start_1
    iget-object v3, p0, Labcd/Ga;->tp:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Labcd/Ga;->tp:[I

    aget v2, v3, v2

    if-eqz v2, :cond_1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    div-int/lit8 v3, p3, 0x4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, p3

    move v2, p2

    move v0, v6

    :goto_3
    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x27

    aget-char v4, p1, v2

    add-int/2addr v0, v4

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    goto :goto_3

    :cond_5
    const v1, 0x7fffffff

    and-int v3, v1, v0

    :try_start_2
    iget-object v1, p0, Labcd/Ga;->Hw:[I

    array-length v4, v1

    iget-object v1, p0, Labcd/Ga;->Hw:[I

    array-length v1, v1

    rem-int v2, v3, v1

    iget-object v1, p0, Labcd/Ga;->Hw:[I

    aget v1, v1, v2

    :goto_4
    if-eqz v1, :cond_7

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Labcd/Ga;->v5:[I

    aget v1, v1, v2

    invoke-direct {p0, v1, p1, p2, p3}, Labcd/Ga;->j6(I[CII)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v4, -0x2

    rem-int v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Ga;->Hw:[I

    array-length v2, v2

    rem-int v2, v1, v2

    iget-object v1, p0, Labcd/Ga;->Hw:[I

    aget v1, v1, v2

    goto :goto_4

    :cond_7
    iget v1, p0, Labcd/Ga;->u7:I

    invoke-direct {p0, v0}, Labcd/Ga;->v5(I)V

    invoke-direct {p0, p1, p2, p3}, Labcd/Ga;->DW([CII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_1

    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ga;->FH:Z

    if-eqz v0, :cond_9

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method

.method public j6(I)Ljava/lang/String;
    .registers 12

    const-wide v8, -0xf11fc8698376fb3L    # -9.542986215287021E235

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x5

    const/4 v0, 0x0

    const/high16 v4, -0x80000000

    :try_start_0
    sget-boolean v1, Labcd/Ga;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xf11fc8698376fb3L    # -9.542986215287021E235

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    and-int v1, p1, v4

    if-ne v1, v4, :cond_1

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    and-int v1, p1, v5

    if-ne v1, v5, :cond_5

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr p1, v1

    const/4 v1, 0x5

    new-array v3, v1, [C

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_2

    and-int/lit8 v4, p1, 0x3f

    if-nez v4, :cond_4

    :cond_2
    new-instance v0, Ljava/lang/String;

    rsub-int/lit8 v2, v1, 0x5

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    rsub-int/lit8 v1, v0, 0x5

    :try_start_1
    iget-object v5, p0, Labcd/Ga;->EQ:[C

    aget-char v4, v5, v4

    aput-char v4, v3, v1

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, p1

    :goto_2
    iget v1, p0, Labcd/Ga;->u7:I

    if-ge v0, v1, :cond_6

    iget-object v3, p0, Labcd/Ga;->gn:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_7

    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    shr-int/lit8 v3, v0, 0x4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Malformed input"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Labcd/Ga;->u7:I

    if-ge v3, v4, :cond_8

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v4, p0, Labcd/Ga;->gn:[B

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    iget-object v1, p0, Labcd/Ga;->gn:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "End index not on boundary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget v3, p0, Labcd/Ga;->u7:I

    if-ge v1, v3, :cond_9

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    iget-object v3, p0, Labcd/Ga;->gn:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v0, v3

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "End index not on boundary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x8da9bd688604ff0L    # -8.621890623788013E265

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ga;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x8da9bd688604ff0L    # -8.621890623788013E265

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Ga;->Zo:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/Ga;->Hw:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Ga;->Hw:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/Ga;->Zo:I

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Labcd/Ga;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method protected j6(Labcd/ec;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x18e255dcfe0c6a60L
    .end annotation

    const-wide v4, 0x5dbe5183c2e77d81L    # 3.6971278748104652E143

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ga;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x5dbe5183c2e77d81L    # 3.6971278748104652E143

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Ga;->VH:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Ga;->Zo:I

    sget-object v1, Labcd/Ga;->j6:[I

    iget v2, p0, Labcd/Ga;->VH:I

    aget v1, v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Ga;->Hw:[I

    sget-object v1, Labcd/Ga;->j6:[I

    iget v2, p0, Labcd/Ga;->VH:I

    aget v1, v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Ga;->v5:[I

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Ga;->Hw:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Ga;->Hw:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Labcd/Ga;->Hw:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Labcd/Ga;->v5:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Ga;->u7:I

    iget v1, p0, Labcd/Ga;->u7:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Labcd/Ga;->gn:[B

    :goto_2
    iget v1, p0, Labcd/Ga;->u7:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Labcd/Ga;->gn:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method protected j6(Labcd/fc;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x73448cdcc36c61b0L
    .end annotation

    const-wide v4, 0xb1fc0045c35cc21L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ga;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xb1fc0045c35cc21L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Ga;->VH:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Ga;->Zo:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Ga;->Hw:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Ga;->Hw:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Labcd/Ga;->Hw:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Labcd/Ga;->v5:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Labcd/Ga;->u7:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    iget v1, p0, Labcd/Ga;->u7:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Labcd/Ga;->gn:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method
