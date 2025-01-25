.class public Labcd/DI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/DI$a;
    }
.end annotation


# static fields
.field public static final j6:Ljava/lang/String;


# instance fields
.field private final DW:Ljava/io/InputStream;

.field private final FH:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/DI;->j6:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/DI;->DW:Ljava/io/InputStream;

    const/16 p1, 0x3e8

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/DI;->FH:[B

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Labcd/DI;->j6()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Labcd/DI;->j6:Ljava/lang/String;

    return-object v0

    :cond_9
    add-int/lit8 v0, v0, -0x4

    if-nez v0, :cond_10

    const-string v0, ""

    return-object v0

    :cond_10
    iget-object v1, p0, Labcd/DI;->FH:[B

    array-length v2, v1

    if-gt v0, v2, :cond_16

    goto :goto_18

    :cond_16
    new-array v1, v0, [B

    :goto_18
    iget-object v2, p0, Labcd/DI;->DW:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    add-int/lit8 v2, v0, -0x1

    aget-byte v4, v1, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_27

    move v0, v2

    :cond_27
    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v2, v1, v3, v0}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Labcd/DI;->j6()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Labcd/DI;->j6:Ljava/lang/String;

    return-object v0

    :cond_9
    add-int/lit8 v0, v0, -0x4

    iget-object v1, p0, Labcd/DI;->FH:[B

    array-length v2, v1

    if-gt v0, v2, :cond_11

    goto :goto_13

    :cond_11
    new-array v1, v0, [B

    :goto_13
    iget-object v2, p0, Labcd/DI;->DW:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v2, v1, v3, v0}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j6()I
    .registers 7

    iget-object v0, p0, Labcd/DI;->DW:Ljava/io/InputStream;

    iget-object v1, p0, Labcd/DI;->FH:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    :try_start_9
    iget-object v0, p0, Labcd/DI;->FH:[B

    invoke-static {v0, v2}, Labcd/IK;->VH([BI)I

    move-result v0

    if-eqz v0, :cond_1a

    if-lt v0, v3, :cond_14

    goto :goto_1a

    :cond_14
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return v0

    :catch_1b
    move-exception v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidPacketLineHeader:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/DI;->FH:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/DI;->FH:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/DI;->FH:[B

    const/4 v5, 0x2

    aget-byte v3, v3, v5

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/DI;->FH:[B

    const/4 v5, 0x3

    aget-byte v3, v3, v5

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/IOException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method j6(Labcd/uE;)Labcd/DI$a;
    .registers 6

    invoke-virtual {p0}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7d

    const-string v1, "NAK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object p1, Labcd/DI$a;->j6:Labcd/DI$a;

    return-object p1

    :cond_15
    const-string v1, "ACK "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_55

    const/16 v1, 0x2c

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Labcd/uE;->j6(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_30

    sget-object p1, Labcd/DI$a;->DW:Labcd/DI$a;

    return-object p1

    :cond_30
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, " continue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object p1, Labcd/DI$a;->FH:Labcd/DI$a;

    return-object p1

    :cond_3f
    const-string v1, " common"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object p1, Labcd/DI$a;->Hw:Labcd/DI$a;

    return-object p1

    :cond_4a
    const-string v1, " ready"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    sget-object p1, Labcd/DI$a;->v5:Labcd/DI$a;

    return-object p1

    :cond_55
    const-string p1, "ERR "

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_67

    new-instance p1, Labcd/nD;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    new-instance p1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->expectedACKNAKGot:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7d
    new-instance p1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedACKNAKFoundEOF:Ljava/lang/String;

    invoke-direct {p1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw p1
.end method
