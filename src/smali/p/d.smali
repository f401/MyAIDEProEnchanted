.class public final Lp/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lp/d;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lp/d;->a:Ljava/lang/Object;

    return-void

    .line 2
    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [B

    fill-array-data p1, :array_7e

    iput-object p1, p0, Lp/d;->b:Ljava/lang/Object;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lp/d;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_29
    iget-object v1, p0, Lp/d;->a:Ljava/lang/Object;

    check-cast v1, [B

    array-length v2, v1

    if-ge v0, v2, :cond_36

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_36
    :goto_36
    iget-object v0, p0, Lp/d;->b:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    if-ge p1, v1, :cond_49

    iget-object v1, p0, Lp/d;->a:Ljava/lang/Object;

    check-cast v1, [B

    aget-byte v0, v0, p1

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_36

    :cond_49
    iget-object p1, p0, Lp/d;->a:Ljava/lang/Object;

    check-cast p1, [B

    const/16 v0, 0x61

    aget-byte v0, p1, v0

    const/16 v1, 0x41

    aput-byte v0, p1, v1

    const/16 v0, 0x62

    aget-byte v0, p1, v0

    const/16 v1, 0x42

    aput-byte v0, p1, v1

    const/16 v0, 0x63

    aget-byte v0, p1, v0

    const/16 v1, 0x43

    aput-byte v0, p1, v1

    const/16 v0, 0x64

    aget-byte v0, p1, v0

    const/16 v1, 0x44

    aput-byte v0, p1, v1

    const/16 v0, 0x65

    aget-byte v0, p1, v0

    const/16 v1, 0x45

    aput-byte v0, p1, v1

    const/16 v0, 0x66

    aget-byte v0, p1, v0

    const/16 v1, 0x46

    aput-byte v0, p1, v1

    return-void

    :array_7e
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

.method public static c(C)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    if-lez v0, :cond_15

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lp/d;->c(C)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_15

    :cond_13
    move v0, v1

    goto :goto_4

    :cond_15
    :goto_15
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-ge v1, v0, :cond_64

    :goto_19
    if-ge v1, v0, :cond_28

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lp/d;->c(C)Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_28
    iget-object v3, p0, Lp/d;->a:Ljava/lang/Object;

    check-cast v3, [B

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v3, v1

    :goto_34
    if-ge v4, v0, :cond_43

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lp/d;->c(C)Z

    move-result v3

    if-eqz v3, :cond_43

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_43
    iget-object v3, p0, Lp/d;->a:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v3, v3, v5

    or-int v5, v1, v3

    if-ltz v5, :cond_5c

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v4, 0x1

    goto :goto_17

    :cond_5c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid characters encountered in Hex string"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    return v2
.end method
