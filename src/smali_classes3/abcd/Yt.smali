.class public final Labcd/Yt;
.super Ljava/lang/Object;


# direct methods
.method public static DW(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x5

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_c

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_10

    :cond_c
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_10
    const/4 v2, 0x4

    if-ge v1, v2, :cond_23

    rsub-int/lit8 v3, v1, 0x4

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_23
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static DW(J)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x10

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_17

    rsub-int/lit8 v3, v2, 0xf

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    const/4 v3, 0x4

    shr-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static FH(I)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x9

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_d

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_11

    :cond_d
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_11
    const/16 v2, 0x8

    if-ge v1, v2, :cond_26

    rsub-int/lit8 v2, v1, 0x8

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static Hw(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_17

    rsub-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_17
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static VH(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x6

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_17

    rsub-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_17
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static Zo(I)Ljava/lang/String;
    .registers 2

    int-to-char v0, p0

    if-ne p0, v0, :cond_8

    invoke-static {p0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {p0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gn(I)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x8

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_18

    rsub-int/lit8 v3, v2, 0x7

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_c

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_10

    :cond_c
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_10
    const/4 v2, 0x2

    if-ge v1, v2, :cond_24

    rsub-int/lit8 v2, v1, 0x2

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static j6(J)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x11

    new-array v0, v0, [C

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p0, v1

    if-gez v4, :cond_11

    const/16 v1, 0x2d

    aput-char v1, v0, v3

    neg-long p0, p0

    goto :goto_15

    :cond_11
    const/16 v1, 0x2b

    aput-char v1, v0, v3

    :goto_15
    const/16 v1, 0x10

    if-ge v3, v1, :cond_29

    rsub-int/lit8 v2, v3, 0x10

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v0, v2

    const/4 v1, 0x4

    shr-long/2addr p0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_29
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static j6([BIIIII)Ljava/lang/String;
    .registers 12

    add-int v0, p1, p2

    or-int v1, p1, p2

    or-int/2addr v1, v0

    if-ltz v1, :cond_79

    array-length v1, p0

    if-gt v0, v1, :cond_79

    if-ltz p3, :cond_71

    if-nez p2, :cond_11

    const-string p0, ""

    return-object p0

    :cond_11
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x4

    const/4 v2, 0x6

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1c
    const/16 v4, 0xa

    if-lez p2, :cond_67

    if-nez v3, :cond_46

    const/4 v5, 0x2

    if-eq p5, v5, :cond_39

    const/4 v5, 0x4

    if-eq p5, v5, :cond_34

    if-eq p5, v2, :cond_2f

    invoke-static {p3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    :cond_2f
    invoke-static {p3}, Labcd/Yt;->VH(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    :cond_34
    invoke-static {p3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    :cond_39
    invoke-static {p3}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v5

    :goto_3d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4f

    :cond_46
    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_4f

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4f
    :goto_4f
    aget-byte v5, p0, p1

    invoke-static {v5}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p4, :cond_64

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :cond_64
    add-int/lit8 p2, p2, -0x1

    goto :goto_1c

    :cond_67
    if-eqz v3, :cond_6c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "arr.length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "..!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_a2

    :goto_a1
    throw p0

    :goto_a2
    goto :goto_a1
.end method

.method public static u7(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    and-int/lit8 p0, p0, 0xf

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static v5(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x4

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_16

    rsub-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/2addr p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
