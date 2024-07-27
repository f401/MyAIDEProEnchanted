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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    return-void
.end method

.method public constructor <init>([J)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    return-void
.end method

.method private static final VH(I)J
    .registers 4

    const-wide/16 v0, 0x1

    and-int/lit8 v2, p0, 0x3f

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private final gn(I)I
    .registers 3

    shr-int/lit8 v0, p1, 0x6

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static final tp(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private u7(I)V
    .registers 6

    const/4 v3, 0x0

    new-array v0, p1, [J

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH(I)V

    :cond_0
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
    .registers 10

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-wide v4, v1, v0

    aget-wide v2, v2, v0

    const-wide/16 v6, -0x1

    xor-long/2addr v2, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public DW()Z
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public FH(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->gn(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    return-void
.end method

.method public FH()[I
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6()I

    move-result v0

    new-array v3, v0, [I

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x6

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_0

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public Hw(I)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v1

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v3, v2

    if-lt v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-wide v2, v2, v1

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->VH(I)J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Zo(I)V
    .registers 10

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH(I)V

    :cond_0
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
    .registers 7

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, v0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    const/4 v2, 0x0

    iget-object v3, v0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    const/4 v4, 0x0

    iget-object v5, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v1, :cond_0

    check-cast p1, Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    iget-object v2, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v3

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v4, v1, v2

    iget-object v1, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v6, v1, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v1

    if-le v2, v3, :cond_3

    array-length v1, v1

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v4, v1, v2

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v1

    if-le v2, v3, :cond_4

    array-length v1, v1

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-le v1, v3, :cond_4

    iget-object v1, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v4, v1, v2

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public j6()I
    .registers 11

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v4, v1, v2

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    const/16 v1, 0x3f

    :goto_1
    if-ltz v1, :cond_1

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2, v1}, Lgroovyjarjarantlr/CharFormatter;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
    .registers 6

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p2}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    if-lt v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "<bad element "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public j6(I)V
    .registers 8

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH(I)V

    :cond_0
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

    :goto_0
    if-gt p1, p2, :cond_0

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->tp(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->VH(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V
    .registers 8

    iget-object v0, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v0

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v2, v2

    if-le v1, v2, :cond_0

    array-length v0, v0

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->u7(I)V

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v0, v0

    iget-object v1, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lgroovyjarjarantlr/collections/impl/BitSet;->j6:[J

    aget-wide v4, v4, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ","

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
