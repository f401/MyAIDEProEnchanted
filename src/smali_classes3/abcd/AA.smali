.class public Labcd/AA;
.super Ljava/lang/Object;


# instance fields
.field protected final DW:[B

.field protected final j6:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Labcd/AA;->j6:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/AA;->DW:[B

    invoke-virtual {p0}, Labcd/AA;->j6()V

    return-void

    :array_16
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method


# virtual methods
.method public j6([BIILjava/io/OutputStream;)I
    .registers 9

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Labcd/AA;->j6:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Labcd/AA;->j6:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    mul-int/lit8 p3, p3, 0x2

    return p3
.end method

.method protected j6()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Labcd/AA;->j6:[B

    array-length v2, v1

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Labcd/AA;->DW:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    iget-object v0, p0, Labcd/AA;->DW:[B

    const/16 v1, 0x61

    aget-byte v1, v0, v1

    const/16 v2, 0x41

    aput-byte v1, v0, v2

    const/16 v1, 0x62

    aget-byte v1, v0, v1

    const/16 v2, 0x42

    aput-byte v1, v0, v2

    const/16 v1, 0x63

    aget-byte v1, v0, v1

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    const/16 v1, 0x64

    aget-byte v1, v0, v1

    const/16 v2, 0x44

    aput-byte v1, v0, v2

    const/16 v1, 0x65

    aget-byte v1, v0, v1

    const/16 v2, 0x45

    aput-byte v1, v0, v2

    const/16 v1, 0x66

    aget-byte v1, v0, v1

    const/16 v2, 0x46

    aput-byte v1, v0, v2

    return-void
.end method
