.class public final Lcom/a/b/e/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x7631

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/a/b/e/b/a;->a(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(III)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p0

    and-int v2, p0, p1

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_17

    const-string v3, "|public"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_20

    const-string v3, "|private"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_29

    const-string v3, "|protected"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_32

    const-string v3, "|static"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_3b

    const-string v3, "|final"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_46

    if-ne p2, v4, :cond_c8

    const-string v3, "|super"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    :goto_46
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_51

    if-ne p2, v5, :cond_cf

    const-string v3, "|bridge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    :goto_51
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_5c

    if-ne p2, v5, :cond_d6

    const-string v3, "|varargs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    :goto_5c
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_65

    const-string v3, "|native"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_6e

    const-string v3, "|interface"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_77

    const-string v3, "|abstract"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_80

    const-string v3, "|strictfp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_89

    const-string v3, "|synthetic"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_89
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_92

    const-string v3, "|annotation"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_9b

    const-string v3, "|enum"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    const/high16 v3, 0x10000

    and-int/2addr v3, v2

    if-eqz v3, :cond_a5

    const-string v3, "|constructor"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a5
    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_af

    const-string v2, "|declared_synchronized"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_af
    if-nez v1, :cond_b7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_c3

    :cond_b7
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c8
    const-string v3, "|synchronized"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_46

    :cond_cf
    const-string v3, "|volatile"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_51

    :cond_d6
    const-string v3, "|transient"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c
.end method

.method public static b(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x761f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/a/b/e/b/a;->a(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x50df

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/a/b/e/b/a;->a(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(I)Ljava/lang/String;
    .registers 3

    const v0, 0x31dff

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/a/b/e/b/a;->a(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static f(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static g(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static h(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static i(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static j(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
