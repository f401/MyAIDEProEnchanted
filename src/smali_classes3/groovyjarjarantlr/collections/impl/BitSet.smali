.class public Lgroovyjarjarantlr/collections/impl/BitSet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected j6:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [J

    iput-object p1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    return-void
.end method

.method public constructor <init>([J)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    return-void
.end method

.method private static final VH(I)J
    .registers 3

    and-int/lit8 p0, p0, 0x3f

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method private final gn(I)I
    .registers 2

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static final tp(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private u7(I)V
    .registers 5

    new-array v0, p1, [J

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    return-void
.end method

.method public static v5(I)Lgroovyjarjarantlr/collections/impl/BitSet;
    .registers 3

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    add-int/lit8 v1, p0, 0x1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>(I)V

    invoke-virtual {v0, p0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    return-object v0
.end method


# virtual methods
.method public DW(I)V
    .registers 10

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH(I)V

    :cond_c
    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->VH(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public DW(Lgroovyjarjarantlr/collections/impl/BitSet;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    iget-object v2, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v3, v2

    if-ge v0, v3, :cond_1b

    aget-wide v3, v1, v0

    aget-wide v5, v2, v0

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v3, v5

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    return-void
.end method

.method public DW()Z
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_16

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_16
    return v1
.end method

.method public FH(I)V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->gn(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    return-void
.end method

.method public FH()[I
    .registers 5

    invoke-virtual {p0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    iget-object v3, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v1, v3, :cond_1c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_19

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    return-object v0
.end method

.method public Hw(I)Z
    .registers 8

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_b

    return v3

    :cond_b
    aget-wide v0, v1, v0

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->VH(I)J

    move-result-wide v4

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_19

    const/4 v3, 0x1

    :cond_19
    return v3
.end method

.method public Zo(I)V
    .registers 10

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH(I)V

    :cond_c
    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->VH(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, v0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    instance-of v1, p1, Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v1, :cond_55

    check-cast p1, Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    iget-object v2, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    :goto_14
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_27

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v4, v2, v3

    iget-object v2, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v6, v2, v3

    cmp-long v2, v4, v6

    if-eqz v2, :cond_25

    return v0

    :cond_25
    move v2, v3

    goto :goto_14

    :cond_27
    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v3, v2

    const-wide/16 v4, 0x0

    if-le v3, v1, :cond_3e

    array-length p1, v2

    :goto_2f
    add-int/lit8 v2, p1, -0x1

    if-le p1, v1, :cond_53

    iget-object p1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v6, p1, v2

    cmp-long p1, v6, v4

    if-eqz p1, :cond_3c

    return v0

    :cond_3c
    move p1, v2

    goto :goto_2f

    :cond_3e
    iget-object v2, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v3, v2

    if-le v3, v1, :cond_53

    array-length v2, v2

    :goto_44
    add-int/lit8 v3, v2, -0x1

    if-le v2, v1, :cond_53

    iget-object v2, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v6, v2, v3

    cmp-long v2, v6, v4

    if-eqz v2, :cond_51

    return v0

    :cond_51
    move v2, v3

    goto :goto_44

    :cond_53
    const/4 p1, 0x1

    return p1

    :cond_55
    return v0
.end method

.method public j6()I
    .registers 11

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_6
    if-ltz v0, :cond_26

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_23

    const/16 v2, 0x3f

    :goto_14
    if-ltz v2, :cond_23

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v2

    and-long/2addr v7, v3

    cmp-long v9, v7, v5

    if-eqz v9, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_26
    return v1
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-ge v1, v2, :cond_37

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_25
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_37
    return-object v0
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-ge v1, v2, :cond_3b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_25
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2, v1}, Lgroovyjarjarantlr/CharFormatter;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3b
    return-object v0
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
    .registers 7

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    const-string v1, ""

    :goto_a
    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-ge v0, v2, :cond_72

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2c
    invoke-virtual {p2}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    const-string v3, ">"

    if-lt v0, v2, :cond_4c

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<bad element "

    :goto_3e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_47
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    :cond_4c
    invoke-virtual {p2, v0}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5d

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<"

    goto :goto_3e

    :cond_5d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47

    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_72
    return-object v1
.end method

.method public j6(I)V
    .registers 8

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH(I)V

    :cond_c
    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->VH(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public j6(II)V
    .registers 9

    invoke-virtual {p0, p2}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH(I)V

    :goto_3
    if-gt p1, p2, :cond_17

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->VH(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_17
    return-void
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V
    .registers 9

    iget-object v0, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v0

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    if-le v1, v2, :cond_c

    array-length v0, v0

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->u7(I)V

    :cond_c
    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v0, v0

    iget-object v1, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_28

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v5, v4, v0

    or-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ","

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
