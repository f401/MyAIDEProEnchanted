.class public final Labcd/wc;
.super Ljava/io/Reader;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0x3624dead769f956dL
    .end annotation
.end field

.field private FH:Ljava/io/Reader;
    .annotation runtime Labcd/ru;
        field = 0x10fc74a9bc1ff4d0L
    .end annotation
.end field

.field private Hw:[C
    .annotation runtime Labcd/ru;
        field = 0x18de2b2cc4954a30L
    .end annotation
.end field

.field private J0:I
    .annotation runtime Labcd/ru;
        field = -0x6667751530772ba8L
    .end annotation
.end field

.field private J8:I
    .annotation runtime Labcd/ru;
        field = 0x90ca8b20916a48L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x1d8c79aef302a0e5L
    .end annotation
.end field

.field private Ws:Z
    .annotation runtime Labcd/ru;
        field = -0x39de0d334bc13187L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = -0x3c39a37fe6a30a80L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x1d9ca9e77a1cb378L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x1840f7dfc70d1d00L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x2d7b9ff6d057f5f4L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x384fabc0da2f6bffL
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = 0x49c08af19fd900L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/wc;

    const-wide v1, 0x2a09811daeffbf1fL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2a1a0fff6890db59L  # 7.102274553414731E-106

    :try_start_6
    sget-boolean v3, Labcd/wc;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/16 v3, 0x4000

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/wc;->Hw:[C

    const/4 v3, 0x1

    iput v3, p0, Labcd/wc;->u7:I

    iput v3, p0, Labcd/wc;->tp:I

    const/4 v3, -0x1

    iput v3, p0, Labcd/wc;->EQ:I

    iput v3, p0, Labcd/wc;->we:I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/wc;->DW:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method private DW()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2644418976f52440L
    .end annotation

    const-wide v0, -0xc18e6842c85c514L  # -2.067330217076435E250

    :try_start_5
    sget-boolean v2, Labcd/wc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/wc;->v5:I

    add-int/lit8 v3, v2, 0xa

    iget-object v4, p0, Labcd/wc;->Hw:[C

    array-length v5, v4

    const/16 v6, 0xa

    if-lt v3, v5, :cond_3e

    iget v3, p0, Labcd/wc;->VH:I

    const/4 v5, 0x0

    if-le v3, v6, :cond_34

    sub-int/2addr v2, v3

    invoke-static {v4, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/wc;->v5:I

    iget v3, p0, Labcd/wc;->VH:I

    sub-int/2addr v2, v3

    iput v2, p0, Labcd/wc;->v5:I

    iget v2, p0, Labcd/wc;->Zo:I

    sub-int/2addr v2, v3

    iput v2, p0, Labcd/wc;->Zo:I

    iget v2, p0, Labcd/wc;->EQ:I

    sub-int/2addr v2, v3

    iput v2, p0, Labcd/wc;->EQ:I

    iput v5, p0, Labcd/wc;->VH:I

    goto :goto_3e

    :cond_34
    array-length v3, v4

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/wc;->Hw:[C

    :cond_3e
    :goto_3e
    iget-object v2, p0, Labcd/wc;->FH:Ljava/io/Reader;

    iget-object v3, p0, Labcd/wc;->Hw:[C

    iget v4, p0, Labcd/wc;->v5:I

    array-length v5, v3

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-eqz v2, :cond_3e

    if-gez v2, :cond_53

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/wc;->Ws:Z

    return-void

    :cond_53
    iget v3, p0, Labcd/wc;->v5:I

    add-int/2addr v3, v2

    iput v3, p0, Labcd/wc;->v5:I
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    return-void

    :catchall_59
    move-exception v2

    sget-boolean v3, Labcd/wc;->DW:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_61
    goto :goto_63

    :goto_62
    throw v2

    :goto_63
    goto :goto_62
.end method

.method private FH(IZ)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x20650d38646aa3b1L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x2f20ec65b26b72d7L  # -3.684783452536081E81

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget v0, p0, Labcd/wc;->gn:I

    if-lt p1, v0, :cond_11e

    iget v1, p0, Labcd/wc;->VH:I

    add-int v2, v1, p1

    sub-int/2addr v2, v0

    iget v3, p0, Labcd/wc;->v5:I
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_126

    add-int/lit8 v4, v3, 0x1

    if-ne v2, v4, :cond_27

    add-int/lit8 p1, p1, -0x1

    :cond_27
    add-int v2, v1, p1

    sub-int/2addr v2, v0

    if-gt v2, v3, :cond_116

    :goto_2c
    const-string v2, "Incomplete buffer while reading position"

    const v3, 0xfffe

    if-ge v0, p1, :cond_9a

    :try_start_33
    iget-object v4, p0, Labcd/wc;->Hw:[C
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_126

    add-int/lit8 v5, v1, 0x1

    aget-char v1, v4, v1

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-eq v1, v6, :cond_8d

    if-eq v1, v3, :cond_4a

    :try_start_40
    iget v1, p0, Labcd/wc;->u7:I

    if-lez v1, :cond_97

    iget v1, p0, Labcd/wc;->tp:I

    add-int/2addr v1, v7

    iput v1, p0, Labcd/wc;->tp:I

    goto :goto_97

    :cond_4a
    add-int/lit8 v1, v5, 0x7

    iget v3, p0, Labcd/wc;->v5:I

    if-ge v1, v3, :cond_87

    aget-char v2, v4, v5

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v5, 0x1

    aget-char v3, v4, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v5, 0x2

    aget-char v3, v4, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v5, 0x3

    aget-char v3, v4, v3

    or-int/2addr v2, v3

    iput v2, p0, Labcd/wc;->u7:I

    add-int/lit8 v2, v5, 0x4

    aget-char v2, v4, v2

    add-int/lit8 v3, v5, 0x5

    aget-char v3, v4, v3

    add-int/lit8 v6, v5, 0x6

    aget-char v6, v4, v6

    aget-char v1, v4, v1

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v6, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Labcd/wc;->tp:I

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_97

    :cond_87
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    iget v1, p0, Labcd/wc;->u7:I

    if-lez v1, :cond_97

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/wc;->u7:I

    iput v7, p0, Labcd/wc;->tp:I

    :cond_97
    :goto_97
    move v1, v5

    add-int/2addr v0, v7

    goto :goto_2c

    :cond_9a
    iput p1, p0, Labcd/wc;->gn:I

    iput v1, p0, Labcd/wc;->VH:I

    if-eqz p2, :cond_115

    iget v0, p0, Labcd/wc;->we:I

    if-ne v0, p1, :cond_a5

    return-void

    :cond_a5
    iput p1, p0, Labcd/wc;->we:I

    iget v0, p0, Labcd/wc;->u7:I

    iput v0, p0, Labcd/wc;->J0:I

    iget v0, p0, Labcd/wc;->tp:I

    iput v0, p0, Labcd/wc;->J8:I

    iput v1, p0, Labcd/wc;->EQ:I

    :goto_b1
    iget v0, p0, Labcd/wc;->EQ:I

    iget v1, p0, Labcd/wc;->v5:I

    if-lt v0, v1, :cond_c4

    iget-boolean v0, p0, Labcd/wc;->Ws:Z

    if-eqz v0, :cond_bc

    return-void

    :cond_bc
    invoke-direct {p0}, Labcd/wc;->DW()V

    iget-boolean v0, p0, Labcd/wc;->Ws:Z

    if-eqz v0, :cond_c4

    return-void

    :cond_c4
    iget-object v0, p0, Labcd/wc;->Hw:[C

    iget v1, p0, Labcd/wc;->EQ:I

    aget-char v4, v0, v1

    if-ne v4, v3, :cond_115

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/wc;->EQ:I

    add-int/lit8 v4, v1, 0x7

    iget v5, p0, Labcd/wc;->v5:I

    if-ge v4, v5, :cond_10f

    aget-char v4, v0, v1

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v1, 0x1

    aget-char v5, v0, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x3

    aget-char v5, v0, v5

    or-int/2addr v4, v5

    iput v4, p0, Labcd/wc;->J0:I

    add-int/lit8 v4, v1, 0x4

    aget-char v4, v0, v4

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v1, 0x5

    aget-char v5, v0, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x6

    aget-char v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x7

    aget-char v0, v0, v5

    or-int/2addr v0, v4

    iput v0, p0, Labcd/wc;->J8:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Labcd/wc;->EQ:I

    goto :goto_b1

    :cond_10f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_115
    return-void

    :cond_116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to advance to position not yet read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getLine(), getColumn() must be called for monotonically increasing values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_126
    .catchall {:try_start_40 .. :try_end_126} :catchall_126

    :catchall_126
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/wc;->DW:Z

    if-eqz v0, :cond_140

    const-wide v1, -0x2f20ec65b26b72d7L  # -3.684783452536081E81

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_140
    goto :goto_142

    :goto_141
    throw v6

    :goto_142
    goto :goto_141
.end method


# virtual methods
.method public DW(IZ)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x233ff7af9cd34978L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0, p1, p2}, Labcd/wc;->FH(IZ)V

    if-eqz p2, :cond_1e

    iget p1, p0, Labcd/wc;->J0:I

    goto :goto_20

    :cond_1e
    iget p1, p0, Labcd/wc;->u7:I
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    :goto_20
    return p1

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/wc;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x233ff7af9cd34978L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public close()V
    .registers 5

    const-wide v0, -0x1753253457b05ac8L  # -1.6850907995979804E196

    :try_start_5
    sget-boolean v2, Labcd/wc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Labcd/wc;->FH:Ljava/io/Reader;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/wc;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(IZ)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0xe85a9ce80e0f6a8L  # 1.039628571191973E-238

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0, p1, p2}, Labcd/wc;->FH(IZ)V

    if-eqz p2, :cond_1e

    iget p1, p0, Labcd/wc;->J8:I

    goto :goto_20

    :cond_1e
    iget p1, p0, Labcd/wc;->tp:I
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    :goto_20
    return p1

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/wc;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0xe85a9ce80e0f6a8L  # 1.039628571191973E-238

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x1775f59ebbe641L

    :try_start_5
    sget-boolean v2, Labcd/wc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/wc;->u7:I

    iput v2, p0, Labcd/wc;->tp:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/wc;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Ljava/io/Reader;)V
    .registers 6

    const-wide v0, 0x6b61d5bd1fc4257L

    :try_start_5
    sget-boolean v2, Labcd/wc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/wc;->FH:Ljava/io/Reader;

    const/4 v2, 0x0

    iput v2, p0, Labcd/wc;->v5:I

    iput v2, p0, Labcd/wc;->Zo:I

    iput v2, p0, Labcd/wc;->VH:I

    iput v2, p0, Labcd/wc;->gn:I

    const/4 v3, 0x1

    iput v3, p0, Labcd/wc;->u7:I

    iput v3, p0, Labcd/wc;->tp:I

    const/4 v3, -0x1

    iput v3, p0, Labcd/wc;->we:I

    iput-boolean v2, p0, Labcd/wc;->Ws:Z
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/wc;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public read([CII)I
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x6229befbac583938L  # 7.413066195383453E164

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-boolean v0, p0, Labcd/wc;->Ws:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    iget v0, p0, Labcd/wc;->Zo:I

    iget v2, p0, Labcd/wc;->v5:I

    if-ne v0, v2, :cond_2c

    invoke-direct {p0}, Labcd/wc;->DW()V

    iget-boolean v0, p0, Labcd/wc;->Ws:Z

    if-eqz v0, :cond_2c

    return v1

    :cond_2c
    iget-object v0, p0, Labcd/wc;->Hw:[C

    iget v1, p0, Labcd/wc;->Zo:I

    iget v2, p0, Labcd/wc;->v5:I

    sub-int/2addr v2, v1

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_82

    add-int/2addr v2, v1

    move v3, p2

    :goto_39
    if-ge v1, v2, :cond_77

    aget-char v4, v0, v1

    const v5, 0xfffe

    if-eq v4, v5, :cond_47

    aput-char v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_47
    add-int/lit8 v1, v1, 0x8

    :try_start_49
    iget v4, p0, Labcd/wc;->v5:I

    if-lt v1, v4, :cond_70

    const/4 v5, 0x0

    :goto_4e
    sub-int v6, v1, v4

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_70

    iget-object v6, p0, Labcd/wc;->FH:Ljava/io/Reader;

    invoke-virtual {v6}, Ljava/io/Reader;->read()I

    move-result v6

    if-ltz v6, :cond_68

    iget v7, p0, Labcd/wc;->v5:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Labcd/wc;->v5:I
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_82

    int-to-char v6, v6

    aput-char v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_68
    :try_start_68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EOF encountered while reading position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    if-lt v1, v2, :cond_74

    add-int/lit8 v2, v1, 0x1

    :cond_74
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_77
    iput v2, p0, Labcd/wc;->Zo:I

    if-ne v3, p2, :cond_80

    invoke-virtual {p0, p1, p2, p3}, Labcd/wc;->read([CII)I

    move-result p1
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_82

    return p1

    :cond_80
    sub-int/2addr v3, p2

    return v3

    :catchall_82
    move-exception v0

    sget-boolean v1, Labcd/wc;->DW:Z

    if-eqz v1, :cond_9c

    const-wide v2, 0x6229befbac583938L  # 7.413066195383453E164

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9c
    goto :goto_9e

    :goto_9d
    throw v0

    :goto_9e
    goto :goto_9d
.end method
