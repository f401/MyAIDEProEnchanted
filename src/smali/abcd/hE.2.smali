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

    fill-array-data v0, :array_0

    sput-object v0, Labcd/hE;->v5:[B

    const/16 v0, 0x14

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    const-string v0, "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391"

    invoke-static {v0}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    sput-object v0, Labcd/hE;->VH:Labcd/yE;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/LinkageError;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->incorrectOBJECT_ID_LENGTH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x50t
        0x41t
        0x43t
        0x4bt
    .end array-data
.end method

.method public static DW(I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string v0, "tag"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->badObjectType:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "blob"

    goto :goto_0

    :cond_2
    const-string v0, "tree"

    goto :goto_0

    :cond_3
    const-string v0, "commit"

    goto :goto_0
.end method

.method public static DW(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notASCIIString:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/YD;[BBLabcd/EK;)I
    .registers 12

    const/16 v7, 0x74

    const/16 v6, 0x6f

    const/16 v5, 0x6d

    const/16 v4, 0x65

    const/16 v3, 0x62

    :try_start_0
    iget v0, p3, Labcd/EK;->j6:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    aget-byte v1, p1, v0

    if-eq v1, v3, :cond_7

    const/16 v2, 0x63

    if-eq v1, v2, :cond_5

    if-ne v1, v7, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_2

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_0

    add-int/lit8 v1, v0, 0x4

    aget-byte v1, p1, v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x5

    :try_start_1
    iput v0, p3, Labcd/EK;->j6:I

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, p2, :cond_3

    add-int/lit8 v0, v0, 0x4

    :try_start_3
    iput v0, p3, Labcd/EK;->j6:I

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v6, :cond_6

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v5, :cond_6

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v5, :cond_6

    add-int/lit8 v1, v0, 0x4

    aget-byte v1, p1, v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, v0, 0x5

    aget-byte v1, p1, v1

    if-ne v1, v7, :cond_6

    add-int/lit8 v1, v0, 0x6

    aget-byte v1, p1, v1

    if-ne v1, p2, :cond_6

    add-int/lit8 v0, v0, 0x7

    :try_start_4
    iput v0, p3, Labcd/EK;->j6:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_8

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v6, :cond_8

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_8

    add-int/lit8 v1, v0, 0x4

    aget-byte v1, p1, v1

    if-ne v1, p2, :cond_8

    add-int/lit8 v0, v0, 0x5

    :try_start_5
    iput v0, p3, Labcd/EK;->j6:I

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_8
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static j6()Ljava/security/MessageDigest;
    .registers 6

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->requiredHashFunctionNotAvailable:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "SHA-1"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static j6(I)[B
    .registers 6

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v0, Labcd/hE;->Hw:[B

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->badObjectType:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Labcd/hE;->DW:[B

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/hE;->FH:[B

    goto :goto_0

    :cond_3
    sget-object v0, Labcd/hE;->j6:[B

    goto :goto_0
.end method

.method public static j6(J)[B
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 5

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v3, v0

    if-ne v3, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
