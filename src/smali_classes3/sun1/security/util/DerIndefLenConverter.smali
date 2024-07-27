.class Lsun1/security/util/DerIndefLenConverter;
.super Ljava/lang/Object;


# instance fields
.field private data:[B

.field private dataPos:I

.field private dataSize:I

.field private index:I

.field private ndefsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private newData:[B

.field private newDataPos:I

.field private numOfTotalLenBytes:I

.field private unresolved:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->unresolved:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    return-void
.end method

.method private getLengthBytes(I)[B
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    new-array v0, v3, [B

    int-to-byte v1, p1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    new-array v0, v4, [B

    const/16 v1, -0x7f

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    int-to-byte v1, p1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    new-array v0, v5, [B

    const/16 v1, -0x7e

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    int-to-byte v1, p1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    new-array v0, v6, [B

    const/16 v1, -0x7d

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    int-to-byte v1, p1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/16 v1, -0x7c

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    int-to-byte v1, p1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    goto/16 :goto_0
.end method

.method private isEOC(I)Z
    .registers 3

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_0

    and-int/lit16 v0, p1, 0xc0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isIndefinite(I)Z
    .registers 2

    invoke-static {p0}, Lsun1/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x7f

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLongForm(I)Z
    .registers 3

    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseLength()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    iget v2, p0, Lsun1/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lsun1/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->unresolved:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->unresolved:I

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lsun1/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v2

    if-eqz v2, :cond_6

    and-int/lit8 v3, v1, 0x7f

    const/4 v1, 0x4

    if-gt v3, v1, :cond_5

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataSize:I

    iget v2, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    if-lt v1, v2, :cond_4

    move v2, v0

    move v1, v0

    :goto_1
    if-lt v2, v3, :cond_3

    if-ltz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid length bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    iget v4, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too little data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too much data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    and-int/lit8 v0, v1, 0x7f

    goto :goto_0
.end method

.method private parseTag()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    aget-byte v0, v1, v0

    invoke-direct {p0, v0}, Lsun1/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    const/4 v1, 0x0

    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-gez v2, :cond_2

    move-object v0, v1

    :goto_2
    if-ltz v2, :cond_3

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lsun1/security/util/DerIndefLenConverter;->getLengthBytes(I)[B

    move-result-object v0

    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->unresolved:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->unresolved:I

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    :cond_1
    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOC does not have matching indefinite-length tag"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v1

    check-cast v0, [B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    add-int/2addr v3, v0

    move v0, v2

    goto :goto_1
.end method

.method private parseValue(I)V
    .registers 3

    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    return-void
.end method

.method private writeLength(I)V
    .registers 6

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v3, -0x7f

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v1, p1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v3, -0x7e

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v3, -0x7d

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v1, p1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v3, -0x7c

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method private writeLengthAndValue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v0, v1, v0

    and-int/lit16 v3, v0, 0xff

    invoke-static {v3}, Lsun1/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->index:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lsun1/security/util/DerIndefLenConverter;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iget v3, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lsun1/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    move v0, v2

    :goto_1
    and-int/lit8 v2, v3, 0x7f

    if-lt v1, v2, :cond_3

    if-ltz v0, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lsun1/security/util/DerIndefLenConverter;->writeLength(I)V

    invoke-direct {p0, v0}, Lsun1/security/util/DerIndefLenConverter;->writeValue(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid length bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    iget v4, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v2, v2, v4

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    goto :goto_1

    :cond_4
    and-int/lit8 v0, v3, 0x7f

    goto :goto_2
.end method

.method private writeTag()V
    .registers 5

    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v0, v1, v0

    invoke-direct {p0, v0}, Lsun1/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    invoke-direct {p0}, Lsun1/security/util/DerIndefLenConverter;->writeTag()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iget v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_0
.end method

.method private writeValue(I)V
    .registers 8

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iget v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    iget-object v3, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    iget v4, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method convert([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput-object p1, p0, Lsun1/security/util/DerIndefLenConverter;->data:[B

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->index:I

    array-length v0, p1

    iput v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataSize:I

    :goto_0
    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataSize:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->unresolved:I

    if-nez v0, :cond_1

    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->newDataPos:I

    iput v2, p0, Lsun1/security/util/DerIndefLenConverter;->index:I

    :goto_1
    iget v0, p0, Lsun1/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Lsun1/security/util/DerIndefLenConverter;->dataSize:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lsun1/security/util/DerIndefLenConverter;->newData:[B

    return-object v0

    :cond_0
    invoke-direct {p0}, Lsun1/security/util/DerIndefLenConverter;->writeTag()V

    invoke-direct {p0}, Lsun1/security/util/DerIndefLenConverter;->writeLengthAndValue()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not all indef len BER resolved"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lsun1/security/util/DerIndefLenConverter;->parseTag()V

    invoke-direct {p0}, Lsun1/security/util/DerIndefLenConverter;->parseLength()I

    move-result v0

    invoke-direct {p0, v0}, Lsun1/security/util/DerIndefLenConverter;->parseValue(I)V

    goto :goto_0
.end method
