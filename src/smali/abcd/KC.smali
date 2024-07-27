.class public Labcd/KC;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[Labcd/QC;

.field private static final FH:[B

.field static final Hw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
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

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Labcd/KC;->j6:[B

    new-array v0, v1, [Labcd/QC;

    sput-object v0, Labcd/KC;->DW:[Labcd/QC;

    new-array v0, v1, [B

    sput-object v0, Labcd/KC;->FH:[B

    new-instance v0, Labcd/JC;

    invoke-direct {v0}, Labcd/JC;-><init>()V

    sput-object v0, Labcd/KC;->Hw:Ljava/util/Comparator;

    return-void

    nop

    :array_0
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

    const/4 v1, 0x0

    array-length v0, p0

    sget-object v2, Labcd/KC;->j6:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v2, Labcd/KC;->j6:[B

    array-length v3, v2

    if-lt v0, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    aget-byte v3, p0, v0

    aget-byte v2, v2, v0

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static gn()Labcd/KC;
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Labcd/KC;

    invoke-direct {v0, v1, v1}, Labcd/KC;-><init>(Ljava/io/File;Labcd/pK;)V

    return-object v0
.end method

.method static j6(Labcd/QC;Labcd/QC;)I
    .registers 4

    iget-object v0, p0, Labcd/QC;->Hw:[B

    array-length v1, v0

    invoke-static {v0, v1, p1}, Labcd/KC;->j6([BILabcd/QC;)I

    move-result v0

    return v0
.end method

.method static j6([BILabcd/QC;)I
    .registers 5

    iget-object v0, p2, Labcd/QC;->Hw:[B

    array-length v1, v0

    invoke-static {p0, p1, v0, v1}, Labcd/KC;->j6([BI[BI)I

    move-result v0

    return v0
.end method

.method static j6([BI[BI)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    if-lt v1, p3, :cond_2

    :cond_0
    sub-int v0, p1, p3

    :cond_1
    return v0

    :cond_2
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v0, v2

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static j6(Ljava/io/File;Labcd/pK;)Labcd/KC;
    .registers 4

    new-instance v0, Labcd/KC;

    invoke-direct {v0, p0, p1}, Labcd/KC;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v0}, Labcd/KC;->VH()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Labcd/KC;->u7()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Labcd/KC;->tp()V

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Labcd/KC;->tp()V

    throw v1

    :catch_2
    move-exception v1

    invoke-virtual {v0}, Labcd/KC;->tp()V

    throw v1

    :cond_0
    new-instance v0, Labcd/dD;

    invoke-direct {v0, p0}, Labcd/dD;-><init>(Ljava/io/File;)V

    throw v0
.end method

.method public static j6(Ljava/io/File;Labcd/pK;Labcd/FD;)Labcd/KC;
    .registers 4

    invoke-static {p0, p1}, Labcd/KC;->j6(Ljava/io/File;Labcd/pK;)Labcd/KC;

    move-result-object v0

    invoke-direct {v0, p2}, Labcd/KC;->j6(Labcd/FD;)V

    return-object v0
.end method

.method private static j6([B)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "ISO-8859-1"

    invoke-direct {v1, p0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Labcd/FD;)V
    .registers 2

    iput-object p1, p0, Labcd/KC;->J8:Labcd/FD;

    return-void
.end method

.method private j6(Labcd/WG;)V
    .registers 7

    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->dirCacheFileIsNotLocked:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->dirCacheIsNotLocked:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Ljava/io/InputStream;)V
    .registers 15

    const/16 v12, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v2

    const/16 v0, 0x14

    new-array v3, v0, [B

    const/16 v0, 0xc

    invoke-static {v1, v3, v7, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/16 v0, 0xc

    invoke-virtual {v2, v3, v7, v0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-static {v3}, Labcd/KC;->DW([B)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3, v11}, Labcd/FK;->j6([BI)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v3, v12}, Labcd/FK;->j6([BI)I

    move-result v4

    iput v4, p0, Labcd/KC;->VH:I

    iget v4, p0, Labcd/KC;->VH:I

    if-ltz v4, :cond_7

    invoke-static {v0}, Labcd/QC;->j6(Z)I

    move-result v0

    iget v4, p0, Labcd/KC;->VH:I

    mul-int/2addr v0, v4

    new-array v5, v0, [B

    new-array v0, v4, [Labcd/QC;

    iput-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    new-instance v4, Labcd/EK;

    invoke-direct {v4}, Labcd/EK;-><init>()V

    move v0, v7

    :goto_1
    iget v8, p0, Labcd/KC;->VH:I

    if-lt v0, v8, :cond_6

    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    :goto_2
    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    const/16 v0, 0x14

    invoke-static {v1, v3, v7, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->we:[B

    iget-object v0, p0, Labcd/KC;->we:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    if-ne v0, v10, :cond_8

    move v0, v7

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->DIRCChecksumMismatch:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    invoke-virtual {v2, v3, v7, v12}, Ljava/security/MessageDigest;->update([BII)V

    const-wide/16 v4, 0x8

    invoke-static {v1, v4, v5}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    invoke-static {v3, v11}, Labcd/FK;->FH([BI)J

    move-result-wide v4

    invoke-static {v3, v7}, Labcd/FK;->j6([BI)I

    move-result v0

    const v8, 0x54524545

    if-eq v0, v8, :cond_4

    aget-byte v0, v3, v7

    const/16 v8, 0x41

    if-lt v0, v8, :cond_3

    aget-byte v0, v3, v7

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Labcd/KC;->j6(Ljava/io/InputStream;Ljava/security/MessageDigest;[BJ)V

    goto :goto_2

    :cond_3
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->DIRCExtensionNotSupportedByThisVersion:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3}, Labcd/KC;->j6([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v8, v4

    if-ltz v0, :cond_5

    long-to-int v0, v4

    new-array v0, v0, [B

    array-length v4, v0

    invoke-static {v1, v0, v7, v4}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    array-length v4, v0

    invoke-virtual {v2, v0, v7, v4}, Ljava/security/MessageDigest;->update([BII)V

    new-instance v4, Labcd/TC;

    new-instance v5, Labcd/EK;

    invoke-direct {v5}, Labcd/EK;-><init>()V

    const/4 v8, 0x0

    invoke-direct {v4, v0, v5, v8}, Labcd/TC;-><init>([BLabcd/EK;Labcd/TC;)V

    iput-object v4, p0, Labcd/KC;->gn:Labcd/TC;

    goto/16 :goto_2

    :cond_5
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->DIRCExtensionIsTooLargeAt:Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v3}, Labcd/KC;->j6([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v8, p0, Labcd/KC;->Zo:[Labcd/QC;

    new-instance v9, Labcd/QC;

    invoke-direct {v9, v5, v4, v1, v2}, Labcd/QC;-><init>([BLabcd/EK;Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    aput-object v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->DIRCHasTooManyEntries:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unknownDIRCVersion:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notADIRCFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Ljava/io/InputStream;Ljava/security/MessageDigest;[BJ)V
    .registers 12

    const/4 v4, 0x0

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, v2, p4

    if-ltz v1, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p2, v0, v4, v1}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v2, v1

    sub-long/2addr p4, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->shortReadOfOptionalDIRCExtensionExpectedAnotherBytes:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Labcd/KC;->j6([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(I)I
    .registers 5

    iget-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v0, v0, p1

    add-int/lit8 v1, p1, 0x1

    move v2, v1

    :goto_0
    iget v1, p0, Labcd/KC;->VH:I

    if-lt v2, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Labcd/KC;->j6(Labcd/QC;Labcd/QC;)I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_0
.end method

.method public DW(Ljava/lang/String;)Labcd/QC;
    .registers 4

    invoke-virtual {p0, p1}, Labcd/KC;->j6(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public DW()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/KC;->EQ:Labcd/LG;

    sget-object v0, Labcd/KC;->DW:[Labcd/QC;

    iput-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    const/4 v0, 0x0

    iput v0, p0, Labcd/KC;->VH:I

    iput-object v1, p0, Labcd/KC;->gn:Labcd/TC;

    sget-object v0, Labcd/KC;->FH:[B

    iput-object v0, p0, Labcd/KC;->we:[B

    return-void
.end method

.method public EQ()V
    .registers 4

    iget-object v1, p0, Labcd/KC;->u7:Labcd/WG;

    invoke-direct {p0, v1}, Labcd/KC;->j6(Labcd/WG;)V

    :try_start_0
    new-instance v0, Labcd/XK;

    invoke-virtual {v1}, Labcd/WG;->FH()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Labcd/KC;->j6(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Labcd/WG;->v5()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v1}, Labcd/WG;->v5()V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v1}, Labcd/WG;->v5()V

    throw v0
.end method

.method public FH()Z
    .registers 3

    iget-object v0, p0, Labcd/KC;->u7:Labcd/WG;

    invoke-direct {p0, v0}, Labcd/KC;->j6(Labcd/WG;)V

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/KC;->u7:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->j6()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    iget-object v0, p0, Labcd/KC;->J8:Labcd/FD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/KC;->we:[B

    iget-object v1, p0, Labcd/KC;->J0:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/KC;->J8:Labcd/FD;

    new-instance v1, Labcd/ED;

    invoke-direct {v1}, Labcd/ED;-><init>()V

    invoke-interface {v0, v1}, Labcd/FD;->j6(Labcd/ED;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Labcd/KC;->v5:Ljava/io/File;

    if-eqz v1, :cond_1

    new-instance v2, Labcd/WG;

    iget-object v3, p0, Labcd/KC;->tp:Labcd/pK;

    invoke-direct {v2, v1, v3}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v2}, Labcd/WG;->Hw()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Labcd/WG;->FH(Z)V

    iput-object v2, p0, Labcd/KC;->u7:Labcd/WG;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->dirCacheDoesNotHaveABackingFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Zo()Z
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Labcd/KC;->VH:I

    if-lt v0, v2, :cond_0

    :goto_1
    return v1

    :cond_0
    iget-object v2, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Labcd/QC;->VH()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Labcd/KC;->j6([BI)I

    move-result v0

    return v0
.end method

.method j6([BI)I
    .registers 7

    iget v0, p0, Labcd/KC;->VH:I

    const/4 v2, 0x0

    move v1, v0

    :goto_0
    if-lt v2, v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    :cond_0
    return v0

    :cond_1
    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v3, v3, v0

    invoke-static {p1, p2, v3}, Labcd/KC;->j6([BILabcd/QC;)I

    move-result v3

    if-gez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    :goto_1
    if-lez v0, :cond_0

    iget-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-static {p1, p2, v1}, Labcd/KC;->j6([BILabcd/QC;)I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0
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

    aget-object v0, v0, p1

    return-object v0
.end method

.method public j6(Z)Labcd/TC;
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Labcd/KC;->gn:Labcd/TC;

    if-nez v0, :cond_0

    new-instance v0, Labcd/TC;

    invoke-direct {v0}, Labcd/TC;-><init>()V

    iput-object v0, p0, Labcd/KC;->gn:Labcd/TC;

    :cond_0
    iget-object v0, p0, Labcd/KC;->gn:Labcd/TC;

    iget-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    iget v2, p0, Labcd/KC;->VH:I

    invoke-virtual {v0, v1, v2, v3, v3}, Labcd/TC;->j6([Labcd/QC;III)V

    :cond_1
    iget-object v0, p0, Labcd/KC;->gn:Labcd/TC;

    return-object v0
.end method

.method public j6(Labcd/EE;)Labcd/yE;
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Labcd/KC;->j6(Z)Labcd/TC;

    move-result-object v0

    iget-object v1, p0, Labcd/KC;->Zo:[Labcd/QC;

    invoke-virtual {v0, v1, v2, v2, p1}, Labcd/TC;->j6([Labcd/QC;IILabcd/EE;)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method j6(I[Labcd/QC;II)V
    .registers 6

    iget-object v0, p0, Labcd/KC;->Zo:[Labcd/QC;

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method j6(Ljava/io/OutputStream;)V
    .registers 16

    const-wide/16 v12, 0x3e8

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v1, 0x0

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/security/DigestOutputStream;

    invoke-direct {v4, p1, v3}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    move v0, v1

    move v2, v1

    :goto_0
    iget v5, p0, Labcd/KC;->VH:I

    if-lt v0, v5, :cond_6

    const/16 v0, 0x80

    new-array v5, v0, [B

    sget-object v0, Labcd/KC;->j6:[B

    array-length v6, v0

    invoke-static {v0, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-static {v5, v9, v0}, Labcd/FK;->DW([BII)V

    iget v0, p0, Labcd/KC;->VH:I

    invoke-static {v5, v10, v0}, Labcd/FK;->DW([BII)V

    const/16 v0, 0xc

    invoke-virtual {v4, v5, v1, v0}, Ljava/security/DigestOutputStream;->write([BII)V

    iget-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iget v2, p0, Labcd/KC;->VH:I

    if-lt v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Labcd/KC;->gn:Labcd/TC;

    if-eqz v0, :cond_1

    new-instance v0, Labcd/RK$d;

    invoke-direct {v0}, Labcd/RK$d;-><init>()V

    iget-object v2, p0, Labcd/KC;->gn:Labcd/TC;

    invoke-virtual {v2, v5, v0}, Labcd/TC;->j6([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Labcd/RK;->close()V

    const v2, 0x54524545

    invoke-static {v5, v1, v2}, Labcd/FK;->DW([BII)V

    invoke-virtual {v0}, Labcd/RK$d;->DW()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-static {v5, v9, v2}, Labcd/FK;->DW([BII)V

    invoke-virtual {v4, v5, v1, v10}, Ljava/security/DigestOutputStream;->write([BII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Labcd/RK$d;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->J0:[B

    iget-object v0, p0, Labcd/KC;->J0:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Labcd/QC;->j6(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Labcd/LG;->j6()J

    move-result-wide v6

    div-long/2addr v6, v12

    long-to-int v2, v6

    iget-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    invoke-virtual {v0}, Labcd/LG;->j6()J

    move-result-wide v6

    rem-long/2addr v6, v12

    long-to-int v6, v6

    move v0, v1

    :goto_3
    iget v7, p0, Labcd/KC;->VH:I

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v7, v7, v0

    const v8, 0xf4240

    mul-int/2addr v8, v6

    invoke-virtual {v7, v2, v8}, Labcd/QC;->j6(II)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Labcd/QC;->Ws()V

    :cond_5
    invoke-virtual {v7, v4}, Labcd/QC;->j6(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Labcd/KC;->Zo:[Labcd/QC;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Labcd/QC;->EQ()Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method j6([Labcd/QC;I)V
    .registers 4

    iput-object p1, p0, Labcd/KC;->Zo:[Labcd/QC;

    iput p2, p0, Labcd/KC;->VH:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/KC;->gn:Labcd/TC;

    return-void
.end method

.method public tp()V
    .registers 3

    iget-object v0, p0, Labcd/KC;->u7:Labcd/WG;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/KC;->u7:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->v5()V

    :cond_0
    return-void
.end method

.method public u7()V
    .registers 3

    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Labcd/KC;->DW()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    if-eqz v0, :cond_2

    iget-object v1, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-virtual {v0, v1}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Labcd/KC;->DW()V

    invoke-direct {p0, v1}, Labcd/KC;->j6(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Labcd/KC;->v5:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/KC;->EQ:Labcd/LG;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/KC;->DW()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->dirCacheDoesNotHaveABackingFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/KC;->VH:I

    return v0
.end method
