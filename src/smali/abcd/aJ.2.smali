.class Labcd/aJ;
.super Ljava/io/OutputStream;


# instance fields
.field private final DW:[B

.field private FH:I

.field private final j6:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(IILjava/io/OutputStream;)V
    .registers 12

    const v7, 0xfff0

    const/4 v2, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-lez p1, :cond_2

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    if-le p2, v6, :cond_1

    if-lt v7, p2, :cond_0

    iput-object p3, p0, Labcd/aJ;->j6:Ljava/io/OutputStream;

    new-array v0, p2, [B

    iput-object v0, p0, Labcd/aJ;->DW:[B

    iget-object v0, p0, Labcd/aJ;->DW:[B

    const/4 v1, 0x4

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iput v6, p0, Labcd/aJ;->FH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packetSizeMustBeAtMost:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packetSizeMustBeAtLeast:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->channelMustBeInRange0_255:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW()V
    .registers 5

    iget-object v0, p0, Labcd/aJ;->DW:[B

    iget v1, p0, Labcd/aJ;->FH:I

    invoke-static {v0, v1}, Labcd/EI;->j6([BI)V

    iget-object v0, p0, Labcd/aJ;->j6:Ljava/io/OutputStream;

    iget-object v1, p0, Labcd/aJ;->DW:[B

    const/4 v2, 0x0

    iget v3, p0, Labcd/aJ;->FH:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    const/4 v0, 0x5

    iput v0, p0, Labcd/aJ;->FH:I

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    invoke-virtual {p0}, Labcd/aJ;->j6()V

    iget-object v0, p0, Labcd/aJ;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method j6()V
    .registers 3

    const/4 v0, 0x5

    iget v1, p0, Labcd/aJ;->FH:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Labcd/aJ;->DW()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .registers 5

    iget v0, p0, Labcd/aJ;->FH:I

    iget-object v1, p0, Labcd/aJ;->DW:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Labcd/aJ;->DW()V

    :cond_0
    iget-object v0, p0, Labcd/aJ;->DW:[B

    iget v1, p0, Labcd/aJ;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/aJ;->FH:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([BII)V
    .registers 9

    const/4 v4, 0x5

    :goto_0
    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Labcd/aJ;->DW:[B

    array-length v1, v0

    iget v2, p0, Labcd/aJ;->FH:I

    sub-int/2addr v1, v2

    if-ne v2, v4, :cond_1

    if-ge v1, p3, :cond_1

    array-length v2, v0

    invoke-static {v0, v2}, Labcd/EI;->j6([BI)V

    iget-object v0, p0, Labcd/aJ;->j6:Ljava/io/OutputStream;

    iget-object v2, p0, Labcd/aJ;->DW:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Labcd/aJ;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Labcd/aJ;->DW()V

    :cond_2
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Labcd/aJ;->DW:[B

    iget v2, p0, Labcd/aJ;->FH:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/aJ;->FH:I

    add-int/2addr v1, v0

    iput v1, p0, Labcd/aJ;->FH:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0
.end method
