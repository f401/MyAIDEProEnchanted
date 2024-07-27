.class Labcd/dH;
.super Labcd/bH;


# instance fields
.field private final DW:[J

.field private FH:[[B

.field private Hw:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;[B)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/bH;-><init>()V

    const/16 v0, 0x400

    new-array v2, v0, [B

    array-length v0, p2

    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    array-length v3, p2

    rsub-int v3, v3, 0x400

    invoke-static {p1, v2, v0, v3}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/16 v0, 0x100

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/dH;->DW:[J

    move v0, v1

    :goto_0
    iget-object v3, p0, Labcd/dH;->DW:[J

    array-length v4, v3

    if-lt v0, v4, :cond_3

    array-length v0, v3

    new-array v0, v0, [[B

    iput-object v0, p0, Labcd/dH;->FH:[[B

    move v0, v1

    :goto_1
    iget-object v2, p0, Labcd/dH;->DW:[J

    array-length v3, v2

    if-lt v0, v3, :cond_0

    const/16 v0, 0xff

    aget-wide v2, v2, v0

    iput-wide v2, p0, Labcd/dH;->Hw:J

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/bH;->j6:[B

    iget-object v0, p0, Labcd/bH;->j6:[B

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    return-void

    :cond_0
    if-nez v0, :cond_2

    aget-wide v2, v2, v0

    :goto_2
    long-to-int v2, v2

    if-lez v2, :cond_1

    iget-object v3, p0, Labcd/dH;->FH:[[B

    mul-int/lit8 v2, v2, 0x18

    new-array v2, v2, [B

    aput-object v2, v3, v0

    aget-object v2, v3, v0

    aget-object v3, v3, v0

    array-length v3, v3

    invoke-static {p1, v2, v1, v3}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-wide v4, v2, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v2, v2, v3

    sub-long v2, v4, v2

    goto :goto_2

    :cond_3
    mul-int/lit8 v4, v0, 0x4

    invoke-static {v2, v4}, Labcd/FK;->FH([BI)J

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static Zo(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x18

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static synthetic j6(Labcd/dH;)[[B
    .registers 2

    iget-object v0, p0, Labcd/dH;->FH:[[B

    return-object v0
.end method


# virtual methods
.method public DW()J
    .registers 9

    invoke-virtual {p0}, Labcd/dH;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bH$b;

    invoke-virtual {v0}, Labcd/bH$b;->j6()J

    move-result-wide v0

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method

.method public DW(Labcd/YD;)J
    .registers 10

    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Labcd/YD;->Zo()I

    move-result v0

    iget-object v1, p0, Labcd/dH;->FH:[[B

    aget-object v5, v1, v0

    if-nez v5, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    array-length v0, v5

    div-int/lit8 v0, v0, 0x18

    const/4 v1, 0x0

    :cond_1
    add-int v4, v1, v0

    ushr-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Labcd/dH;->Zo(I)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Labcd/YD;->j6([BI)I

    move-result v7

    if-gez v7, :cond_2

    move v0, v4

    :goto_1
    if-lt v1, v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    add-int/lit8 v0, v6, -0x4

    aget-byte v0, v5, v0

    add-int/lit8 v1, v6, -0x3

    aget-byte v1, v5, v1

    add-int/lit8 v2, v6, -0x2

    aget-byte v2, v5, v2

    add-int/lit8 v3, v6, -0x1

    aget-byte v3, v5, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x10

    int-to-long v0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v6, v2

    const/16 v2, 0x18

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    or-long/2addr v0, v6

    and-int/lit16 v2, v3, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v4, 0x1

    goto :goto_1
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
            "Ljava/util/Iterator",
            "<",
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
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j6(J)Labcd/yE;
    .registers 10

    iget-object v0, p0, Labcd/dH;->DW:[J

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Labcd/dH;->DW:[J

    aget-wide v2, v1, v0

    :goto_0
    if-lez v0, :cond_3

    iget-object v1, p0, Labcd/dH;->DW:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    move v2, v0

    :goto_1
    if-lez v2, :cond_2

    iget-object v0, p0, Labcd/dH;->DW:[J

    add-int/lit8 v1, v2, -0x1

    aget-wide v0, v0, v1

    :goto_2
    sub-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Labcd/dH;->Zo(I)I

    move-result v0

    iget-object v1, p0, Labcd/dH;->FH:[[B

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    move v2, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public j6(Ljava/util/Set;Labcd/WD;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/dH;->FH:[[B

    invoke-virtual {p2}, Labcd/WD;->j6()I

    move-result v1

    aget-object v4, v0, v1

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, v4

    div-int/lit8 v2, v0, 0x18

    const/4 v0, 0x0

    move v1, v2

    :cond_2
    add-int v3, v0, v1

    ushr-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Labcd/dH;->Zo(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Labcd/WD;->j6([BI)I

    move-result v5

    if-gez v5, :cond_3

    move v1, v3

    :goto_1
    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_3
    if-nez v5, :cond_6

    move v0, v3

    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Labcd/dH;->Zo(I)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Labcd/WD;->j6([BI)I

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_3
    if-ge v0, v2, :cond_0

    invoke-static {v0}, Labcd/dH;->Zo(I)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Labcd/WD;->j6([BI)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Labcd/dH;->Zo(I)I

    move-result v1

    invoke-static {v4, v1}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-gt v1, p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v3, 0x1

    goto :goto_1
.end method
