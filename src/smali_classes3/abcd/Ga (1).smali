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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2ec6f94b589f24d9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2945c02de59c9f6dL  # -6.164759803960882E109

    :try_start_6
    const-class v3, Labcd/Ga;

    const-wide v4, -0x1b21f2239256083L  # -2.501167630706194E300

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Ga;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Ga;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Ga;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3

    :array_2a
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
        0x40000003  # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x365854d5c2718ba0L  # -6.75619474102426E46

    :try_start_6
    sget-boolean v3, Labcd/Ga;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/qb;

    invoke-direct {v3}, Labcd/qb;-><init>()V

    iput-object v3, p0, Labcd/Ga;->we:Labcd/qb;

    new-instance v3, Labcd/qb;

    invoke-direct {v3}, Labcd/qb;-><init>()V

    iput-object v3, p0, Labcd/Ga;->J0:Labcd/qb;

    const/16 v3, 0x64

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/Ga;->J8:[C

    const/16 v3, 0x3e8

    new-array v4, v3, [C

    iput-object v4, p0, Labcd/Ga;->Ws:[C

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/Ga;->QX:[C

    const/4 v3, 0x0

    iput v3, p0, Labcd/Ga;->VH:I

    sget-object v4, Labcd/Ga;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/Ga;->Hw:[I

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Ga;->v5:[I

    iput v3, p0, Labcd/Ga;->Zo:I

    const/16 v4, 0x2710

    new-array v4, v4, [B

    iput-object v4, p0, Labcd/Ga;->gn:[B

    const/4 v4, 0x1

    iput v4, p0, Labcd/Ga;->u7:I

    const/16 v5, 0x7b

    new-array v5, v5, [I

    iput-object v5, p0, Labcd/Ga;->tp:[I

    const/16 v5, 0x61

    :goto_50
    const/16 v6, 0x7a

    if-gt v5, v6, :cond_5d

    iget-object v6, p0, Labcd/Ga;->tp:[I

    aput v4, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_5d
    const/16 v5, 0x41

    :goto_5f
    const/16 v6, 0x5a

    if-gt v5, v6, :cond_6c

    iget-object v6, p0, Labcd/Ga;->tp:[I

    aput v4, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    :cond_6c
    const/16 v5, 0x30

    :goto_6e
    const/16 v6, 0x39

    if-gt v5, v6, :cond_7b

    iget-object v6, p0, Labcd/Ga;->tp:[I

    aput v4, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    :cond_7b
    iget-object v5, p0, Labcd/Ga;->tp:[I

    const/16 v6, 0x5f

    aput v4, v5, v6

    const/16 v4, 0x40

    new-array v4, v4, [C

    iput-object v4, p0, Labcd/Ga;->EQ:[C

    :goto_87
    iget-object v4, p0, Labcd/Ga;->tp:[I

    array-length v5, v4

    if-ge v3, v5, :cond_96

    iget-object v5, p0, Labcd/Ga;->EQ:[C

    aget v4, v4, v3

    int-to-char v6, v3

    aput-char v6, v5, v4
    :try_end_93
    .catchall {:try_start_6 .. :try_end_93} :catchall_97

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_96
    return-void

    :catchall_97
    move-exception v3

    sget-boolean v4, Labcd/Ga;->FH:Z

    if-eqz v4, :cond_9f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9f
    goto :goto_a1

    :goto_a0
    throw v3

    :goto_a1
    goto :goto_a0
.end method

.method private DW()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x24e4b5f7c05a6d4bL
    .end annotation

    const-wide v0, 0x19fed955a5374b78L

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ga;->VH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Ga;->VH:I

    sget-object v3, Labcd/Ga;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_1b
    iget-object v6, p0, Labcd/Ga;->Hw:[I

    array-length v7, v6

    if-ge v5, v7, :cond_42

    aget v6, v6, v5

    if-eqz v6, :cond_3f

    const v7, 0x7fffffff

    and-int/2addr v7, v6

    rem-int v8, v7, v2
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_47

    :goto_2a
    aget v9, v3, v8

    if-eqz v9, :cond_37

    add-int/lit8 v9, v2, -0x2

    :try_start_30
    rem-int v9, v7, v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    rem-int/2addr v8, v2
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_47

    goto :goto_2a

    :cond_37
    aput v6, v3, v8

    :try_start_39
    iget-object v6, p0, Labcd/Ga;->v5:[I

    aget v6, v6, v5

    aput v6, v4, v8

    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_42
    iput-object v3, p0, Labcd/Ga;->Hw:[I

    iput-object v4, p0, Labcd/Ga;->v5:[I
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    goto :goto_51

    :goto_50
    throw v2

    :goto_51
    goto :goto_50
.end method

.method private DW([CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1090f78541eaba73L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xebe25d0ab54ead0L  # -3.632790896735311E237

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    :goto_18
    iget v0, p0, Labcd/Ga;->u7:I

    mul-int/lit8 v1, p3, 0x3

    add-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Labcd/Ga;->gn:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_32

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, v2

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Ga;->gn:[B
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_be

    goto :goto_18

    :cond_32
    add-int v0, p2, p3

    move v2, p2

    :goto_35
    const/16 v3, 0x7f

    if-ge v2, v0, :cond_4e

    aget-char v5, p1, v2

    if-lt v5, v1, :cond_4e

    if-le v5, v3, :cond_40

    goto :goto_4e

    :cond_40
    :try_start_40
    iget-object v3, p0, Labcd/Ga;->gn:[B

    iget v6, p0, Labcd/Ga;->u7:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Labcd/Ga;->u7:I
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_be

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_4e
    :goto_4e
    if-ge v2, v0, :cond_b3

    aget-char v5, p1, v2

    if-lt v5, v1, :cond_62

    if-gt v5, v3, :cond_62

    :try_start_56
    iget-object v6, p0, Labcd/Ga;->gn:[B

    iget v7, p0, Labcd/Ga;->u7:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Labcd/Ga;->u7:I
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_be

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    goto :goto_b0

    :cond_62
    const/16 v6, 0x7ff

    if-le v5, v6, :cond_92

    :try_start_66
    iget-object v6, p0, Labcd/Ga;->gn:[B

    iget v7, p0, Labcd/Ga;->u7:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Labcd/Ga;->u7:I
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_be

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    add-int/lit8 v7, v8, 0x1

    :try_start_79
    iput v7, p0, Labcd/Ga;->u7:I
    :try_end_7b
    .catchall {:try_start_79 .. :try_end_7b} :catchall_be

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    add-int/lit8 v8, v7, 0x1

    :try_start_86
    iput v8, p0, Labcd/Ga;->u7:I
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_be

    shr-int/lit8 v5, v5, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    goto :goto_b0

    :cond_92
    :try_start_92
    iget-object v6, p0, Labcd/Ga;->gn:[B

    iget v7, p0, Labcd/Ga;->u7:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Labcd/Ga;->u7:I
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_be

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    add-int/lit8 v7, v8, 0x1

    :try_start_a5
    iput v7, p0, Labcd/Ga;->u7:I
    :try_end_a7
    .catchall {:try_start_a5 .. :try_end_a7} :catchall_be

    shr-int/lit8 v5, v5, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    :goto_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_b3
    :try_start_b3
    iget-object v0, p0, Labcd/Ga;->gn:[B

    iget v1, p0, Labcd/Ga;->u7:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/Ga;->u7:I
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_be

    aput-byte v4, v0, v1

    return-void

    :catchall_be
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_d8

    const-wide v2, -0xebe25d0ab54ead0L  # -3.632790896735311E237

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d8
    goto :goto_da

    :goto_d9
    throw v0

    :goto_da
    goto :goto_d9
.end method

.method private j6(I[CII)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x30b106e761bc9814L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x17a4c98b937a0c73L  # -4.9662556645872835E194

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_ae

    :cond_1d
    add-int v0, p3, p4

    move v2, p1

    move v1, p3

    :goto_21
    const/16 v3, 0x7f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v0, :cond_3e

    aget-char v6, p2, v1

    if-nez v6, :cond_2c

    return v4

    :cond_2c
    if-lt v6, v5, :cond_3e

    if-le v6, v3, :cond_31

    goto :goto_3e

    :cond_31
    int-to-byte v3, v6

    :try_start_32
    iget-object v5, p0, Labcd/Ga;->gn:[B

    aget-byte v5, v5, v2
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_ae

    if-eq v3, v5, :cond_39

    return v4

    :cond_39
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3e
    :goto_3e
    if-ge v1, v0, :cond_a6

    aget-char v6, p2, v1

    if-nez v6, :cond_45

    return v4

    :cond_45
    if-lt v6, v5, :cond_54

    if-gt v6, v3, :cond_54

    int-to-byte v6, v6

    :try_start_4a
    iget-object v7, p0, Labcd/Ga;->gn:[B

    aget-byte v7, v7, v2

    if-eq v6, v7, :cond_51

    return v4

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    :cond_54
    const/16 v7, 0x7ff

    if-le v6, v7, :cond_84

    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    iget-object v8, p0, Labcd/Ga;->gn:[B
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_ae

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, v8, v2

    if-eq v7, v2, :cond_68

    return v4

    :cond_68
    shr-int/lit8 v2, v6, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, v8, v9

    if-eq v2, v9, :cond_76

    return v4

    :cond_76
    shr-int/lit8 v2, v6, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v8, v7

    if-eq v2, v7, :cond_a2

    return v4

    :cond_84
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    :try_start_8b
    iget-object v8, p0, Labcd/Ga;->gn:[B
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_ae

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, v8, v2

    if-eq v7, v2, :cond_94

    return v4

    :cond_94
    shr-int/lit8 v2, v6, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    add-int/lit8 v6, v9, 0x1

    aget-byte v7, v8, v9

    if-eq v2, v7, :cond_a2

    return v4

    :cond_a2
    move v2, v6

    :goto_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_a6
    :try_start_a6
    iget-object v0, p0, Labcd/Ga;->gn:[B

    aget-byte p1, v0, v2
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_ae

    if-eqz p1, :cond_ad

    return v4

    :cond_ad
    return v5

    :catchall_ae
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_cd

    const-wide v2, -0x17a4c98b937a0c73L  # -4.9662556645872835E194

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cd
    goto :goto_cf

    :goto_ce
    throw v0

    :goto_cf
    goto :goto_ce
.end method

.method private v5(I)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xc2340f79256e38L
    .end annotation

    const-wide v0, 0x5cb6b22bdeea4465L  # 4.223057546629284E138

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Ga;->Hw:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_18
    if-eqz v3, :cond_28

    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/Ga;->Hw:[I

    array-length v6, v3

    rem-int/2addr v4, v6

    aget v3, v3, v4

    goto :goto_18

    :cond_28
    iget-object v2, p0, Labcd/Ga;->Hw:[I

    aput p1, v2, v4

    iget-object v3, p0, Labcd/Ga;->v5:[I

    iget v5, p0, Labcd/Ga;->u7:I

    aput v5, v3, v4

    iget v3, p0, Labcd/Ga;->Zo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Ga;->Zo:I

    mul-int/lit8 v3, v3, 0x2

    array-length v2, v2

    if-le v3, v2, :cond_40

    invoke-direct {p0}, Labcd/Ga;->DW()V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    :cond_40
    return-void

    :catchall_41
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v2

    :goto_50
    goto :goto_4f
.end method


# virtual methods
.method public DW(I)I
    .registers 6

    const-wide v0, -0x220ff948097ded80L  # -3.126869105963953E144

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    :goto_c
    iget-object v2, p0, Labcd/Ga;->Ws:[C

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Labcd/Ga;->j6(I[CI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Labcd/Ga;->Ws:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, p0, Labcd/Ga;->Ws:[C
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_c

    :cond_22
    return v2

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    goto :goto_32

    :goto_31
    throw v2

    :goto_32
    goto :goto_31
.end method

.method public FH(I)I
    .registers 9

    const-wide v0, 0xfadc0341f01088L

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Ga;->J0:Labcd/qb;

    invoke-virtual {v2, p1}, Labcd/qb;->DW(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    return v2

    :cond_16
    :goto_16
    iget-object v2, p0, Labcd/Ga;->J8:[C

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Labcd/Ga;->j6(I[CI)I

    move-result v2

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Labcd/Ga;->J8:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, p0, Labcd/Ga;->J8:[C

    goto :goto_16

    :cond_2b
    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_3b

    iget-object v5, p0, Labcd/Ga;->J8:[C

    aget-char v6, v5, v3

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    aput-char v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3b
    iget-object v3, p0, Labcd/Ga;->J8:[C

    invoke-virtual {p0, v3, v4, v2}, Labcd/Ga;->j6([CII)I

    move-result v2

    iget-object v3, p0, Labcd/Ga;->J0:Labcd/qb;

    invoke-virtual {v3, p1, v2}, Labcd/qb;->j6(II)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    return v2

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_54

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v2

    :goto_56
    goto :goto_55
.end method

.method public Hw(I)I
    .registers 9

    const-wide v0, -0xaf058df223294bfL  # -7.426070887710036E255

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Ga;->we:Labcd/qb;

    invoke-virtual {v2, p1}, Labcd/qb;->DW(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    return v2

    :cond_16
    :goto_16
    iget-object v2, p0, Labcd/Ga;->J8:[C

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Labcd/Ga;->j6(I[CI)I

    move-result v2

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Labcd/Ga;->J8:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, p0, Labcd/Ga;->J8:[C

    goto :goto_16

    :cond_2b
    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_3b

    iget-object v5, p0, Labcd/Ga;->J8:[C

    aget-char v6, v5, v3

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    aput-char v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3b
    iget-object v3, p0, Labcd/Ga;->J8:[C

    invoke-virtual {p0, v3, v4, v2}, Labcd/Ga;->j6([CII)I

    move-result v2

    iget-object v3, p0, Labcd/Ga;->we:Labcd/qb;

    invoke-virtual {v3, p1, v2}, Labcd/qb;->j6(II)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    return v2

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_54

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v2

    :goto_56
    goto :goto_55
.end method

.method public j6(III)I
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2fe0d6fe8baf967bL  # 4.544735544238169E-78

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Labcd/Ga;->Ws:[C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Labcd/Ga;->j6(I[CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Labcd/Ga;->Ws:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Ga;->Ws:[C

    goto :goto_1c

    :cond_32
    iget-object v0, p0, Labcd/Ga;->Ws:[C

    sub-int v1, p3, p2

    invoke-virtual {p0, v0, p2, v1}, Labcd/Ga;->j6([CII)I

    move-result p1
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    return p1

    :catchall_3b
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_59

    const-wide v2, 0x2fe0d6fe8baf967bL  # 4.544735544238169E-78

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method public j6(I[CI)I
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2dfeb0aafa507188L  # -1.0760763820968447E87

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v0, :cond_2d

    add-int/lit8 v0, p3, 0x1

    array-length v1, p2
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_d8

    if-lt v0, v1, :cond_25

    return v2

    :cond_25
    const v1, 0x7fffffff

    and-int/2addr p1, v1

    int-to-char p1, p1

    aput-char p1, p2, p3

    return v0

    :cond_2d
    const/high16 v0, 0x40000000  # 2.0f

    and-int v1, p1, v0

    const/4 v3, 0x0

    if-ne v1, v0, :cond_6a

    const v0, -0x40000001  # -1.9999999f

    and-int/2addr p1, v0

    move v1, p1

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_3b
    const/4 v5, 0x5

    if-ge v0, v5, :cond_48

    if-nez v1, :cond_41

    goto :goto_48

    :cond_41
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_48
    :goto_48
    add-int v0, p3, v4

    :try_start_4a
    array-length v1, p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_65

    if-lt v0, v1, :cond_4e

    return v2

    :cond_4e
    :goto_4e
    if-ge v3, v4, :cond_64

    and-int/lit8 v1, p1, 0x3f

    if-nez v1, :cond_55

    goto :goto_64

    :cond_55
    sub-int v2, v0, v3

    add-int/lit8 v2, v2, -0x1

    :try_start_59
    iget-object v5, p0, Labcd/Ga;->EQ:[C

    aget-char v1, v5, v1

    aput-char v1, p2, v2

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_64
    :goto_64
    return v0

    :catchall_65
    move-exception p1

    move-object v0, p1

    move p1, v1

    goto/16 :goto_d9

    :cond_6a
    move v0, p1

    :goto_6b
    iget v1, p0, Labcd/Ga;->u7:I

    if-ge v0, v1, :cond_d7

    iget-object v4, p0, Labcd/Ga;->gn:[B
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_d8

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_7a

    goto :goto_d7

    :cond_7a
    :try_start_7a
    array-length v6, p2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_d8

    if-lt p3, v6, :cond_7e

    return v2

    :cond_7e
    shr-int/lit8 v6, v0, 0x4

    const-string v7, "End index not on boundary"

    packed-switch v6, :pswitch_data_f6

    :pswitch_85  #0x8, 0x9, 0xa, 0xb
    goto :goto_cf

    :pswitch_86  #0xe
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v1, :cond_a7

    :try_start_8a
    aget-byte v1, v4, v5

    aget-byte v4, v4, v6
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_d8

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    and-int/lit16 v1, v4, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v6, 0x1

    goto :goto_6b

    :cond_a7
    :try_start_a7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_ad  #0xc, 0xd
    if-ge v5, v1, :cond_c2

    aget-byte v1, v4, v5
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_d8

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v5, 0x1

    goto :goto_6b

    :cond_c2
    :try_start_c2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c8
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_d8

    :pswitch_c8  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    int-to-char v0, v0

    aput-char v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    move v0, v5

    goto :goto_6b

    :goto_cf
    :try_start_cf
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Malformed input"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d7
    .catchall {:try_start_cf .. :try_end_d7} :catchall_d8

    :cond_d7
    :goto_d7
    return p3

    :catchall_d8
    move-exception v0

    :goto_d9
    move-object v7, v0

    sget-boolean v0, Labcd/Ga;->FH:Z

    if-eqz v0, :cond_f3

    const-wide v1, -0x2dfeb0aafa507188L  # -1.0760763820968447E87

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v7

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f3
    goto :goto_f5

    :goto_f4
    throw v7

    :goto_f5
    goto :goto_f4

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_c8  #00000000
        :pswitch_c8  #00000001
        :pswitch_c8  #00000002
        :pswitch_c8  #00000003
        :pswitch_c8  #00000004
        :pswitch_c8  #00000005
        :pswitch_c8  #00000006
        :pswitch_c8  #00000007
        :pswitch_85  #00000008
        :pswitch_85  #00000009
        :pswitch_85  #0000000a
        :pswitch_85  #0000000b
        :pswitch_ad  #0000000c
        :pswitch_ad  #0000000d
        :pswitch_86  #0000000e
    .end packed-switch
.end method

.method public j6(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0x4602e22fc6d8664dL  # -2.2968835797157176E-29

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Labcd/Ga;->j6(Ljava/lang/String;II)I

    move-result p1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6(Ljava/lang/String;II)I
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3f4df8dc5f587de9L  # 9.146762883495671E-4

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Labcd/Ga;->j6([CII)I

    move-result p1
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return p1

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x3f4df8dc5f587de9L  # 9.146762883495671E-4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public j6([CII)I
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Ga;->DW:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3523bb5a9802da21L  # 1.0300506892404691E-52

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_9b

    :cond_18
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_31

    if-eq p3, v2, :cond_2b

    if-eq p3, v0, :cond_31

    const/4 v4, 0x3

    if-eq p3, v4, :cond_31

    if-eq p3, v1, :cond_31

    const/4 v4, 0x5

    if-eq p3, v4, :cond_31

    goto :goto_43

    :cond_2b
    aget-char p1, p1, p2

    const/high16 p2, -0x80000000

    or-int/2addr p1, p2

    return p1

    :cond_31
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_33
    if-ge v4, p3, :cond_97

    add-int v6, p2, v4

    aget-char v6, p1, v6

    :try_start_39
    iget-object v7, p0, Labcd/Ga;->tp:[I

    array-length v8, v7

    if-lt v6, v8, :cond_3f

    goto :goto_43

    :cond_3f
    aget v6, v7, v6
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_9b

    if-nez v6, :cond_91

    :goto_43
    if-ge p3, v1, :cond_52

    move v4, p2

    move v1, p3

    :goto_47
    if-lez v1, :cond_60

    mul-int/lit8 v3, v3, 0x25

    aget-char v5, p1, v4

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v4, v2

    goto :goto_47

    :cond_52
    :try_start_52
    div-int/lit8 v1, p3, 0x4
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_9b

    move v5, p2

    move v4, p3

    :goto_56
    if-lez v4, :cond_60

    mul-int/lit8 v3, v3, 0x27

    aget-char v6, p1, v5

    add-int/2addr v3, v6

    sub-int/2addr v4, v1

    add-int/2addr v5, v1

    goto :goto_56

    :cond_60
    const v1, 0x7fffffff

    and-int/2addr v1, v3

    :try_start_64
    iget-object v4, p0, Labcd/Ga;->Hw:[I

    array-length v5, v4

    array-length v6, v4

    rem-int v6, v1, v6

    aget v4, v4, v6

    :goto_6c
    if-eqz v4, :cond_88

    if-ne v4, v3, :cond_7b

    iget-object v4, p0, Labcd/Ga;->v5:[I

    aget v4, v4, v6

    invoke-direct {p0, v4, p1, p2, p3}, Labcd/Ga;->j6(I[CII)Z

    move-result v7

    if-eqz v7, :cond_7b

    return v4

    :cond_7b
    add-int/lit8 v4, v5, -0x2

    rem-int v4, v1, v4

    add-int/2addr v4, v2

    add-int/2addr v6, v4

    iget-object v4, p0, Labcd/Ga;->Hw:[I

    array-length v7, v4

    rem-int/2addr v6, v7

    aget v4, v4, v6

    goto :goto_6c

    :cond_88
    iget v0, p0, Labcd/Ga;->u7:I

    invoke-direct {p0, v3}, Labcd/Ga;->v5(I)V

    invoke-direct {p0, p1, p2, p3}, Labcd/Ga;->DW([CII)V
    :try_end_90
    .catchall {:try_start_64 .. :try_end_90} :catchall_9b

    return v0

    :cond_91
    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_97
    const/high16 p1, 0x40000000  # 2.0f

    or-int/2addr p1, v5

    return p1

    :catchall_9b
    move-exception v0

    sget-boolean v1, Labcd/Ga;->FH:Z

    if-eqz v1, :cond_b5

    const-wide v2, 0x3523bb5a9802da21L  # 1.0300506892404691E-52

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b5
    goto :goto_b7

    :goto_b6
    throw v0

    :goto_b7
    goto :goto_b6
.end method

.method public j6(I)Ljava/lang/String;
    .registers 12

    const-wide v0, -0xf11fc8698376fb3L  # -9.542986215287021E235

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/high16 v2, -0x80000000

    and-int v3, p1, v2

    if-ne v3, v2, :cond_1c

    const v2, 0x7fffffff

    and-int/2addr v2, p1

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1c
    const/high16 v2, 0x40000000  # 2.0f

    and-int v3, p1, v2

    const/4 v4, 0x0

    if-ne v3, v2, :cond_49

    const v2, -0x40000001  # -1.9999999f

    and-int/2addr p1, v2

    const/4 v2, 0x5

    new-array v3, v2, [C

    const/4 v5, 0x0

    :goto_2b
    if-ge v4, v2, :cond_41

    and-int/lit8 v6, p1, 0x3f

    if-nez v6, :cond_32

    goto :goto_41

    :cond_32
    add-int/lit8 v5, v5, 0x1

    rsub-int/lit8 v7, v5, 0x5

    iget-object v8, p0, Labcd/Ga;->EQ:[C

    aget-char v6, v8, v6

    aput-char v6, v3, v7

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_41
    :goto_41
    new-instance v2, Ljava/lang/String;

    rsub-int/lit8 v4, v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_49
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v3, p1

    :goto_4f
    iget v5, p0, Labcd/Ga;->u7:I

    if-ge v3, v5, :cond_b4

    iget-object v6, p0, Labcd/Ga;->gn:[B
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_b9

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_5e

    goto :goto_b4

    :cond_5e
    shr-int/lit8 v8, v3, 0x4

    const-string v9, "End index not on boundary"

    packed-switch v8, :pswitch_data_ca

    :pswitch_65  #0x8, 0x9, 0xa, 0xb
    goto :goto_ac

    :pswitch_66  #0xe
    add-int/lit8 v8, v7, 0x1

    if-ge v8, v5, :cond_86

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    :try_start_6e
    aget-byte v5, v6, v7

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    aget-byte v5, v6, v8

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v5, v5, 0x3f

    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v8, 0x1

    goto :goto_4f

    :cond_86
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_8c  #0xc, 0xd
    if-ge v7, v5, :cond_a0

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    aget-byte v5, v6, v7

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v3, v5

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v7, 0x1

    goto :goto_4f

    :cond_a0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_a6  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v7

    goto :goto_4f

    :goto_ac
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Malformed input"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b4
    :goto_b4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b8
    .catchall {:try_start_6e .. :try_end_b8} :catchall_b9

    return-object p1

    :catchall_b9
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_c6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c6
    goto :goto_c8

    :goto_c7
    throw v2

    :goto_c8
    goto :goto_c7

    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a6  #00000000
        :pswitch_a6  #00000001
        :pswitch_a6  #00000002
        :pswitch_a6  #00000003
        :pswitch_a6  #00000004
        :pswitch_a6  #00000005
        :pswitch_a6  #00000006
        :pswitch_a6  #00000007
        :pswitch_65  #00000008
        :pswitch_65  #00000009
        :pswitch_65  #0000000a
        :pswitch_65  #0000000b
        :pswitch_8c  #0000000c
        :pswitch_8c  #0000000d
        :pswitch_66  #0000000e
    .end packed-switch
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x8da9bd688604ff0L  # -8.621890623788013E265

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ga;->Zo:I

    if-lez v2, :cond_1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/Ga;->Hw:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iput v2, p0, Labcd/Ga;->Zo:I

    :cond_1e
    const/4 v2, 0x1

    iput v2, p0, Labcd/Ga;->u7:I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    goto :goto_2c

    :goto_2b
    throw v2

    :goto_2c
    goto :goto_2b
.end method

.method protected j6(Labcd/ec;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x18e255dcfe0c6a60L
    .end annotation

    const-wide v0, 0x5dbe5183c2e77d81L  # 3.6971278748104652E143

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/Ga;->VH:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/Ga;->Zo:I

    sget-object v2, Labcd/Ga;->j6:[I

    iget v3, p0, Labcd/Ga;->VH:I

    aget v2, v2, v3

    new-array v3, v2, [I

    iput-object v3, p0, Labcd/Ga;->Hw:[I

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Ga;->v5:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_28
    iget-object v4, p0, Labcd/Ga;->Hw:[I

    array-length v5, v4

    if-ge v3, v5, :cond_36

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_36
    const/4 v3, 0x0

    :goto_37
    iget-object v4, p0, Labcd/Ga;->Hw:[I

    array-length v4, v4

    if-ge v3, v4, :cond_47

    iget-object v4, p0, Labcd/Ga;->v5:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_47
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Ga;->u7:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    iput-object v3, p0, Labcd/Ga;->gn:[B

    :goto_55
    iget v3, p0, Labcd/Ga;->u7:I

    if-ge v2, v3, :cond_64

    iget-object v3, p0, Labcd/Ga;->gn:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v2
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_65

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_64
    return-void

    :catchall_65
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_6d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    goto :goto_6f

    :goto_6e
    throw v2

    :goto_6f
    goto :goto_6e
.end method

.method protected j6(Labcd/fc;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x73448cdcc36c61b0L
    .end annotation

    const-wide v0, 0xb1fc0045c35cc21L

    :try_start_5
    sget-boolean v2, Labcd/Ga;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ga;->VH:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Ga;->Zo:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    iget-object v4, p0, Labcd/Ga;->Hw:[I

    array-length v5, v4

    if-ge v3, v5, :cond_25

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_25
    const/4 v3, 0x0

    :goto_26
    iget-object v4, p0, Labcd/Ga;->Hw:[I

    array-length v4, v4

    if-ge v3, v4, :cond_35

    iget-object v4, p0, Labcd/Ga;->v5:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_35
    iget v3, p0, Labcd/Ga;->u7:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_3a
    iget v3, p0, Labcd/Ga;->u7:I

    if-ge v2, v3, :cond_48

    iget-object v3, p0, Labcd/Ga;->gn:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_49

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_48
    return-void

    :catchall_49
    move-exception v2

    sget-boolean v3, Labcd/Ga;->FH:Z

    if-eqz v3, :cond_51

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    goto :goto_53

    :goto_52
    throw v2

    :goto_53
    goto :goto_52
.end method
