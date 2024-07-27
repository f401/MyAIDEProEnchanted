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
    .registers 4

    const-wide v2, 0x2a09811daeffbf1fL

    const-class v0, Labcd/wc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x2a1a0fff6890db59L    # 7.102274553414731E-106

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2a1a0fff6890db59L    # 7.102274553414731E-106

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/wc;->Hw:[C

    const/4 v0, 0x1

    iput v0, p0, Labcd/wc;->u7:I

    const/4 v0, 0x1

    iput v0, p0, Labcd/wc;->tp:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/wc;->EQ:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/wc;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x2644418976f52440L
    .end annotation

    const-wide v6, -0xc18e6842c85c514L    # -2.067330217076435E250

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc18e6842c85c514L    # -2.067330217076435E250

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/wc;->v5:I

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Labcd/wc;->Hw:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Labcd/wc;->VH:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iget-object v0, p0, Labcd/wc;->Hw:[C

    iget v1, p0, Labcd/wc;->VH:I

    iget-object v2, p0, Labcd/wc;->Hw:[C

    const/4 v3, 0x0

    iget v4, p0, Labcd/wc;->v5:I

    iget v5, p0, Labcd/wc;->VH:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/wc;->v5:I

    iget v1, p0, Labcd/wc;->VH:I

    sub-int/2addr v0, v1

    iput v0, p0, Labcd/wc;->v5:I

    iget v0, p0, Labcd/wc;->Zo:I

    iget v1, p0, Labcd/wc;->VH:I

    sub-int/2addr v0, v1

    iput v0, p0, Labcd/wc;->Zo:I

    iget v0, p0, Labcd/wc;->EQ:I

    iget v1, p0, Labcd/wc;->VH:I

    sub-int/2addr v0, v1

    iput v0, p0, Labcd/wc;->EQ:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/wc;->VH:I

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/wc;->FH:Ljava/io/Reader;

    iget-object v1, p0, Labcd/wc;->Hw:[C

    iget v2, p0, Labcd/wc;->v5:I

    iget-object v3, p0, Labcd/wc;->Hw:[C

    array-length v3, v3

    iget v4, p0, Labcd/wc;->v5:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-eqz v0, :cond_1

    if-gez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/wc;->Ws:Z

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Labcd/wc;->Hw:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/wc;->Hw:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Labcd/wc;->v5:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/wc;->Hw:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wc;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    iget v1, p0, Labcd/wc;->v5:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/wc;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private FH(IZ)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x20650d38646aa3b1L
    .end annotation

    const-wide v2, -0x2f20ec65b26b72d7L    # -3.684783452536081E81

    const v9, 0xfffe

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x2f20ec65b26b72d7L    # -3.684783452536081E81

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/wc;->gn:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Labcd/wc;->VH:I

    add-int/2addr v0, p1

    iget v1, p0, Labcd/wc;->gn:I

    sub-int/2addr v0, v1

    iget v1, p0, Labcd/wc;->v5:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v0, p0, Labcd/wc;->VH:I

    add-int/2addr v0, p1

    iget v1, p0, Labcd/wc;->gn:I

    sub-int/2addr v0, v1

    iget v1, p0, Labcd/wc;->v5:I

    if-gt v0, v1, :cond_c

    iget v1, p0, Labcd/wc;->VH:I

    iget v0, p0, Labcd/wc;->gn:I

    move v4, v1

    :goto_0
    if-ge v0, p1, :cond_7

    iget-object v5, p0, Labcd/wc;->Hw:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v4, 0x1

    aget-char v4, v5, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    if-eq v4, v9, :cond_3

    :try_start_1
    iget v4, p0, Labcd/wc;->u7:I

    if-lez v4, :cond_2

    iget v4, p0, Labcd/wc;->tp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Labcd/wc;->tp:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v1, 0x7

    iget v5, p0, Labcd/wc;->v5:I

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Labcd/wc;->Hw:[C

    aget-char v5, v5, v1

    shl-int/lit8 v5, v5, 0x18

    iget-object v6, p0, Labcd/wc;->Hw:[C

    add-int/lit8 v7, v1, 0x1

    aget-char v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Labcd/wc;->Hw:[C

    add-int/lit8 v7, v1, 0x2

    aget-char v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Labcd/wc;->Hw:[C

    add-int/lit8 v7, v1, 0x3

    aget-char v6, v6, v7

    or-int/2addr v5, v6

    iput v5, p0, Labcd/wc;->u7:I

    iget-object v5, p0, Labcd/wc;->Hw:[C

    add-int/lit8 v6, v1, 0x4

    aget-char v5, v5, v6

    iget-object v6, p0, Labcd/wc;->Hw:[C

    add-int/lit8 v7, v1, 0x5

    aget-char v6, v6, v7

    iget-object v7, p0, Labcd/wc;->Hw:[C

    add-int/lit8 v8, v1, 0x6

    aget-char v7, v7, v8

    iget-object v8, p0, Labcd/wc;->Hw:[C

    aget-char v4, v8, v4

    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v7, 0x8

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Labcd/wc;->tp:I

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incomplete buffer while reading position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/wc;->DW:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_2
    iget v4, p0, Labcd/wc;->u7:I

    if-lez v4, :cond_2

    iget v4, p0, Labcd/wc;->u7:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Labcd/wc;->u7:I

    const/4 v4, 0x1

    iput v4, p0, Labcd/wc;->tp:I

    goto :goto_1

    :cond_7
    iput p1, p0, Labcd/wc;->gn:I

    iput v4, p0, Labcd/wc;->VH:I

    if-eqz p2, :cond_8

    iget v0, p0, Labcd/wc;->we:I

    if-ne v0, p1, :cond_9

    :cond_8
    return-void

    :cond_9
    iput p1, p0, Labcd/wc;->we:I

    iget v0, p0, Labcd/wc;->u7:I

    iput v0, p0, Labcd/wc;->J0:I

    iget v0, p0, Labcd/wc;->tp:I

    iput v0, p0, Labcd/wc;->J8:I

    iget v0, p0, Labcd/wc;->VH:I

    iput v0, p0, Labcd/wc;->EQ:I

    :goto_2
    iget v0, p0, Labcd/wc;->EQ:I

    iget v1, p0, Labcd/wc;->v5:I

    if-lt v0, v1, :cond_a

    iget-boolean v0, p0, Labcd/wc;->Ws:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Labcd/wc;->DW()V

    iget-boolean v0, p0, Labcd/wc;->Ws:Z

    if-nez v0, :cond_8

    :cond_a
    iget-object v0, p0, Labcd/wc;->Hw:[C

    iget v1, p0, Labcd/wc;->EQ:I

    aget-char v0, v0, v1

    if-ne v0, v9, :cond_8

    iget v0, p0, Labcd/wc;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/wc;->EQ:I

    iget v0, p0, Labcd/wc;->EQ:I

    add-int/lit8 v0, v0, 0x7

    iget v1, p0, Labcd/wc;->v5:I

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Labcd/wc;->Hw:[C

    iget v1, p0, Labcd/wc;->EQ:I

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Labcd/wc;->Hw:[C

    iget v4, p0, Labcd/wc;->EQ:I

    add-int/lit8 v4, v4, 0x1

    aget-char v1, v1, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Labcd/wc;->Hw:[C

    iget v4, p0, Labcd/wc;->EQ:I

    add-int/lit8 v4, v4, 0x2

    aget-char v1, v1, v4

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Labcd/wc;->Hw:[C

    iget v4, p0, Labcd/wc;->EQ:I

    add-int/lit8 v4, v4, 0x3

    aget-char v1, v1, v4

    or-int/2addr v0, v1

    iput v0, p0, Labcd/wc;->J0:I

    iget-object v0, p0, Labcd/wc;->Hw:[C

    iget v1, p0, Labcd/wc;->EQ:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Labcd/wc;->Hw:[C

    iget v4, p0, Labcd/wc;->EQ:I

    add-int/lit8 v4, v4, 0x5

    aget-char v1, v1, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Labcd/wc;->Hw:[C

    iget v4, p0, Labcd/wc;->EQ:I

    add-int/lit8 v4, v4, 0x6

    aget-char v1, v1, v4

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Labcd/wc;->Hw:[C

    iget v4, p0, Labcd/wc;->EQ:I

    add-int/lit8 v4, v4, 0x7

    aget-char v1, v1, v4

    or-int/2addr v0, v1

    iput v0, p0, Labcd/wc;->J8:I

    iget v0, p0, Labcd/wc;->EQ:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Labcd/wc;->EQ:I

    goto/16 :goto_2

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incomplete buffer while reading position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to advance to position not yet read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getLine(), getColumn() must be called for monotonically increasing values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method


# virtual methods
.method public DW(IZ)I
    .registers 10

    const-wide v2, 0x233ff7af9cd34978L

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x233ff7af9cd34978L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Labcd/wc;->FH(IZ)V

    if-eqz p2, :cond_1

    iget v0, p0, Labcd/wc;->J0:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Labcd/wc;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/wc;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public close()V
    .registers 5

    const-wide v2, -0x1753253457b05ac8L    # -1.6850907995979804E196

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1753253457b05ac8L    # -1.6850907995979804E196

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/wc;->FH:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(IZ)I
    .registers 10

    const-wide v2, 0xe85a9ce80e0f6a8L    # 1.039628571191973E-238

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0xe85a9ce80e0f6a8L    # 1.039628571191973E-238

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Labcd/wc;->FH(IZ)V

    if-eqz p2, :cond_1

    iget v0, p0, Labcd/wc;->J8:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Labcd/wc;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/wc;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x1775f59ebbe641L

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1775f59ebbe641L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/wc;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/wc;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/io/Reader;)V
    .registers 6

    const-wide v2, 0x6b61d5bd1fc4257L

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6b61d5bd1fc4257L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/wc;->FH:Ljava/io/Reader;

    const/4 v0, 0x0

    iput v0, p0, Labcd/wc;->v5:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/wc;->Zo:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/wc;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/wc;->gn:I

    const/4 v0, 0x1

    iput v0, p0, Labcd/wc;->u7:I

    const/4 v0, 0x1

    iput v0, p0, Labcd/wc;->tp:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/wc;->we:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/wc;->Ws:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public read([CII)I
    .registers 16

    const-wide v10, 0x6229befbac583938L    # 7.413066195383453E164

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Labcd/wc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x6229befbac583938L    # 7.413066195383453E164

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/wc;->Ws:Z

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Labcd/wc;->Zo:I

    iget v1, p0, Labcd/wc;->v5:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Labcd/wc;->DW()V

    iget-boolean v0, p0, Labcd/wc;->Ws:Z

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Labcd/wc;->Hw:[C

    iget v2, p0, Labcd/wc;->Zo:I

    iget v0, p0, Labcd/wc;->Zo:I

    iget v1, p0, Labcd/wc;->v5:I

    iget v3, p0, Labcd/wc;->Zo:I

    sub-int/2addr v1, v3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v0

    move v0, p2

    :goto_1
    if-ge v2, v1, :cond_8

    aget-char v3, v4, v2

    const v5, 0xfffe

    if-eq v3, v5, :cond_4

    aput-char v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x8

    :try_start_1
    iget v3, p0, Labcd/wc;->v5:I

    if-lt v2, v3, :cond_7

    iget v5, p0, Labcd/wc;->v5:I

    const/4 v3, 0x0

    :goto_3
    sub-int v6, v2, v5

    add-int/lit8 v6, v6, 0x1

    if-ge v3, v6, :cond_7

    iget-object v6, p0, Labcd/wc;->FH:Ljava/io/Reader;

    invoke-virtual {v6}, Ljava/io/Reader;->read()I

    move-result v6

    if-ltz v6, :cond_5

    iget v7, p0, Labcd/wc;->v5:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Labcd/wc;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    int-to-char v6, v6

    aput-char v6, v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EOF encountered while reading position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/wc;->DW:Z

    if-eqz v0, :cond_6

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    if-lt v2, v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    :cond_8
    :try_start_3
    iput v1, p0, Labcd/wc;->Zo:I

    if-ne v0, p2, :cond_9

    invoke-virtual {p0, p1, p2, p3}, Labcd/wc;->read([CII)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    goto :goto_0

    :cond_9
    sub-int/2addr v0, p2

    goto/16 :goto_0
.end method
