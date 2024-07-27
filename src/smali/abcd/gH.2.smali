.class public abstract Labcd/gH;
.super Ljava/lang/Object;


# static fields
.field protected static final j6:[B


# instance fields
.field protected final DW:Ljava/security/DigestOutputStream;

.field protected final FH:[B

.field protected Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Labcd/CI;",
            ">;"
        }
    .end annotation
.end field

.field protected v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Labcd/gH;->j6:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x74t
        0x4ft
        0x63t
    .end array-data
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Ljava/security/DigestOutputStream;

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    iput-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/gH;->FH:[B

    return-void

    :cond_0
    new-instance v0, Labcd/XK;

    invoke-direct {v0, p1}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public static j6(Ljava/io/OutputStream;I)Labcd/gH;
    .registers 7

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Labcd/iH;

    invoke-direct {v0, p0}, Labcd/iH;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedPackIndexVersion:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Labcd/hH;

    invoke-direct {v0, p0}, Labcd/hH;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public static j6(Ljava/io/OutputStream;Ljava/util/List;)Labcd/gH;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<+",
            "Labcd/CI;",
            ">;)",
            "Labcd/gH;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Labcd/gH;->j6(Ljava/io/OutputStream;I)Labcd/gH;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    invoke-static {v0}, Labcd/hH;->j6(Labcd/CI;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected DW()V
    .registers 8

    const/16 v5, 0x100

    const/4 v1, 0x0

    new-array v2, v5, [I

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v0, 0x1

    if-nez v4, :cond_2

    :goto_1
    if-lt v0, v5, :cond_1

    array-length v3, v2

    move v0, v1

    :goto_2
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget v4, v2, v0

    iget-object v5, p0, Labcd/gH;->FH:[B

    invoke-static {v5, v1, v4}, Labcd/FK;->DW([BII)V

    iget-object v4, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v5, p0, Labcd/gH;->FH:[B

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v1, v6}, Ljava/security/DigestOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    aget v3, v2, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, v2, v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    invoke-virtual {v0}, Labcd/YD;->Zo()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    aget v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v0

    goto :goto_0
.end method

.method protected abstract FH()V
.end method

.method protected j6()V
    .registers 3

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v1, p0, Labcd/gH;->v5:[B

    invoke-virtual {v0, v1}, Ljava/security/DigestOutputStream;->write([B)V

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/DigestOutputStream;->on(Z)V

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    invoke-virtual {v0}, Ljava/security/DigestOutputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/DigestOutputStream;->write([B)V

    return-void
.end method

.method protected j6(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    sget-object v1, Labcd/gH;->j6:[B

    invoke-virtual {v0, v1}, Ljava/security/DigestOutputStream;->write([B)V

    iget-object v0, p0, Labcd/gH;->FH:[B

    invoke-static {v0, v3, p1}, Labcd/FK;->DW([BII)V

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v1, p0, Labcd/gH;->FH:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/DigestOutputStream;->write([BII)V

    return-void
.end method

.method public j6(Ljava/util/List;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Labcd/CI;",
            ">;[B)V"
        }
    .end annotation

    iput-object p1, p0, Labcd/gH;->Hw:Ljava/util/List;

    iput-object p2, p0, Labcd/gH;->v5:[B

    invoke-virtual {p0}, Labcd/gH;->FH()V

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    invoke-virtual {v0}, Ljava/security/DigestOutputStream;->flush()V

    return-void
.end method
