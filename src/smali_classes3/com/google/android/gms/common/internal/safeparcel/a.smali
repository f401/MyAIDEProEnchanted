.class public Lcom/google/android/gms/common/internal/safeparcel/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/safeparcel/a$a;
    }
.end annotation


# direct methods
.method public static BT(Landroid/os/Parcel;I)Ljava/lang/Long;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;III)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static DW(Landroid/os/Parcel;)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v3

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_34

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Expected object header. Got 0x"

    if-eqz v1, :cond_29

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_34
    add-int/2addr v1, v2

    if-lt v1, v2, :cond_3e

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_3e

    return v1

    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Size read is invalid start="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method public static DW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static DW(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .registers 10

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [Ljava/math/BigDecimal;

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_2c

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v6, v7, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2c
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static EQ(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_26

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_26
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static FH(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static FH(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static Hw(Landroid/os/Parcel;I)[Ljava/math/BigInteger;
    .registers 8

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [Ljava/math/BigInteger;

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_23

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_23
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static J0(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static J8(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .registers 10

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v3, v2, [Landroid/os/Parcel;

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_32

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    invoke-virtual {v7, p0, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    aput-object v7, v3, v4

    add-int/2addr v6, v5

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_2f

    :cond_2d
    aput-object v1, v3, v4

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_32
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static Mr(Landroid/os/Parcel;I)D
    .registers 3

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static P8(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static QX(Landroid/os/Parcel;I)[Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static U2(Landroid/os/Parcel;I)Ljava/lang/Double;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;III)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static VH(Landroid/os/Parcel;I)[B
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static Ws(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static a8(Landroid/os/Parcel;I)F
    .registers 3

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0
.end method

.method public static aM(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Overread allowed size end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw p1
.end method

.method public static er(Landroid/os/Parcel;I)I
    .registers 3

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static gW(Landroid/os/Parcel;I)J
    .registers 3

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static gn(Landroid/os/Parcel;I)[D
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static j3(Landroid/os/Parcel;I)Z
    .registers 3

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static j6(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static j6(Landroid/os/Parcel;)I
    .registers 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static j6(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .registers 5

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Ljava/math/BigDecimal;

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {p0, p1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method private static j6(Landroid/os/Parcel;II)V
    .registers 6

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    if-ne p1, p2, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw p1
.end method

.method private static j6(Landroid/os/Parcel;III)V
    .registers 6

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " got "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (0x"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw p1
.end method

.method public static lg(Landroid/os/Parcel;I)Ljava/lang/Float;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;III)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static rN(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static tp(Landroid/os/Parcel;I)[I
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static u7(Landroid/os/Parcel;I)[F
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static v5(Landroid/os/Parcel;I)[Z
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static vy(Landroid/os/Parcel;I)I
    .registers 4

    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_d

    shr-int/lit8 p0, p1, 0x10

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static we(Landroid/os/Parcel;I)[J
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static yS(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->vy(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;III)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
