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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/DI;->DW:Ljava/io/InputStream;

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/DI;->FH:[B

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Labcd/DI;->j6()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/DI;->j6:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v0, -0x4

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/DI;->FH:[B

    array-length v2, v0

    if-gt v1, v2, :cond_3

    :goto_1
    iget-object v2, p0, Labcd/DI;->DW:Ljava/io/InputStream;

    invoke-static {v2, v0, v4, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v2, v0, v4, v1}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-array v0, v1, [B

    goto :goto_1
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Labcd/DI;->j6()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/DI;->j6:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v0, -0x4

    iget-object v0, p0, Labcd/DI;->FH:[B

    array-length v2, v0

    if-gt v1, v2, :cond_1

    :goto_1
    iget-object v2, p0, Labcd/DI;->DW:Ljava/io/InputStream;

    invoke-static {v2, v0, v3, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v2, v0, v3, v1}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    goto :goto_1
.end method

.method j6()I
    .registers 7

    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/DI;->DW:Ljava/io/InputStream;

    iget-object v1, p0, Labcd/DI;->FH:[B

    invoke-static {v0, v1, v4, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    :try_start_0
    iget-object v0, p0, Labcd/DI;->FH:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/IK;->VH([BI)I

    move-result v0

    if-eqz v0, :cond_0

    if-lt v0, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidPacketLineHeader:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Labcd/DI;->FH:[B

    aget-byte v2, v2, v4

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/DI;->FH:[B

    aget-byte v2, v2, v5

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/DI;->FH:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/DI;->FH:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method j6(Labcd/uE;)Labcd/DI$a;
    .registers 7

    const/4 v3, 0x4

    const/16 v2, 0x2c

    invoke-virtual {p0}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "NAK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Labcd/DI$a;->j6:Labcd/DI$a;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ACK "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/uE;->j6(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v0, Labcd/DI$a;->DW:Labcd/DI$a;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " continue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Labcd/DI$a;->FH:Labcd/DI$a;

    goto :goto_0

    :cond_2
    const-string v2, " common"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Labcd/DI$a;->Hw:Labcd/DI$a;

    goto :goto_0

    :cond_3
    const-string v2, " ready"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Labcd/DI$a;->v5:Labcd/DI$a;

    goto :goto_0

    :cond_4
    const-string v1, "ERR "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Labcd/nD;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->expectedACKNAKGot:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->expectedACKNAKFoundEOF:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v0
.end method
