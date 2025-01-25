.class public Labcd/vN;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1b

    goto :goto_2c

    :cond_1b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v1, v4, :cond_25

    if-eq v3, v4, :cond_28

    :cond_25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_28
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_14

    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static FH(Ljava/lang/String;)Labcd/EL;
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/VP;->j6(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown encoding in name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6(Labcd/qL;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v1, p0, Labcd/KL;

    const-string v2, "\\"

    const/16 v3, 0x23

    const/4 v4, 0x0

    if-eqz v1, :cond_34

    instance-of v1, p0, Labcd/BM;

    if-nez v1, :cond_34

    check-cast p0, Labcd/KL;

    invoke-interface {p0}, Labcd/KL;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_57

    :cond_34
    :try_start_34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p0

    const-string v5, "DER"

    invoke-virtual {p0, v5}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Labcd/VP;->j6([B)[B

    move-result-object p0

    invoke-static {p0}, Labcd/vN;->j6([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_57} :catch_c0

    :goto_57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v5, 0x5c

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v1, v6, :cond_72

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_72

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_72

    const/4 v4, 0x2

    :cond_72
    :goto_72
    if-ne v4, p0, :cond_79

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_b7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-eq v1, v3, :cond_b7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_b7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_b7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_b7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_b7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x3e

    if-eq v1, v3, :cond_b7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_be

    :cond_b7
    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 p0, p0, 0x1

    :cond_be
    add-int/2addr v4, v7

    goto :goto_72

    :catch_c0
    move-exception p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Other value has no encoded form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ca

    :goto_c9
    throw p0

    :goto_ca
    goto :goto_c9
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/TP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2d

    invoke-static {p0}, Labcd/vN;->FH(Ljava/lang/String;)Labcd/EL;

    move-result-object v0

    instance-of v1, v0, Labcd/KL;

    if-eqz v1, :cond_2d

    check-cast v0, Labcd/KL;

    invoke-interface {v0}, Labcd/KL;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/TP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2d
    invoke-static {p0}, Labcd/vN;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6([B)Ljava/lang/String;
    .registers 5

    array-length v0, p0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ne v2, v0, :cond_c

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_c
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public static j6(Ljava/lang/StringBuffer;Labcd/qN;Ljava/util/Hashtable;)V
    .registers 4

    invoke-virtual {p1}, Labcd/qN;->v5()Labcd/zL;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_d

    goto :goto_15

    :cond_d
    invoke-virtual {p1}, Labcd/qN;->v5()Labcd/zL;

    move-result-object p2

    invoke-virtual {p2}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p2

    :goto_15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Labcd/qN;->Zo()Labcd/qL;

    move-result-object p1

    invoke-static {p1}, Labcd/vN;->j6(Labcd/qL;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
