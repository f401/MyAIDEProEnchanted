.class public final Labcd/jq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/jq;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/jq;->j6:[B

    return-void
.end method


# virtual methods
.method public Hw()Labcd/St;
    .registers 3

    new-instance v0, Labcd/Rt;

    iget-object v1, p0, Labcd/jq;->j6:[B

    invoke-direct {v0, v1}, Labcd/Rt;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/jq;

    invoke-virtual {p0, p1}, Labcd/jq;->j6(Labcd/jq;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    const-class v2, Labcd/jq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    check-cast p1, Labcd/jq;

    iget-object v2, p0, Labcd/jq;->j6:[B

    iget-object p1, p1, Labcd/jq;->j6:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/jq;->j6:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public j6(Labcd/jq;)I
    .registers 6

    iget-object v0, p0, Labcd/jq;->j6:[B

    array-length v0, v0

    iget-object v1, p1, Labcd/jq;->j6:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Labcd/jq;->j6:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Labcd/jq;->j6:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1d

    and-int/lit16 p1, v2, 0xff

    and-int/lit16 v0, v3, 0xff

    sub-int/2addr p1, v0

    return p1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_20
    iget-object v0, p0, Labcd/jq;->j6:[B

    array-length v0, v0

    iget-object p1, p1, Labcd/jq;->j6:[B

    array-length p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public j6(Labcd/hr$a;)V
    .registers 3

    iget-object v0, p0, Labcd/jq;->j6:[B

    invoke-virtual {p1, v0}, Labcd/hr$a;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/jq;->j6:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "...("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/jq;->j6:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
