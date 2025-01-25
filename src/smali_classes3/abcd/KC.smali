.class public Labcd/KC;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[Labcd/QC;

.field private static final FH:[B

.field static final Hw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Labcd/QC;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:[B


# instance fields
.field private EQ:Labcd/LG;

.field private J0:[B

.field private J8:Labcd/FD;

.field private VH:I

.field private Zo:[Labcd/QC;

.field private gn:Labcd/TC;

.field private final tp:Labcd/pK;

.field private u7:Labcd/WG;

.field private final v5:Ljava/io/File;

.field private we:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Labcd/KC;->j6:[B

    const/4 v0, 0x0

    new-array v1, v0, [Labcd/QC;

    sput-object v1, Labcd/KC;->DW:[Labcd/QC;

    new-array v0, v0, [B

    sput-object v0, Labcd/KC;->FH:[B

    new-instance v0, Labcd/JC;

    invoke-direct {v0}, Labcd/JC;-><init>()V

    sput-object v0, Labcd/KC;->Hw:Ljava/util/Comparator;

    return-void

    nop

    :array_1a
    .array-data 1
        0x44t
        0x49t
        0x52t
        0x43t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Labcd/pK;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/KC;->v5:Ljava/io/File;

    iput-object p2, p0, Labcd/KC;->tp:Labcd/pK;

    invoke-virtual {p0}, Labcd/KC;->DW()V

    return-void
.end method

.method public static DW(Ljava/io/File;Labcd/pK;)Labcd/KC;
    .registers 3

    new-instance v0, Labcd/KC;

    invoke-direct {v0, p0, p1}, Labcd/KC;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v0}, Labcd/KC;->u7()V

    return-object v0
.end method

.method private static DW([B)Z
    .registers 5

    array-length v0, p0

    sget-object v1, Labcd/KC;->j6:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sget-object v1, Labcd/KC;->j6:[B

    array-length v3, v1

    if-lt v0, v3, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    aget-byte v3, p0, v0

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_17

    return v2

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static gn()Labcd/KC;
    .registers 2

    new-instance v0, Labcd/KC;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Labcd/KC;-><init>(Ljava/io/File;Labcd/pK;)V

    return-object v0
.end method

.method static j6(Labcd/QC;Labcd/QC;)I
    .registers 3

    iget-object p0, p0, Labcd/QC;->Hw:[B

    array-length v0, p0

    invoke-static {p0, v0, p1}, Labcd/KC;->j6([BILabcd/QC;)I

    move-result p0

    return p0
.end method

.method static j6([BILabcd/QC;)I
    .registers 4

    iget-object p2, p2, Labcd/QC;->Hw:[B

    array-length v0, p2

    invoke-static {p0, p1, p2, v0}, Labcd/KC;->j6([BI[BI)I

    move-result p0

    return p0
.end method

.method static j6([BI[BI)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_15

    if-lt v0, p3, :cond_6

    goto :goto_15

    :cond_6
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v1, v2

    if-eqz v1, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    :goto_15
    sub-int/2addr p1, p3

    return p1
.end method

.method public static j6(Ljava/io/File;Labcd/pK;)Labcd/KC;
    .registers 3

    new-instance v0, Labcd/KC;

    invoke-direct {v0, p0, p1}, Labcd/KC;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v0}, Labcd/KC;->VH()Z

    move-result p1

    if-eqz p1, :cond_1e

    :try_start_b
    invoke-virtual {v0}, Labcd/KC;->u7()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_14
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception p0

    invoke-virtual {v0}, Labcd/KC;->tp()V

    throw p0

    :catch_14
    move-exception p0

    invoke-virtual {v0}, Labcd/KC;->tp()V

    throw p0

    :catch_19
    move-exception p0

    invoke-virtual {v0}, Labcd/KC;->tp()V

    throw p0

    :cond_1e
    new-instance p1, Labcd/dD;

    invoke-direct {p1, p0}, Labcd/dD;-><init>(Ljava/io/File;)V

    throw p1
.end method

.method public static j6(Ljava/io/File;Labcd/pK;Labcd/FD;)Labcd/KC;
    .registers 3

    invoke-static {p0, p1}, Labcd/KC;->j6(Ljava/io/File;Labcd/pK;)Labcd/KC;

    move-result-object p0

    invoke-direct {p0, p2}, Labcd/KC;->j6(Labcd/FD;)V

    return-object p0
.end method

.method private static j6([B)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "ISO-8859-1"

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6(Labcd/FD;)V
    .registers 2

    iput-object p1, p0, Labcd/KC;->J8:Labcd/FD;

    return-void
.end method

.method private j6(Labcd/WG;)V
    .registers 6

    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->dirCacheFileIsNotLocked:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->dirCacheIsNotLocked:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Ljava/io/InputStream;)V
    .registers 16

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object p1

    const/16 v7, 0x14

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/16 v0, 0xc

    invoke-static {v6, v8, v9, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {p1, v8, v9, v0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-static {v8}, Labcd/KC;->DW([B)Z

    move-result v0

    if-eqz v0, :cond_12c

    const/4 v10, 0x4

    invoke-static {v8, v10}, Labcd/FK;->j6([BI)I

    move-result v0

    const/4 v1, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v0, v1, :cond_28

    const/4 v0, 0x1

    goto :goto_2b

    :cond_28
    if-ne v0, v11, :cond_114

    const/4 v0, 0x0

    :goto_2b
    const/16 v13, 0x8

    invoke-static {v8, v13}, Labcd/FK;->j6([BI)I

    move-result v1

    iput v1, p0, Labcd/KC;->VH:I

    if-ltz v1, :cond_108

    invoke-static {v0}, Labcd/QC;->j6(Z)I

    move-result v0

    iget v1, p0, Labcd/KC;->VH:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    new-array v1, v1, [Labcd/QC;

    iput-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    new-instance v1, Labcd/EK;

    invoke-direct {v1}, Labcd/EK;-><init>()V

    const/4 v2, 0x0

    :goto_49
    iget v3, p0, Labcd/KC;->VH:I

    if-lt v2, v3, :cond_fb

    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    :goto_55
    const/16 v0, 0x15

    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-static {v6, v8, v9, v7}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gez v0, :cond_7c

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Labcd/KC;->we:[B

    invoke-static {p1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_70

    return-void

    :cond_70
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->DIRCChecksumMismatch:Ljava/lang/String;

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->reset()V

    invoke-virtual {p1, v8, v9, v13}, Ljava/security/MessageDigest;->update([BII)V

    const-wide/16 v0, 0x8

    invoke-static {v6, v0, v1}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    invoke-static {v8, v10}, Labcd/FK;->FH([BI)J

    move-result-wide v4

    invoke-static {v8, v9}, Labcd/FK;->j6([BI)I

    move-result v0

    const v1, 0x54524545

    if-eq v0, v1, :cond_be

    aget-byte v0, v8, v9

    const/16 v1, 0x41

    if-lt v0, v1, :cond_a6

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_a6

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Labcd/KC;->j6(Ljava/io/InputStream;Ljava/security/MessageDigest;[BJ)V

    goto :goto_55

    :cond_a6
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->DIRCExtensionNotSupportedByThisVersion:Ljava/lang/String;

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v8}, Labcd/KC;->j6([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_be
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v0, v4

    if-ltz v2, :cond_dd

    long-to-int v0, v4

    new-array v1, v0, [B

    invoke-static {v6, v1, v9, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {p1, v1, v9, v0}, Ljava/security/MessageDigest;->update([BII)V

    new-instance v0, Labcd/TC;

    new-instance v2, Labcd/EK;

    invoke-direct {v2}, Labcd/EK;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Labcd/TC;-><init>([BLabcd/EK;Labcd/TC;)V

    iput-object v0, p0, Labcd/KC;->gn:Labcd/TC;

    goto/16 :goto_55

    :cond_dd
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->DIRCExtensionIsTooLargeAt:Ljava/lang/String;

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v8}, Labcd/KC;->j6([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fb
    iget-object v3, p0, Labcd/KC;->Zo:[Labcd/QC;

    new-instance v4, Labcd/QC;

    invoke-direct {v4, v0, v1, v6, p1}, Labcd/QC;-><init>([BLabcd/EK;Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_49

    :cond_108
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->DIRCHasTooManyEntries:Ljava/lang/String;

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_114
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownDIRCVersion:Ljava/lang/String;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12c
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->notADIRCFile:Ljava/lang/String;

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    goto :goto_139

    :goto_138
    throw p1

    :goto_139
    goto :goto_138
.end method

.method private j6(Ljava/io/InputStream;Ljava/security/MessageDigest;[BJ)V
    .registers 11

    const/16 v0, 0x1000

    new-array v1, v0, [B

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_b

    return-void

    :cond_b
    int-to-long v2, v0

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1e

    invoke-virtual {p2, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v2, v3

    sub-long/2addr p4, v2

    goto :goto_4

    :cond_1e
    new-instance p1, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->shortReadOfOptionalDIRCExtensionExpectedAnotherBytes:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Labcd/KC;->j6([B)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v2

    const/4 p3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v0, p3

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_3f

    :goto_3e
    throw p1

    :goto_3f
    goto :goto_3e
.end method


# virtual methods
.method public DW(I)I
    .registers 4

    iget-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v0, v0, p1

    add-int/lit8 p1, p1, 0x1

    :goto_6
    iget v1, p0, Labcd/KC;->VH:I

    if-lt p1, v1, :cond_b

    goto :goto_15

    :cond_b
    iget-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Labcd/KC;->j6(Labcd/QC;Labcd/QC;)I

    move-result v0

    if-eqz v0, :cond_16

    :goto_15
    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    move-object v0, v1

    goto :goto_6
.end method

.method public DW(Ljava/lang/String;)Labcd/QC;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/KC;->j6(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    iget-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object p1, v0, p1

    :goto_c
    return-object p1
.end method

.method public DW()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    sget-object v1, Labcd/KC;->DW:[Labcd/QC;

    iput-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    const/4 v1, 0x0

    iput v1, p0, Labcd/KC;->VH:I

    iput-object v0, p0, Labcd/KC;->gn:Labcd/TC;

    sget-object v0, Labcd/KC;->FH:[B

    iput-object v0, p0, Labcd/KC;->we:[B

    return-void
.end method

.method public EQ()V
    .registers 4

    iget-object v0, p0, Labcd/KC;->u7:Labcd/WG;

    invoke-direct {p0, v0}, Labcd/KC;->j6(Labcd/WG;)V

    :try_start_5
    new-instance v1, Labcd/XK;

    invoke-virtual {v0}, Labcd/WG;->FH()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Labcd/KC;->j6(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_11} :catch_17
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v1

    invoke-virtual {v0}, Labcd/WG;->v5()V

    throw v1

    :catch_17
    move-exception v1

    invoke-virtual {v0}, Labcd/WG;->v5()V

    throw v1

    :catch_1c
    move-exception v1

    invoke-virtual {v0}, Labcd/WG;->v5()V

    throw v1
.end method

.method public FH()Z
    .registers 3

    iget-object v0, p0, Labcd/KC;->u7:Labcd/WG;

    invoke-direct {p0, v0}, Labcd/KC;->j6(Labcd/WG;)V

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/KC;->u7:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->j6()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    invoke-virtual {v0}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    iget-object v0, p0, Labcd/KC;->J8:Labcd/FD;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Labcd/KC;->we:[B

    iget-object v1, p0, Labcd/KC;->J0:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Labcd/KC;->J8:Labcd/FD;

    new-instance v1, Labcd/ED;

    invoke-direct {v1}, Labcd/ED;-><init>()V

    invoke-interface {v0, v1}, Labcd/FD;->j6(Labcd/ED;)V

    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method public Hw()Labcd/PC;
    .registers 3

    new-instance v0, Labcd/PC;

    iget v1, p0, Labcd/KC;->VH:I

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, p0, v1}, Labcd/PC;-><init>(Labcd/KC;I)V

    return-object v0
.end method

.method public VH()Z
    .registers 4

    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    if-eqz v0, :cond_1a

    new-instance v1, Labcd/WG;

    iget-object v2, p0, Labcd/KC;->tp:Labcd/pK;

    invoke-direct {v1, v0, v2}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v1}, Labcd/WG;->Hw()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Labcd/WG;->FH(Z)V

    iput-object v1, p0, Labcd/KC;->u7:Labcd/WG;

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->dirCacheDoesNotHaveABackingFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Zo()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Labcd/KC;->VH:I

    if-lt v1, v2, :cond_7

    return v0

    :cond_7
    iget-object v2, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Labcd/QC;->VH()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public j6(Ljava/lang/String;)I
    .registers 3

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Labcd/KC;->j6([BI)I

    move-result p1

    return p1
.end method

.method j6([BI)I
    .registers 7

    iget v0, p0, Labcd/KC;->VH:I

    const/4 v1, 0x0

    :goto_3
    if-lt v1, v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_9
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v3, v3, v2

    invoke-static {p1, p2, v3}, Labcd/KC;->j6([BILabcd/QC;)I

    move-result v3

    if-gez v3, :cond_19

    move v0, v2

    goto :goto_3

    :cond_19
    if-nez v3, :cond_2e

    :goto_1b
    if-lez v2, :cond_2d

    iget-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    add-int/lit8 v1, v2, -0x1

    aget-object v0, v0, v1

    invoke-static {p1, p2, v0}, Labcd/KC;->j6([BILabcd/QC;)I

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_2d
    :goto_2d
    return v2

    :cond_2e
    add-int/lit8 v1, v2, 0x1

    goto :goto_3
.end method

.method public j6()Labcd/MC;
    .registers 3

    new-instance v0, Labcd/MC;

    iget v1, p0, Labcd/KC;->VH:I

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, p0, v1}, Labcd/MC;-><init>(Labcd/KC;I)V

    return-object v0
.end method

.method public j6(I)Labcd/QC;
    .registers 3

    iget-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public j6(Z)Labcd/TC;
    .registers 5

    if-eqz p1, :cond_17

    iget-object p1, p0, Labcd/KC;->gn:Labcd/TC;

    if-nez p1, :cond_d

    new-instance p1, Labcd/TC;

    invoke-direct {p1}, Labcd/TC;-><init>()V

    iput-object p1, p0, Labcd/KC;->gn:Labcd/TC;

    :cond_d
    iget-object p1, p0, Labcd/KC;->gn:Labcd/TC;

    iget-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    iget v1, p0, Labcd/KC;->VH:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Labcd/TC;->j6([Labcd/QC;III)V

    :cond_17
    iget-object p1, p0, Labcd/KC;->gn:Labcd/TC;

    return-object p1
.end method

.method public j6(Labcd/EE;)Labcd/yE;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Labcd/KC;->j6(Z)Labcd/TC;

    move-result-object v0

    iget-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Labcd/TC;->j6([Labcd/QC;IILabcd/EE;)Labcd/yE;

    move-result-object p1

    return-object p1
.end method

.method j6(I[Labcd/QC;II)V
    .registers 6

    iget-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method j6(Ljava/io/OutputStream;)V
    .registers 13

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/security/DigestOutputStream;

    invoke-direct {v1, p1, v0}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    iget v5, p0, Labcd/KC;->VH:I

    if-lt v3, v5, :cond_a3

    const/16 v3, 0x80

    new-array v5, v3, [B

    sget-object v3, Labcd/KC;->j6:[B

    array-length v6, v3

    invoke-static {v3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v4, :cond_1e

    const/4 v3, 0x3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x2

    :goto_1f
    const/4 v6, 0x4

    invoke-static {v5, v6, v3}, Labcd/FK;->DW([BII)V

    iget v3, p0, Labcd/KC;->VH:I

    const/16 v7, 0x8

    invoke-static {v5, v7, v3}, Labcd/FK;->DW([BII)V

    const/16 v3, 0xc

    invoke-virtual {v1, v5, v2, v3}, Ljava/security/DigestOutputStream;->write([BII)V

    iget-object v3, p0, Labcd/KC;->EQ:Labcd/LG;

    if-nez v3, :cond_43

    const/4 v3, 0x0

    :goto_34
    iget v4, p0, Labcd/KC;->VH:I

    if-lt v3, v4, :cond_39

    goto :goto_58

    :cond_39
    iget-object v4, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Labcd/QC;->j6(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_43
    invoke-virtual {v3}, Labcd/LG;->j6()J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    div-long/2addr v3, v8

    long-to-int v10, v3

    iget-object v3, p0, Labcd/KC;->EQ:Labcd/LG;

    invoke-virtual {v3}, Labcd/LG;->j6()J

    move-result-wide v3

    rem-long/2addr v3, v8

    long-to-int v8, v3

    const/4 v3, 0x0

    :goto_54
    iget v4, p0, Labcd/KC;->VH:I

    if-lt v3, v4, :cond_8b

    :goto_58
    iget-object v3, p0, Labcd/KC;->gn:Labcd/TC;

    if-eqz v3, :cond_7e

    new-instance v3, Labcd/RK$d;

    invoke-direct {v3}, Labcd/RK$d;-><init>()V

    iget-object v4, p0, Labcd/KC;->gn:Labcd/TC;

    invoke-virtual {v4, v5, v3}, Labcd/TC;->j6([BLjava/io/OutputStream;)V

    invoke-virtual {v3}, Labcd/RK;->close()V

    const v4, 0x54524545

    invoke-static {v5, v2, v4}, Labcd/FK;->DW([BII)V

    invoke-virtual {v3}, Labcd/RK$d;->DW()J

    move-result-wide v8

    long-to-int v4, v8

    invoke-static {v5, v6, v4}, Labcd/FK;->DW([BII)V

    invoke-virtual {v1, v5, v2, v7}, Ljava/security/DigestOutputStream;->write([BII)V

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Labcd/RK$d;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :cond_7e
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->J0:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_8b
    iget-object v4, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v4, v4, v3

    const v9, 0xf4240

    mul-int v9, v9, v8

    invoke-virtual {v4, v10, v9}, Labcd/QC;->j6(II)Z

    move-result v9

    if-eqz v9, :cond_9d

    invoke-virtual {v4}, Labcd/QC;->Ws()V

    :cond_9d
    invoke-virtual {v4, v1}, Labcd/QC;->j6(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_a3
    iget-object v5, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Labcd/QC;->EQ()Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c
.end method

.method j6([Labcd/QC;I)V
    .registers 3

    iput-object p1, p0, Labcd/KC;->Zo:[Labcd/QC;

    iput p2, p0, Labcd/KC;->VH:I

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/KC;->gn:Labcd/TC;

    return-void
.end method

.method public tp()V
    .registers 3

    iget-object v0, p0, Labcd/KC;->u7:Labcd/WG;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/KC;->u7:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->v5()V

    :cond_a
    return-void
.end method

.method public u7()V
    .registers 3

    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Labcd/KC;->DW()V

    goto :goto_40

    :cond_e
    iget-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-virtual {v0, v1}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_21} :catch_34

    :try_start_21
    invoke-virtual {p0}, Labcd/KC;->DW()V

    invoke-direct {p0, v0}, Labcd/KC;->j6(Ljava/io/InputStream;)V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2d

    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_38

    :catch_2b
    move-exception v0

    goto :goto_38

    :catchall_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move-exception v0

    :goto_33
    :try_start_33
    throw v1
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_34} :catch_34

    :catch_34
    move-exception v0

    invoke-virtual {p0}, Labcd/KC;->DW()V

    :goto_38
    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    :cond_40
    :goto_40
    return-void

    :cond_41
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->dirCacheDoesNotHaveABackingFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/KC;->VH:I

    return v0
.end method
