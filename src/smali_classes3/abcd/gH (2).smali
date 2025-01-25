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
            "Ljava/util/List<",
            "+",
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

    fill-array-data v0, :array_a

    sput-object v0, Labcd/gH;->j6:[B

    return-void

    nop

    :array_a
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

    if-eqz v0, :cond_8

    goto :goto_e

    :cond_8
    new-instance v0, Labcd/XK;

    invoke-direct {v0, p1}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_e
    new-instance v0, Ljava/security/DigestOutputStream;

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    iput-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    const/16 p1, 0x18

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/gH;->FH:[B

    return-void
.end method

.method public static j6(Ljava/io/OutputStream;I)Labcd/gH;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v1, 0x2

    if-ne p1, v1, :cond_c

    new-instance p1, Labcd/iH;

    invoke-direct {p1, p0}, Labcd/iH;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedPackIndexVersion:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    new-instance p1, Labcd/hH;

    invoke-direct {p1, p0}, Labcd/hH;-><init>(Ljava/io/OutputStream;)V

    return-object p1
.end method

.method public static j6(Ljava/io/OutputStream;Ljava/util/List;)Labcd/gH;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "+",
            "Labcd/CI;",
            ">;)",
            "Labcd/gH;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x1

    goto :goto_1a

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    invoke-static {v0}, Labcd/hH;->j6(Labcd/CI;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_4

    :cond_19
    const/4 p1, 0x2

    :goto_1a
    invoke-static {p0, p1}, Labcd/gH;->j6(Ljava/io/OutputStream;I)Labcd/gH;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected DW()V
    .registers 8

    const/16 v0, 0x100

    new-array v1, v0, [I

    iget-object v2, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_36

    :goto_11
    if-lt v4, v0, :cond_2a

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-lt v3, v0, :cond_18

    return-void

    :cond_18
    aget v4, v1, v3

    iget-object v5, p0, Labcd/gH;->FH:[B

    invoke-static {v5, v2, v4}, Labcd/FK;->DW([BII)V

    iget-object v4, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v5, p0, Labcd/gH;->FH:[B

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v2, v6}, Ljava/security/DigestOutputStream;->write([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2a
    aget v2, v1, v4

    add-int/lit8 v3, v4, -0x1

    aget v3, v1, v3

    add-int/2addr v2, v3

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/CI;

    invoke-virtual {v3}, Labcd/YD;->Zo()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v5, v1, v3

    add-int/2addr v5, v4

    aput v5, v1, v3

    goto :goto_a
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
    .registers 5

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    sget-object v1, Labcd/gH;->j6:[B

    invoke-virtual {v0, v1}, Ljava/security/DigestOutputStream;->write([B)V

    iget-object v0, p0, Labcd/gH;->FH:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Labcd/FK;->DW([BII)V

    iget-object p1, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v0, p0, Labcd/gH;->FH:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/DigestOutputStream;->write([BII)V

    return-void
.end method

.method public j6(Ljava/util/List;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Labcd/CI;",
            ">;[B)V"
        }
    .end annotation

    iput-object p1, p0, Labcd/gH;->Hw:Ljava/util/List;

    iput-object p2, p0, Labcd/gH;->v5:[B

    invoke-virtual {p0}, Labcd/gH;->FH()V

    iget-object p1, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    invoke-virtual {p1}, Ljava/security/DigestOutputStream;->flush()V

    return-void
.end method
