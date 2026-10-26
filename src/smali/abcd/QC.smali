.class public Labcd/QC;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[B


# instance fields
.field private final DW:[B

.field private final FH:I

.field final Hw:[B

.field private v5:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Labcd/QC;->j6:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/QC;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Labcd/QC;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/QC;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/QC;->j6([B)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_1

    const/4 v0, 0x3

    if-lt v0, p2, :cond_1

    const/16 v0, 0x3e

    new-array v1, v0, [B

    iput-object v1, p0, Labcd/QC;->DW:[B

    iput v4, p0, Labcd/QC;->FH:I

    iput-object p1, p0, Labcd/QC;->Hw:[B

    and-int/lit8 v0, p2, 0x3

    shl-int/lit8 v0, v0, 0xc

    array-length v2, p1

    const/16 v3, 0xfff

    if-ge v2, v3, :cond_0

    array-length v2, p1

    or-int/2addr v0, v2

    :goto_0
    const/16 v2, 0x3c

    invoke-static {v1, v2, v0}, Labcd/FK;->j6([BII)V

    return-void

    :cond_0
    or-int/lit16 v0, v0, 0xfff

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidStageForPath:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Labcd/QC;->DW([B)Ljava/lang/String;

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

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidPath:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Labcd/QC;->DW([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([BLabcd/EK;Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 6

    const/16 v0, 0x3e

    const/4 v2, 0x1

    const/16 v5, 0xfff

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/QC;->DW:[B

    iget v1, p2, Labcd/EK;->j6:I

    iput v1, p0, Labcd/QC;->FH:I

    invoke-static {p3, p1, v1, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {p0}, Labcd/QC;->EQ()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v1, 0x3e

    const/4 v4, 0x2

    invoke-static {p3, p1, v0, v4}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-direct {p0}, Labcd/QC;->QX()I

    move-result v0

    const v4, -0x60000001

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    const/16 v0, 0x40

    :cond_0
    iget v4, p2, Labcd/EK;->j6:I

    add-int/2addr v4, v0

    iput v4, p2, Labcd/EK;->j6:I

    invoke-virtual {p4, p1, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v1, v1, 0x3c

    invoke-static {p1, v1}, Labcd/FK;->DW([BI)I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    if-ge v1, v5, :cond_3

    new-array v2, v1, [B

    iput-object v2, p0, Labcd/QC;->Hw:[B

    invoke-static {p3, v2, v3, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {p4, v2, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    move v2, v3

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x8

    and-int/lit8 v1, v1, -0x8

    sub-int v0, v1, v0

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    int-to-long v4, v0

    invoke-static {p3, v4, v5}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    sget-object v1, Labcd/QC;->j6:[B

    invoke-virtual {p4, v1, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->DIRCUnrecognizedExtendedFlags:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Labcd/QC;->QX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v4, v5, [B

    invoke-static {p3, v4, v3, v5}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_1
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_5

    if-nez v4, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Labcd/QC;->Hw:[B

    array-length v1, v4

    invoke-virtual {p4, v4, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p4, v3}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->shortReadOfBlock:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(I)J
    .locals 6

    iget v0, p0, Labcd/QC;->FH:I

    add-int/2addr v0, p1

    iget-object v1, p0, Labcd/QC;->DW:[B

    invoke-static {v1, v0}, Labcd/FK;->j6([BI)I

    move-result v1

    iget-object v2, p0, Labcd/QC;->DW:[B

    add-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Labcd/FK;->j6([BI)I

    move-result v0

    const v2, 0xf4240

    div-int/2addr v0, v2

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static DW([B)Ljava/lang/String;
    .locals 2

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private QX()I
    .locals 2

    invoke-virtual {p0}, Labcd/QC;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3e

    invoke-static {v0, v1}, Labcd/FK;->DW([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x40

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e

    goto :goto_0
.end method

.method private j6(IJ)V
    .locals 6

    const-wide/16 v4, 0x3e8

    iget v0, p0, Labcd/QC;->FH:I

    add-int/2addr v0, p1

    iget-object v1, p0, Labcd/QC;->DW:[B

    div-long v2, p2, v4

    long-to-int v2, v2

    invoke-static {v1, v0, v2}, Labcd/FK;->DW([BII)V

    iget-object v1, p0, Labcd/QC;->DW:[B

    add-int/lit8 v0, v0, 0x4

    rem-long v2, p2, v4

    long-to-int v2, v2

    const v3, 0xf4240

    mul-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Labcd/FK;->DW([BII)V

    return-void
.end method

.method static j6([B)Z
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    aget-byte v4, p0, v2

    if-eqz v4, :cond_0

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_3

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public DW()J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Labcd/QC;->DW(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public DW(J)V
    .locals 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Labcd/QC;->j6(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->sizeExceeds2GB:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method EQ()Z
    .locals 2

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public FH()I
    .locals 2

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x24

    invoke-static {v0, v1}, Labcd/FK;->j6([BI)I

    move-result v0

    return v0
.end method

.method public Hw()Labcd/yE;
    .locals 2

    invoke-virtual {p0}, Labcd/QC;->gn()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/QC;->u7()I

    move-result v1

    invoke-static {v0, v1}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public final J0()Z
    .locals 3

    iget v0, p0, Labcd/QC;->FH:I

    invoke-virtual {p0}, Labcd/QC;->FH()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Labcd/hE;->VH:Labcd/yE;

    iget-object v2, p0, Labcd/QC;->DW:[B

    add-int/lit8 v0, v0, 0x28

    invoke-virtual {v1, v2, v0}, Labcd/YD;->j6([BI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J8()Z
    .locals 1

    iget-byte v0, p0, Labcd/QC;->v5:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public VH()I
    .locals 2

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    aget-byte v0, v0, v1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final Ws()V
    .locals 4

    iget v0, p0, Labcd/QC;->FH:I

    add-int/lit8 v0, v0, 0x24

    iget-object v1, p0, Labcd/QC;->DW:[B

    add-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public Zo()I
    .locals 2

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x18

    invoke-static {v0, v1}, Labcd/FK;->j6([BI)I

    move-result v0

    return v0
.end method

.method final gn()[B
    .locals 1

    iget-object v0, p0, Labcd/QC;->DW:[B

    return-object v0
.end method

.method public j6()Labcd/rE;
    .locals 1

    invoke-virtual {p0}, Labcd/QC;->Zo()I

    move-result v0

    invoke-static {v0}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object v0

    return-object v0
.end method

.method public j6(I)V
    .locals 2

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x24

    invoke-static {v0, v1, p1}, Labcd/FK;->DW([BII)V

    return-void
.end method

.method public j6(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Labcd/QC;->j6(IJ)V

    return-void
.end method

.method public j6(Labcd/QC;)V
    .locals 6

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    invoke-static {v0, v1}, Labcd/FK;->DW([BI)I

    move-result v0

    iget-object v1, p1, Labcd/QC;->DW:[B

    iget v2, p1, Labcd/QC;->FH:I

    iget-object v3, p0, Labcd/QC;->DW:[B

    iget v4, p0, Labcd/QC;->FH:I

    const/16 v5, 0x3e

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/QC;->DW:[B

    iget v2, p0, Labcd/QC;->FH:I

    add-int/lit8 v2, v2, 0x3c

    and-int/lit16 v0, v0, 0xfff

    invoke-static {v1, v2}, Labcd/FK;->DW([BI)I

    move-result v3

    and-int/lit16 v3, v3, -0x1000

    or-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Labcd/FK;->j6([BII)V

    return-void
.end method

.method public j6(Labcd/YD;)V
    .locals 2

    invoke-virtual {p0}, Labcd/QC;->gn()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/QC;->u7()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Labcd/YD;->DW([BI)V

    return-void
.end method

.method public j6(Labcd/rE;)V
    .locals 5

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result v0

    const v1, 0xf000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x18

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result v2

    invoke-static {v0, v1, v2}, Labcd/FK;->DW([BII)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidModeForPath:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6(Ljava/io/OutputStream;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Labcd/QC;->EQ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    :goto_0
    iget-object v1, p0, Labcd/QC;->Hw:[B

    array-length v1, v1

    iget-object v2, p0, Labcd/QC;->DW:[B

    iget v3, p0, Labcd/QC;->FH:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, Labcd/QC;->Hw:[B

    invoke-virtual {p1, v2, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x8

    and-int/lit8 v1, v1, -0x8

    if-eq v0, v1, :cond_0

    sget-object v2, Labcd/QC;->j6:[B

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3e

    goto :goto_0
.end method

.method public j6([BI)V
    .locals 3

    invoke-virtual {p0}, Labcd/QC;->gn()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/QC;->u7()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final j6(II)Z
    .locals 2

    iget v0, p0, Labcd/QC;->FH:I

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Labcd/QC;->DW:[B

    invoke-static {v1, v0}, Labcd/FK;->j6([BI)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Labcd/QC;->DW:[B

    add-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Labcd/FK;->j6([BI)I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->DW()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->Hw()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->VH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Z
    .locals 2

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final u7()I
    .locals 1

    iget v0, p0, Labcd/QC;->FH:I

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public v5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Labcd/QC;->Hw:[B

    invoke-static {v0}, Labcd/QC;->DW([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Z
    .locals 2

    invoke-direct {p0}, Labcd/QC;->QX()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
