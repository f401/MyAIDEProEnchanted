.class public Labcd/WP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/UP;


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

    iput-object v0, p0, Labcd/WP;->j6:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/WP;->DW:[B

    invoke-virtual {p0}, Labcd/WP;->j6()V

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

.method private j6(C)Z
    .registers 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_12

    const/16 v0, 0xd

    if-eq p1, v0, :cond_12

    const/16 v0, 0x9

    if-eq p1, v0, :cond_12

    const/16 v0, 0x20

    if-eq p1, v0, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public j6(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    if-gtz v0, :cond_7

    goto :goto_13

    :cond_7
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Labcd/WP;->j6(C)Z

    move-result v1

    if-nez v1, :cond_55

    :goto_13
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    if-lt v1, v0, :cond_18

    return v2

    :cond_18
    :goto_18
    if-ge v1, v0, :cond_28

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Labcd/WP;->j6(C)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_28
    :goto_28
    iget-object v3, p0, Labcd/WP;->DW:[B

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v3, v1

    :goto_32
    if-ge v4, v0, :cond_42

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Labcd/WP;->j6(C)Z

    move-result v3

    if-nez v3, :cond_3f

    goto :goto_42

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_42
    :goto_42
    shl-int/lit8 v1, v1, 0x4

    iget-object v3, p0, Labcd/WP;->DW:[B

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v3, v3, v5

    or-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v4, 0x1

    goto :goto_15

    :cond_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method

.method public j6([BIILjava/io/OutputStream;)I
    .registers 9

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-lt v0, v1, :cond_8

    mul-int/lit8 p3, p3, 0x2

    return p3

    :cond_8
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Labcd/WP;->j6:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Labcd/WP;->j6:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected j6()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Labcd/WP;->j6:[B

    array-length v2, v1

    if-lt v0, v2, :cond_39

    iget-object v0, p0, Labcd/WP;->DW:[B

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

    :cond_39
    iget-object v2, p0, Labcd/WP;->DW:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
