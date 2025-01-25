.class Labcd/dH;
.super Labcd/bH;


# instance fields
.field private final DW:[J

.field private FH:[[B

.field private Hw:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;[B)V
    .registers 9

    invoke-direct {p0}, Labcd/bH;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    array-length p2, p2

    sub-int/2addr v0, p2

    invoke-static {p1, v1, v2, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/16 p2, 0x100

    new-array p2, p2, [J

    iput-object p2, p0, Labcd/dH;->DW:[J

    const/4 p2, 0x0

    :goto_19
    iget-object v0, p0, Labcd/dH;->DW:[J

    array-length v2, v0

    if-lt p2, v2, :cond_5a

    array-length p2, v0

    new-array p2, p2, [[B

    iput-object p2, p0, Labcd/dH;->FH:[[B

    const/4 p2, 0x0

    :goto_24
    iget-object v0, p0, Labcd/dH;->DW:[J

    array-length v1, v0

    if-lt p2, v1, :cond_3c

    const/16 p2, 0xff

    aget-wide v1, v0, p2

    iput-wide v1, p0, Labcd/dH;->Hw:J

    const/16 p2, 0x14

    new-array p2, p2, [B

    iput-object p2, p0, Labcd/bH;->j6:[B

    iget-object p2, p0, Labcd/bH;->j6:[B

    array-length v0, p2

    invoke-static {p1, p2, v3, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    return-void

    :cond_3c
    if-nez p2, :cond_41

    aget-wide v1, v0, p2

    goto :goto_48

    :cond_41
    aget-wide v1, v0, p2

    add-int/lit8 v4, p2, -0x1

    aget-wide v4, v0, v4

    sub-long/2addr v1, v4

    :goto_48
    long-to-int v0, v1

    if-lez v0, :cond_57

    iget-object v1, p0, Labcd/dH;->FH:[[B

    mul-int/lit8 v0, v0, 0x18

    new-array v0, v0, [B

    aput-object v0, v1, p2

    array-length v1, v0

    invoke-static {p1, v0, v3, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    :cond_57
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_5a
    mul-int/lit8 v2, p2, 0x4

    invoke-static {v1, v2}, Labcd/FK;->FH([BI)J

    move-result-wide v4

    aput-wide v4, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_19
.end method

.method private static Zo(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x18

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static synthetic j6(Labcd/dH;)[[B
    .registers 1

    iget-object p0, p0, Labcd/dH;->FH:[[B

    return-object p0
.end method


# virtual methods
.method public DW()J
    .registers 9

    invoke-virtual {p0}, Labcd/dH;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    return-wide v1

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/bH$b;

    invoke-virtual {v3}, Labcd/bH$b;->j6()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_6
.end method

.method public DW(Labcd/YD;)J
    .registers 11

    invoke-virtual {p1}, Labcd/YD;->Zo()I

    move-result v0

    iget-object v1, p0, Labcd/dH;->FH:[[B

    aget-object v0, v1, v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_d

    return-wide v1

    :cond_d
    array-length v3, v0

    const/16 v4, 0x18

    div-int/2addr v3, v4

    const/4 v5, 0x0

    :cond_12
    add-int v6, v5, v3

    ushr-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Labcd/dH;->Zo(I)I

    move-result v7

    invoke-virtual {p1, v0, v7}, Labcd/YD;->j6([BI)I

    move-result v8

    if-gez v8, :cond_22

    move v3, v6

    goto :goto_4d

    :cond_22
    if-nez v8, :cond_4a

    add-int/lit8 p1, v7, -0x4

    aget-byte p1, v0, p1

    add-int/lit8 v1, v7, -0x3

    aget-byte v1, v0, v1

    add-int/lit8 v2, v7, -0x2

    aget-byte v2, v0, v2

    add-int/lit8 v7, v7, -0x1

    aget-byte v0, v0, v7

    and-int/lit16 p1, p1, 0xff

    int-to-long v5, p1

    and-int/lit16 p1, v1, 0xff

    shl-int/lit8 p1, p1, 0x10

    int-to-long v7, p1

    and-int/lit16 p1, v2, 0xff

    shl-int/lit8 p1, p1, 0x8

    int-to-long v1, p1

    shl-long v3, v5, v4

    or-long/2addr v3, v7

    or-long/2addr v1, v3

    and-int/lit16 p1, v0, 0xff

    int-to-long v3, p1

    or-long/2addr v1, v3

    return-wide v1

    :cond_4a
    add-int/lit8 v6, v6, 0x1

    move v5, v6

    :goto_4d
    if-lt v5, v3, :cond_12

    return-wide v1
.end method

.method public FH()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Labcd/bH$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/dH$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/dH$a;-><init>(Labcd/dH;Labcd/dH$a;)V

    return-object v0
.end method

.method public j6()J
    .registers 3

    iget-wide v0, p0, Labcd/dH;->Hw:J

    return-wide v0
.end method

.method public j6(Labcd/YD;)J
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public j6(J)Labcd/yE;
    .registers 9

    iget-object v0, p0, Labcd/dH;->DW:[J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_1f

    iget-object v1, p0, Labcd/dH;->DW:[J

    aget-wide v2, v1, v0

    :goto_f
    if-lez v0, :cond_22

    iget-object v1, p0, Labcd/dH;->DW:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1c

    goto :goto_22

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    :cond_22
    :goto_22
    if-lez v0, :cond_2b

    iget-object v1, p0, Labcd/dH;->DW:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    goto :goto_2d

    :cond_2b
    const-wide/16 v2, 0x0

    :goto_2d
    sub-long/2addr p1, v2

    long-to-int p2, p1

    invoke-static {p2}, Labcd/dH;->Zo(I)I

    move-result p1

    iget-object p2, p0, Labcd/dH;->FH:[[B

    aget-object p2, p2, v0

    invoke-static {p2, p1}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/util/Set;Labcd/WD;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/dH;->FH:[[B

    invoke-virtual {p2}, Labcd/WD;->j6()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_b

    return-void

    :cond_b
    array-length v1, v0

    div-int/lit8 v1, v1, 0x18

    const/4 v2, 0x0

    move v3, v1

    :cond_10
    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Labcd/dH;->Zo(I)I

    move-result v5

    invoke-virtual {p2, v0, v5}, Labcd/WD;->j6([BI)I

    move-result v5

    if-gez v5, :cond_20

    move v3, v4

    goto :goto_5a

    :cond_20
    if-nez v5, :cond_57

    :goto_22
    if-lez v4, :cond_34

    add-int/lit8 v2, v4, -0x1

    invoke-static {v2}, Labcd/dH;->Zo(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Labcd/WD;->j6([BI)I

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_34

    :cond_31
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    :cond_34
    :goto_34
    if-ge v4, v1, :cond_56

    invoke-static {v4}, Labcd/dH;->Zo(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Labcd/WD;->j6([BI)I

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_56

    :cond_41
    invoke-static {v4}, Labcd/dH;->Zo(I)I

    move-result v2

    invoke-static {v0, v2}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, p3, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_56
    :goto_56
    return-void

    :cond_57
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    :goto_5a
    if-lt v2, v3, :cond_10

    return-void
.end method
