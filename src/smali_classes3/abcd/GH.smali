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
    .registers 8

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/GH;->Hw:[B

    iput-object p1, p0, Labcd/GH;->j6:Ljava/io/InputStream;

    array-length p1, v0

    invoke-direct {p0, p1}, Labcd/GH;->j6(I)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_14
    iget-object v1, p0, Labcd/GH;->Hw:[B

    iget v2, p0, Labcd/GH;->v5:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/GH;->v5:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-wide v2, p0, Labcd/GH;->DW:J

    and-int/lit8 v4, v1, 0x7f

    shl-int/2addr v4, v0

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Labcd/GH;->DW:J

    add-int/lit8 v0, v0, 0x7

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_14

    :cond_2f
    iget-object v0, p0, Labcd/GH;->Hw:[B

    iget v1, p0, Labcd/GH;->v5:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/GH;->v5:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-wide v1, p0, Labcd/GH;->FH:J

    and-int/lit8 v3, v0, 0x7f

    shl-int/2addr v3, p1

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Labcd/GH;->FH:J

    add-int/lit8 p1, p1, 0x7

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2f

    invoke-direct {p0}, Labcd/GH;->v5()I

    move-result p1

    iput p1, p0, Labcd/GH;->u7:I

    return-void

    :cond_51
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_58

    :goto_57
    throw p1

    :goto_58
    goto :goto_57
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

    if-nez v0, :cond_28

    invoke-virtual {p0}, Labcd/GH;->FH()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    invoke-virtual {p0}, Labcd/GH;->j6()J

    move-result-wide v0

    iget-wide v2, p0, Labcd/GH;->DW:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    iget-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    :goto_16
    iget-wide v1, p0, Labcd/GH;->tp:J

    invoke-static {v0, v1, v2}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    goto :goto_34

    :cond_1c
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->baseLengthIncorrect:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-wide v1, p0, Labcd/GH;->gn:J

    iget-wide v3, p0, Labcd/GH;->tp:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_39

    sub-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    :goto_34
    iget-wide v0, p0, Labcd/GH;->tp:J

    iput-wide v0, p0, Labcd/GH;->gn:J

    goto :goto_47

    :cond_39
    cmp-long v5, v1, v3

    if-lez v5, :cond_47

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Labcd/GH;->FH()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    goto :goto_16

    :cond_47
    :goto_47
    return-void
.end method

.method private j6(I)Z
    .registers 8

    invoke-direct {p0}, Labcd/GH;->Hw()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    if-nez v0, :cond_10

    iput v2, p0, Labcd/GH;->v5:I

    iput v2, p0, Labcd/GH;->Zo:I

    goto :goto_1f

    :cond_10
    iget-object v3, p0, Labcd/GH;->Hw:[B

    array-length v4, v3

    iget v5, p0, Labcd/GH;->v5:I

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_1f

    invoke-static {v3, v5, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Labcd/GH;->v5:I

    iput v0, p0, Labcd/GH;->Zo:I

    :cond_1f
    :goto_1f
    iget-object p1, p0, Labcd/GH;->j6:Ljava/io/InputStream;

    iget-object v0, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->Zo:I

    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_35

    invoke-direct {p0}, Labcd/GH;->Hw()I

    move-result p1

    if-lez p1, :cond_34

    return v1

    :cond_34
    return v2

    :cond_35
    iget v0, p0, Labcd/GH;->Zo:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/GH;->Zo:I

    iget-object p1, p0, Labcd/GH;->Hw:[B

    array-length p1, p1

    if-lt v0, p1, :cond_1f

    return v1
.end method

.method private v5()I
    .registers 8

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Labcd/GH;->j6(I)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x2

    return v0

    :cond_a
    iget-object v1, p0, Labcd/GH;->Hw:[B

    iget v2, p0, Labcd/GH;->v5:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/GH;->v5:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_b4

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Labcd/GH;->tp:J

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_2d

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/GH;->v5:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    iput-wide v3, p0, Labcd/GH;->tp:J

    :cond_2d
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_42

    iget-wide v3, p0, Labcd/GH;->tp:J

    iget v5, p0, Labcd/GH;->v5:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Labcd/GH;->v5:I

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v0

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Labcd/GH;->tp:J

    :cond_42
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_58

    iget-wide v3, p0, Labcd/GH;->tp:J

    iget v5, p0, Labcd/GH;->v5:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Labcd/GH;->v5:I

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Labcd/GH;->tp:J

    :cond_58
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_6e

    iget-wide v3, p0, Labcd/GH;->tp:J

    iget v5, p0, Labcd/GH;->v5:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Labcd/GH;->v5:I

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Labcd/GH;->tp:J

    :cond_6e
    const/4 v3, 0x0

    iput v3, p0, Labcd/GH;->EQ:I

    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_81

    iget v4, p0, Labcd/GH;->v5:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/GH;->v5:I

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Labcd/GH;->EQ:I

    :cond_81
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_96

    iget v4, p0, Labcd/GH;->EQ:I

    iget v5, p0, Labcd/GH;->v5:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Labcd/GH;->v5:I

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x8

    or-int/2addr v0, v4

    iput v0, p0, Labcd/GH;->EQ:I

    :cond_96
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_ab

    iget v0, p0, Labcd/GH;->EQ:I

    iget v2, p0, Labcd/GH;->v5:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Labcd/GH;->v5:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Labcd/GH;->EQ:I

    :cond_ab
    iget v0, p0, Labcd/GH;->EQ:I

    if-nez v0, :cond_b3

    const/high16 v0, 0x10000

    iput v0, p0, Labcd/GH;->EQ:I

    :cond_b3
    return v3

    :cond_b4
    if-eqz v2, :cond_bd

    invoke-direct {p0, v2}, Labcd/GH;->j6(I)Z

    iput v2, p0, Labcd/GH;->EQ:I

    const/4 v0, 0x1

    return v0

    :cond_bd
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

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void
.end method

.method protected abstract j6()J
.end method

.method public read()I
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Labcd/GH;->read([BII)I

    move-result v3

    if-ne v3, v0, :cond_f

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0
.end method

.method public read([BII)I
    .registers 10

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-gtz p3, :cond_4

    return v0

    :cond_4
    iget v1, p0, Labcd/GH;->EQ:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Labcd/GH;->u7:I

    if-eqz v2, :cond_32

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    const/4 p1, 0x2

    if-ne v2, p1, :cond_19

    if-lez v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, -0x1

    :goto_18
    return v0

    :cond_19
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->unsupportedCommand0:Ljava/lang/String;

    invoke-direct {p1, p2}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    iget-object v2, p0, Labcd/GH;->Hw:[B

    iget v3, p0, Labcd/GH;->v5:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/GH;->v5:I

    add-int/2addr v2, v1

    iput v2, p0, Labcd/GH;->v5:I

    goto :goto_45

    :cond_32
    invoke-direct {p0}, Labcd/GH;->Zo()V

    iget-object v2, p0, Labcd/GH;->VH:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_56

    iget-wide v2, p0, Labcd/GH;->tp:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/GH;->tp:J

    iput-wide v2, p0, Labcd/GH;->gn:J

    :goto_45
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v2, p0, Labcd/GH;->EQ:I

    sub-int/2addr v2, v1

    iput v2, p0, Labcd/GH;->EQ:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Labcd/GH;->v5()I

    move-result v1

    iput v1, p0, Labcd/GH;->u7:I

    goto :goto_1

    :cond_56
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->baseLengthIncorrect:Ljava/lang/String;

    invoke-direct {p1, p2}, Labcd/YC;-><init>(Ljava/lang/String;)V

    goto :goto_63

    :goto_62
    throw p1

    :goto_63
    goto :goto_62
.end method

.method public skip(J)J
    .registers 11

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_3
    :goto_3
    cmp-long v4, v0, p1

    if-ltz v4, :cond_8

    return-wide v2

    :cond_8
    iget v4, p0, Labcd/GH;->EQ:I

    int-to-long v4, v4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget v6, p0, Labcd/GH;->u7:I

    if-eqz v6, :cond_2e

    const/4 v7, 0x1

    if-eq v6, v7, :cond_26

    const/4 p1, 0x2

    if-ne v6, p1, :cond_1a

    return-wide v2

    :cond_1a
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->unsupportedCommand0:Ljava/lang/String;

    invoke-direct {p1, p2}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    iget v6, p0, Labcd/GH;->v5:I

    int-to-long v6, v6

    add-long/2addr v6, v4

    long-to-int v7, v6

    iput v7, p0, Labcd/GH;->v5:I

    goto :goto_33

    :cond_2e
    iget-wide v6, p0, Labcd/GH;->tp:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Labcd/GH;->tp:J

    :goto_33
    add-long/2addr v2, v4

    sub-long/2addr p1, v4

    iget v6, p0, Labcd/GH;->EQ:I

    int-to-long v6, v6

    sub-long/2addr v6, v4

    long-to-int v4, v6

    iput v4, p0, Labcd/GH;->EQ:I

    if-nez v4, :cond_3

    invoke-direct {p0}, Labcd/GH;->v5()I

    move-result v4

    iput v4, p0, Labcd/GH;->u7:I

    goto :goto_3
.end method
