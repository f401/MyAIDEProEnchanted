.class public abstract Labcd/GH;
.super Ljava/io/InputStream;


# instance fields
.field private DW:J

.field private EQ:I

.field private FH:J

.field private final Hw:[B

.field private VH:Ljava/io/InputStream;

.field private Zo:I

.field private gn:J

.field private final j6:Ljava/io/InputStream;

.field private tp:J

.field private u7:I

.field private v5:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/GH;->Hw:[B

    iput-object p1, p0, Labcd/GH;->j6:Ljava/io/InputStream;

    iget-object v0, p0, Labcd/GH;->Hw:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Labcd/GH;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :cond_0
    iget-object v2, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->v5:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/GH;->v5:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-wide v4, p0, Labcd/GH;->DW:J

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    int-to-long v6, v3

    or-long/2addr v4, v6

    iput-wide v4, p0, Labcd/GH;->DW:J

    add-int/lit8 v0, v0, 0x7

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    :cond_1
    iget-object v0, p0, Labcd/GH;->Hw:[B

    iget v2, p0, Labcd/GH;->v5:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/GH;->v5:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-wide v2, p0, Labcd/GH;->FH:J

    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v1

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Labcd/GH;->FH:J

    add-int/lit8 v1, v1, 0x7

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    invoke-direct {p0}, Labcd/GH;->v5()I

    move-result v0

    iput v0, p0, Labcd/GH;->u7:I

    return-void

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private Hw()I
    .registers 3

    iget v0, p0, Labcd/GH;->Zo:I

    iget v1, p0, Labcd/GH;->v5:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private Zo()V
    .registers 7

    iget-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/GH;->FH()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    invoke-virtual {p0}, Labcd/GH;->j6()J

    move-result-wide v0

    iget-wide v2, p0, Labcd/GH;->DW:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    iget-wide v2, p0, Labcd/GH;->tp:J

    invoke-static {v0, v2, v3}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    iget-wide v0, p0, Labcd/GH;->tp:J

    iput-wide v0, p0, Labcd/GH;->gn:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->baseLengthIncorrect:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v2, p0, Labcd/GH;->gn:J

    iget-wide v4, p0, Labcd/GH;->tp:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    sub-long v2, v4, v2

    invoke-static {v0, v2, v3}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    iget-wide v0, p0, Labcd/GH;->tp:J

    iput-wide v0, p0, Labcd/GH;->gn:J

    goto :goto_0

    :cond_3
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Labcd/GH;->FH()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    iget-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    iget-wide v2, p0, Labcd/GH;->tp:J

    invoke-static {v0, v2, v3}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    iget-wide v0, p0, Labcd/GH;->tp:J

    iput-wide v0, p0, Labcd/GH;->gn:J

    goto :goto_0
.end method

.method private j6(I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/GH;->Hw()I

    move-result v2

    if-ge p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v2, :cond_3

    iput v1, p0, Labcd/GH;->v5:I

    iput v1, p0, Labcd/GH;->Zo:I

    :cond_2
    :goto_1
    iget-object v2, p0, Labcd/GH;->j6:Ljava/io/InputStream;

    iget-object v3, p0, Labcd/GH;->Hw:[B

    iget v4, p0, Labcd/GH;->Zo:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_4

    invoke-direct {p0}, Labcd/GH;->Hw()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Labcd/GH;->Hw:[B

    array-length v4, v3

    iget v5, p0, Labcd/GH;->v5:I

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_2

    invoke-static {v3, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Labcd/GH;->v5:I

    iput v2, p0, Labcd/GH;->Zo:I

    goto :goto_1

    :cond_4
    iget v3, p0, Labcd/GH;->Zo:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/GH;->Zo:I

    iget v2, p0, Labcd/GH;->Zo:I

    iget-object v3, p0, Labcd/GH;->Hw:[B

    array-length v3, v3

    if-lt v2, v3, :cond_2

    goto :goto_0
.end method

.method private v5()I
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Labcd/GH;->j6(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Labcd/GH;->Hw:[B

    iget v2, p0, Labcd/GH;->v5:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/GH;->v5:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_9

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Labcd/GH;->tp:J

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    iget v3, p0, Labcd/GH;->v5:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/GH;->v5:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    iput-wide v4, p0, Labcd/GH;->tp:J

    :cond_2
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_3

    iget-wide v4, p0, Labcd/GH;->tp:J

    iget-object v1, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->v5:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Labcd/GH;->v5:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v6, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Labcd/GH;->tp:J

    :cond_3
    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_4

    iget-wide v4, p0, Labcd/GH;->tp:J

    iget-object v1, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->v5:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Labcd/GH;->v5:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v6, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Labcd/GH;->tp:J

    :cond_4
    and-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_5

    iget-wide v4, p0, Labcd/GH;->tp:J

    iget-object v1, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->v5:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Labcd/GH;->v5:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v6, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Labcd/GH;->tp:J

    :cond_5
    iput v0, p0, Labcd/GH;->EQ:I

    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_6

    iget-object v1, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->v5:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/GH;->v5:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Labcd/GH;->EQ:I

    :cond_6
    and-int/lit8 v1, v2, 0x20

    if-eqz v1, :cond_7

    iget v1, p0, Labcd/GH;->EQ:I

    iget-object v3, p0, Labcd/GH;->Hw:[B

    iget v4, p0, Labcd/GH;->v5:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/GH;->v5:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iput v1, p0, Labcd/GH;->EQ:I

    :cond_7
    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_8

    iget v1, p0, Labcd/GH;->EQ:I

    iget-object v2, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->v5:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/GH;->v5:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Labcd/GH;->EQ:I

    :cond_8
    iget v1, p0, Labcd/GH;->EQ:I

    if-nez v1, :cond_0

    const/high16 v1, 0x10000

    iput v1, p0, Labcd/GH;->EQ:I

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_a

    invoke-direct {p0, v2}, Labcd/GH;->j6(I)Z

    iput v2, p0, Labcd/GH;->EQ:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedCommand0:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-wide v0, p0, Labcd/GH;->FH:J

    return-wide v0
.end method

.method protected abstract FH()Ljava/io/InputStream;
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/GH;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method protected abstract j6()J
.end method

.method public read()I
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [B

    invoke-virtual {p0, v0, v3, v2}, Labcd/GH;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .registers 10

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-gtz p3, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget v1, p0, Labcd/GH;->EQ:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Labcd/GH;->u7:I

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedCommand0:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->v5:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/GH;->v5:I

    add-int/2addr v2, v1

    iput v2, p0, Labcd/GH;->v5:I

    :goto_2
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v2, p0, Labcd/GH;->EQ:I

    sub-int v1, v2, v1

    iput v1, p0, Labcd/GH;->EQ:I

    iget v1, p0, Labcd/GH;->EQ:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Labcd/GH;->v5()I

    move-result v1

    iput v1, p0, Labcd/GH;->u7:I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Labcd/GH;->Zo()V

    iget-object v2, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_6

    iget-wide v2, p0, Labcd/GH;->tp:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/GH;->tp:J

    iget-wide v2, p0, Labcd/GH;->tp:J

    iput-wide v2, p0, Labcd/GH;->gn:J

    goto :goto_2

    :cond_6
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->baseLengthIncorrect:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 12

    const-wide/16 v2, 0x0

    move-wide v0, v2

    :cond_0
    :goto_0
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    :cond_1
    return-wide v0

    :cond_2
    iget v4, p0, Labcd/GH;->EQ:I

    int-to-long v4, v4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget v6, p0, Labcd/GH;->u7:I

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v2, 0x2

    if-eq v6, v2, :cond_1

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedCommand0:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v6, p0, Labcd/GH;->v5:I

    int-to-long v6, v6

    add-long/2addr v6, v4

    long-to-int v6, v6

    iput v6, p0, Labcd/GH;->v5:I

    :goto_1
    add-long/2addr v0, v4

    sub-long/2addr p1, v4

    iget v6, p0, Labcd/GH;->EQ:I

    int-to-long v6, v6

    sub-long v4, v6, v4

    long-to-int v4, v4

    iput v4, p0, Labcd/GH;->EQ:I

    iget v4, p0, Labcd/GH;->EQ:I

    if-nez v4, :cond_0

    invoke-direct {p0}, Labcd/GH;->v5()I

    move-result v4

    iput v4, p0, Labcd/GH;->u7:I

    goto :goto_0

    :cond_4
    iget-wide v6, p0, Labcd/GH;->tp:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Labcd/GH;->tp:J

    goto :goto_1
.end method
