.class public final Labcd/Mr;
.super Ljava/lang/Object;


# direct methods
.method public static DW(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x50df

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Labcd/Mr;->j6(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static FH(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x761f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Labcd/Mr;->j6(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Hw(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static VH(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static Zo(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static gn(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x7631

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Labcd/Mr;->j6(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(III)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p0

    and-int/2addr p0, p1

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_14

    const-string p1, "|public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_1d

    const-string p1, "|private"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1d
    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_26

    const-string p1, "|protected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_26
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_2f

    const-string p1, "|static"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2f
    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_38

    const-string p1, "|final"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_38
    and-int/lit8 p1, p0, 0x20

    const/4 v2, 0x1

    if-eqz p1, :cond_47

    if-ne p2, v2, :cond_42

    const-string p1, "|super"

    goto :goto_44

    :cond_42
    const-string p1, "|synchronized"

    :goto_44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_47
    and-int/lit8 p1, p0, 0x40

    const/4 v3, 0x3

    if-eqz p1, :cond_56

    if-ne p2, v3, :cond_51

    const-string p1, "|bridge"

    goto :goto_53

    :cond_51
    const-string p1, "|volatile"

    :goto_53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_56
    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_64

    if-ne p2, v3, :cond_5f

    const-string p1, "|varargs"

    goto :goto_61

    :cond_5f
    const-string p1, "|transient"

    :goto_61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_64
    and-int/lit16 p1, p0, 0x100

    if-eqz p1, :cond_6d

    const-string p1, "|native"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6d
    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_76

    const-string p1, "|interface"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_76
    and-int/lit16 p1, p0, 0x400

    if-eqz p1, :cond_7f

    const-string p1, "|abstract"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7f
    and-int/lit16 p1, p0, 0x800

    if-eqz p1, :cond_88

    const-string p1, "|strictfp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_88
    and-int/lit16 p1, p0, 0x1000

    if-eqz p1, :cond_91

    const-string p1, "|synthetic"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_91
    and-int/lit16 p1, p0, 0x2000

    if-eqz p1, :cond_9a

    const-string p1, "|annotation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9a
    and-int/lit16 p1, p0, 0x4000

    if-eqz p1, :cond_a3

    const-string p1, "|enum"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a3
    const/high16 p1, 0x10000

    and-int/2addr p1, p0

    if-eqz p1, :cond_ad

    const-string p1, "|constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ad
    const/high16 p1, 0x20000

    and-int/2addr p0, p1

    if-eqz p0, :cond_b7

    const-string p0, "|declared_synchronized"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b7
    if-nez v1, :cond_bf

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_cb

    :cond_bf
    const/16 p0, 0x7c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_cb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tp(I)Ljava/lang/String;
    .registers 3

    const v0, 0x31dff

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Labcd/Mr;->j6(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u7(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static v5(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
