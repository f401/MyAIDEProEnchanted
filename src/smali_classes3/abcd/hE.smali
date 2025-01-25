.class public final Labcd/hE;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[B

.field private static final FH:[B

.field private static final Hw:[B

.field public static final VH:Labcd/yE;

.field public static final Zo:Ljava/nio/charset/Charset;

.field private static final j6:[B

.field public static final v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "commit"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/hE;->j6:[B

    const-string v0, "blob"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/hE;->DW:[B

    const-string v0, "tree"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/hE;->FH:[B

    const-string v0, "tag"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/hE;->Hw:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_52

    sput-object v0, Labcd/hE;->v5:[B

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    const/16 v1, 0x14

    if-ne v1, v0, :cond_45

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    const-string v0, "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391"

    invoke-static {v0}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    sput-object v0, Labcd/hE;->VH:Labcd/yE;

    return-void

    :cond_45
    new-instance v0, Ljava/lang/LinkageError;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->incorrectOBJECT_ID_LENGTH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_52
    .array-data 1
        0x50t
        0x41t
        0x43t
        0x4bt
    .end array-data
.end method

.method public static DW(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_28

    const/4 v1, 0x4

    if-ne p0, v1, :cond_f

    const-string p0, "tag"

    return-object p0

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->badObjectType:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    const-string p0, "blob"

    return-object p0

    :cond_2b
    const-string p0, "tree"

    return-object p0

    :cond_2e
    const-string p0, "commit"

    return-object p0
.end method

.method public static DW(Ljava/lang/String;)[B
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_8
    if-gez v0, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_19

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notASCIIString:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    :goto_2e
    throw v0

    :goto_2f
    goto :goto_2e
.end method

.method public static j6(Labcd/YD;[BBLabcd/EK;)I
    .registers 9

    :try_start_0
    iget v0, p3, Labcd/EK;->j6:I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2} :catch_e1

    aget-byte v1, p1, v0

    const/16 v2, 0x6f

    const/16 v3, 0x62

    if-eq v1, v3, :cond_b5

    const/16 v3, 0x63

    const/16 v4, 0x74

    if-eq v1, v3, :cond_7b

    if-ne v1, v4, :cond_6f

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_50

    const/16 v2, 0x72

    if-ne v1, v2, :cond_44

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_38

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_38

    add-int/lit8 v1, v0, 0x4

    aget-byte p1, p1, v1

    if-ne p1, p2, :cond_38

    add-int/lit8 v0, v0, 0x5

    :try_start_34
    iput v0, p3, Labcd/EK;->j6:I

    const/4 p0, 0x2

    return p0

    :cond_38
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p1

    :cond_44
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p1
    :try_end_50
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34 .. :try_end_50} :catch_e1

    :cond_50
    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_63

    add-int/lit8 v1, v0, 0x3

    aget-byte p1, p1, v1

    if-ne p1, p2, :cond_63

    const/4 p1, 0x4

    add-int/2addr v0, p1

    :try_start_60
    iput v0, p3, Labcd/EK;->j6:I

    return p1

    :cond_63
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p1

    :cond_6f
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p1
    :try_end_7b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_60 .. :try_end_7b} :catch_e1

    :cond_7b
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_a9

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_a9

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_a9

    add-int/lit8 v1, v0, 0x4

    aget-byte v1, p1, v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_a9

    add-int/lit8 v1, v0, 0x5

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_a9

    add-int/lit8 v1, v0, 0x6

    aget-byte p1, p1, v1

    if-ne p1, p2, :cond_a9

    add-int/lit8 v0, v0, 0x7

    :try_start_a5
    iput v0, p3, Labcd/EK;->j6:I

    const/4 p0, 0x1

    return p0

    :cond_a9
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p1
    :try_end_b5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a5 .. :try_end_b5} :catch_e1

    :cond_b5
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    const/16 v4, 0x6c

    if-ne v1, v4, :cond_d5

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_d5

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_d5

    add-int/lit8 v1, v0, 0x4

    aget-byte p1, p1, v1

    if-ne p1, p2, :cond_d5

    add-int/lit8 v0, v0, 0x5

    :try_start_d1
    iput v0, p3, Labcd/EK;->j6:I

    const/4 p0, 0x3

    return p0

    :cond_d5
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p1
    :try_end_e1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d1 .. :try_end_e1} :catch_e1

    :catch_e1
    move-exception p1

    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p1
.end method

.method public static j6()Ljava/security/MessageDigest;
    .registers 6

    const-string v0, "SHA-1"

    :try_start_2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->requiredHashFunctionNotAvailable:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static j6(I)[B
    .registers 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_28

    const/4 v1, 0x4

    if-ne p0, v1, :cond_f

    sget-object p0, Labcd/hE;->Hw:[B

    return-object p0

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->badObjectType:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    sget-object p0, Labcd/hE;->DW:[B

    return-object p0

    :cond_2b
    sget-object p0, Labcd/hE;->FH:[B

    return-object p0

    :cond_2e
    sget-object p0, Labcd/hE;->j6:[B

    return-object p0
.end method

.method public static j6(J)[B
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 4

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v2, v1

    if-ne v2, v0, :cond_1e

    return-object v1

    :cond_1e
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method
