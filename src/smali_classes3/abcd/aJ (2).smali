.class Labcd/aJ;
.super Ljava/io/OutputStream;


# instance fields
.field private final DW:[B

.field private FH:I

.field private final j6:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(IILjava/io/OutputStream;)V
    .registers 9

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_5d

    const/16 v2, 0xff

    if-gt p1, v2, :cond_5d

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-le p2, v3, :cond_3f

    const v4, 0xfff0

    if-lt v4, p2, :cond_21

    iput-object p3, p0, Labcd/aJ;->j6:Ljava/io/OutputStream;

    new-array p2, p2, [B

    iput-object p2, p0, Labcd/aJ;->DW:[B

    const/4 p3, 0x4

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    iput v3, p0, Labcd/aJ;->FH:I

    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->packetSizeMustBeAtMost:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {p3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->packetSizeMustBeAtLeast:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {p3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->channelMustBeInRange0_255:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
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

    if-ge v0, v1, :cond_8

    invoke-direct {p0}, Labcd/aJ;->DW()V

    :cond_8
    return-void
.end method

.method public write(I)V
    .registers 5

    iget v0, p0, Labcd/aJ;->FH:I

    iget-object v1, p0, Labcd/aJ;->DW:[B

    array-length v1, v1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Labcd/aJ;->DW()V

    :cond_a
    iget-object v0, p0, Labcd/aJ;->DW:[B

    iget v1, p0, Labcd/aJ;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/aJ;->FH:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([BII)V
    .registers 9

    :goto_0
    if-gtz p3, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Labcd/aJ;->DW:[B

    array-length v1, v0

    iget v2, p0, Labcd/aJ;->FH:I

    sub-int/2addr v1, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_22

    if-ge v1, p3, :cond_22

    array-length v2, v0

    invoke-static {v0, v2}, Labcd/EI;->j6([BI)V

    iget-object v0, p0, Labcd/aJ;->j6:Ljava/io/OutputStream;

    iget-object v2, p0, Labcd/aJ;->DW:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Labcd/aJ;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_22
    if-nez v1, :cond_27

    invoke-direct {p0}, Labcd/aJ;->DW()V

    :cond_27
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
