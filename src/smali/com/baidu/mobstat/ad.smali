.class Lcom/baidu/mobstat/ad;
.super Ljava/lang/Object;


# direct methods
.method public static a([B[BI)V
    .registers 5

    if-ltz p2, :cond_57

    if-eqz p0, :cond_4f

    array-length v0, p0

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_47

    array-length v0, p1

    if-eqz v0, :cond_47

    array-length v0, p0

    array-length v1, p1

    if-lt v0, v1, :cond_32

    array-length v0, p1

    array-length v1, p0

    add-int/2addr v0, p2

    if-lt v1, v0, :cond_1b

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "start should be less than:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "dst array length should be longer than:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src array should not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dst array should not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "start should be more than zero!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BI)[B
    .registers 3

    if-eqz p0, :cond_14

    array-length v0, p0

    if-eqz v0, :cond_14

    if-ltz p1, :cond_c

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length should be more than zero!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "original array should not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
