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
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Labcd/QC;->j6:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/QC;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Labcd/QC;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/QC;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/QC;->j6([B)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    if-ltz p2, :cond_2d

    const/4 v0, 0x3

    if-lt v0, p2, :cond_2d

    const/16 v1, 0x3e

    new-array v1, v1, [B

    iput-object v1, p0, Labcd/QC;->DW:[B

    iput v2, p0, Labcd/QC;->FH:I

    iput-object p1, p0, Labcd/QC;->Hw:[B

    and-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0xc

    array-length v0, p1

    const/16 v3, 0xfff

    if-ge v0, v3, :cond_25

    array-length p1, p1

    or-int/2addr p1, p2

    goto :goto_27

    :cond_25
    or-int/lit16 p1, p2, 0xfff

    :goto_27
    add-int/lit8 v2, v2, 0x3c

    invoke-static {v1, v2, p1}, Labcd/FK;->j6([BII)V

    return-void

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->invalidStageForPath:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-static {p1}, Labcd/QC;->DW([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidPath:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Labcd/QC;->DW([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method constructor <init>([BLabcd/EK;Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/QC;->DW:[B

    iget v0, p2, Labcd/EK;->j6:I

    iput v0, p0, Labcd/QC;->FH:I

    const/16 v1, 0x3e

    invoke-static {p3, p1, v0, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {p0}, Labcd/QC;->EQ()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_45

    add-int/lit8 v1, v0, 0x3e

    const/4 v2, 0x2

    invoke-static {p3, p1, v1, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-direct {p0}, Labcd/QC;->QX()I

    move-result v1

    const v2, -0x60000001

    and-int/2addr v1, v2

    if-nez v1, :cond_29

    const/16 v1, 0x40

    goto :goto_45

    :cond_29
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->DIRCUnrecognizedExtendedFlags:Ljava/lang/String;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Labcd/QC;->QX()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v3

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    :goto_45
    iget v2, p2, Labcd/EK;->j6:I

    add-int/2addr v2, v1

    iput v2, p2, Labcd/EK;->j6:I

    invoke-virtual {p4, p1, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v0, v0, 0x3c

    invoke-static {p1, v0}, Labcd/FK;->DW([BI)I

    move-result p1

    const/16 p2, 0xfff

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_64

    new-array p2, p1, [B

    iput-object p2, p0, Labcd/QC;->Hw:[B

    invoke-static {p3, p2, v3, p1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {p4, p2, v3, p1}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v4, 0x0

    goto :goto_87

    :cond_64
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, p2, [B

    invoke-static {p3, v0, v3, p2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_71
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result p2

    if-ltz p2, :cond_9e

    if-nez p2, :cond_9a

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Labcd/QC;->Hw:[B

    array-length p2, p1

    invoke-virtual {p4, p1, v3, p2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p4, v3}, Ljava/security/MessageDigest;->update(B)V

    move p1, p2

    :goto_87
    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x8

    and-int/lit8 p1, p1, -0x8

    sub-int/2addr p1, v1

    sub-int/2addr p1, v4

    if-lez p1, :cond_99

    int-to-long v0, p1

    invoke-static {p3, v0, v1}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    sget-object p2, Labcd/QC;->j6:[B

    invoke-virtual {p4, p2, v3, p1}, Ljava/security/MessageDigest;->update([BII)V

    :cond_99
    return-void

    :cond_9a
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_71

    :cond_9e
    new-instance p1, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->shortReadOfBlock:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_ab

    :goto_aa
    throw p1

    :goto_ab
    goto :goto_aa
.end method

.method private DW(I)J
    .registers 7

    iget v0, p0, Labcd/QC;->FH:I

    add-int/2addr v0, p1

    iget-object p1, p0, Labcd/QC;->DW:[B

    invoke-static {p1, v0}, Labcd/FK;->j6([BI)I

    move-result p1

    iget-object v1, p0, Labcd/QC;->DW:[B

    add-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Labcd/FK;->j6([BI)I

    move-result v0

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private static DW([B)Ljava/lang/String;
    .registers 2

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private QX()I
    .registers 3

    invoke-virtual {p0}, Labcd/QC;->EQ()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3e

    invoke-static {v0, v1}, Labcd/FK;->DW([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method static j6(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x40

    goto :goto_7

    :cond_5
    const/16 p0, 0x3e

    :goto_7
    return p0
.end method

.method private j6(IJ)V
    .registers 9

    iget v0, p0, Labcd/QC;->FH:I

    add-int/2addr v0, p1

    iget-object p1, p0, Labcd/QC;->DW:[B

    const-wide/16 v1, 0x3e8

    div-long v3, p2, v1

    long-to-int v4, v3

    invoke-static {p1, v0, v4}, Labcd/FK;->DW([BII)V

    iget-object p1, p0, Labcd/QC;->DW:[B

    add-int/lit8 v0, v0, 0x4

    rem-long/2addr p2, v1

    long-to-int p3, p2

    const p2, 0xf4240

    mul-int p3, p3, p2

    invoke-static {p1, v0, p3}, Labcd/FK;->DW([BII)V

    return-void
.end method

.method static j6([B)Z
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return v1

    :cond_5
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-lt v2, v0, :cond_b

    return v3

    :cond_b
    aget-byte v4, p0, v2

    if-eqz v4, :cond_1b

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_15

    const/4 v3, 0x1

    goto :goto_18

    :cond_15
    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    return v1
.end method


# virtual methods
.method public DW()J
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Labcd/QC;->DW(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public DW(J)V
    .registers 8

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v0, p1

    if-lez v2, :cond_c

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Labcd/QC;->j6(I)V

    return-void

    :cond_c
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

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method EQ()Z
    .registers 3

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public FH()I
    .registers 3

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x24

    invoke-static {v0, v1}, Labcd/FK;->j6([BI)I

    move-result v0

    return v0
.end method

.method public Hw()Labcd/yE;
    .registers 3

    invoke-virtual {p0}, Labcd/QC;->gn()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/QC;->u7()I

    move-result v1

    invoke-static {v0, v1}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public final J0()Z
    .registers 4

    iget v0, p0, Labcd/QC;->FH:I

    invoke-virtual {p0}, Labcd/QC;->FH()I

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Labcd/hE;->VH:Labcd/yE;

    iget-object v2, p0, Labcd/QC;->DW:[B

    add-int/lit8 v0, v0, 0x28

    invoke-virtual {v1, v2, v0}, Labcd/YD;->j6([BI)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public J8()Z
    .registers 3

    iget-byte v0, p0, Labcd/QC;->v5:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public VH()I
    .registers 3

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    aget-byte v0, v0, v1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final Ws()V
    .registers 5

    iget v0, p0, Labcd/QC;->FH:I

    add-int/lit8 v0, v0, 0x24

    iget-object v1, p0, Labcd/QC;->DW:[B

    add-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public Zo()I
    .registers 3

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x18

    invoke-static {v0, v1}, Labcd/FK;->j6([BI)I

    move-result v0

    return v0
.end method

.method final gn()[B
    .registers 2

    iget-object v0, p0, Labcd/QC;->DW:[B

    return-object v0
.end method

.method public j6()Labcd/rE;
    .registers 2

    invoke-virtual {p0}, Labcd/QC;->Zo()I

    move-result v0

    invoke-static {v0}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object v0

    return-object v0
.end method

.method public j6(I)V
    .registers 4

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x24

    invoke-static {v0, v1, p1}, Labcd/FK;->DW([BII)V

    return-void
.end method

.method public j6(J)V
    .registers 4

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Labcd/QC;->j6(IJ)V

    return-void
.end method

.method public j6(Labcd/QC;)V
    .registers 7

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    invoke-static {v0, v1}, Labcd/FK;->DW([BI)I

    move-result v0

    iget-object v1, p1, Labcd/QC;->DW:[B

    iget p1, p1, Labcd/QC;->FH:I

    iget-object v2, p0, Labcd/QC;->DW:[B

    iget v3, p0, Labcd/QC;->FH:I

    const/16 v4, 0x3e

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    and-int/lit16 v0, v0, 0xfff

    invoke-static {p1, v1}, Labcd/FK;->DW([BI)I

    move-result v2

    and-int/lit16 v2, v2, -0x1000

    or-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Labcd/FK;->j6([BII)V

    return-void
.end method

.method public j6(Labcd/YD;)V
    .registers 4

    invoke-virtual {p0}, Labcd/QC;->gn()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/QC;->u7()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Labcd/YD;->DW([BI)V

    return-void
.end method

.method public j6(Labcd/rE;)V
    .registers 6

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result v0

    const v1, 0xf000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x18

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result p1

    invoke-static {v0, v1, p1}, Labcd/FK;->DW([BII)V

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidModeForPath:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {p0}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6(Ljava/io/OutputStream;)V
    .registers 6

    invoke-virtual {p0}, Labcd/QC;->EQ()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x40

    goto :goto_b

    :cond_9
    const/16 v0, 0x3e

    :goto_b
    iget-object v1, p0, Labcd/QC;->Hw:[B

    array-length v1, v1

    iget-object v2, p0, Labcd/QC;->DW:[B

    iget v3, p0, Labcd/QC;->FH:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, Labcd/QC;->Hw:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x8

    and-int/lit8 v1, v1, -0x8

    if-eq v0, v1, :cond_28

    sget-object v2, Labcd/QC;->j6:[B

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_28
    return-void
.end method

.method public j6([BI)V
    .registers 6

    invoke-virtual {p0}, Labcd/QC;->gn()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/QC;->u7()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final j6(II)Z
    .registers 5

    iget v0, p0, Labcd/QC;->FH:I

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Labcd/QC;->DW:[B

    invoke-static {v1, v0}, Labcd/FK;->j6([BI)I

    move-result v1

    if-ne p1, v1, :cond_18

    iget-object p1, p0, Labcd/QC;->DW:[B

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Labcd/FK;->j6([BI)I

    move-result p1

    if-gt p2, p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->FH()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->DW()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->Hw()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->VH()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .registers 3

    iget-object v0, p0, Labcd/QC;->DW:[B

    iget v1, p0, Labcd/QC;->FH:I

    add-int/lit8 v1, v1, 0x3c

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method final u7()I
    .registers 2

    iget v0, p0, Labcd/QC;->FH:I

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/QC;->Hw:[B

    invoke-static {v0}, Labcd/QC;->DW([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Z
    .registers 3

    invoke-direct {p0}, Labcd/QC;->QX()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method
