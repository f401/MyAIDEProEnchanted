.class public final Labcd/Mr;
.super Ljava/lang/Object;


# direct methods
.method public static DW(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x50df

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Labcd/Mr;->j6(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static FH(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x761f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Labcd/Mr;->j6(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Hw(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static VH(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Zo(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gn(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j6(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x7631

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Labcd/Mr;->j6(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j6(III)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x50

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    xor-int/lit8 v0, p1, -0x1

    and-int v2, v0, p0

    and-int v3, p0, p1

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_0

    const-string v0, "|public"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    const-string v0, "|private"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_2

    const-string v0, "|protected"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_3

    const-string v0, "|static"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_4

    const-string v0, "|final"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_5

    if-ne p2, v4, :cond_13

    const-string v0, "|super"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_6

    if-ne p2, v5, :cond_14

    const-string v0, "|bridge"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_7

    if-ne p2, v5, :cond_15

    const-string v0, "|varargs"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_8

    const-string v0, "|native"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_9

    const-string v0, "|interface"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_a

    const-string v0, "|abstract"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_b

    const-string v0, "|strictfp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    and-int/lit16 v0, v3, 0x1000

    if-eqz v0, :cond_c

    const-string v0, "|synthetic"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    and-int/lit16 v0, v3, 0x2000

    if-eqz v0, :cond_d

    const-string v0, "|annotation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    and-int/lit16 v0, v3, 0x4000

    if-eqz v0, :cond_e

    const-string v0, "|enum"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    const/high16 v0, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    const-string v0, "|constructor"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    const/high16 v0, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    const-string v0, "|declared_synchronized"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    if-nez v2, :cond_11

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    const/16 v0, 0x7c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, "|synchronized"

    goto/16 :goto_0

    :cond_14
    const-string v0, "|volatile"

    goto :goto_1

    :cond_15
    const-string v0, "|transient"

    goto :goto_2
.end method

.method public static tp(I)Ljava/lang/String;
    .locals 2

    const v0, 0x31dff

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Labcd/Mr;->j6(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u7(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v5(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
