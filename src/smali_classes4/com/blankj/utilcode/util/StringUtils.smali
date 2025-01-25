.class public final Lcom/blankj/utilcode/util/StringUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v3, v2, :cond_32

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_20

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_20
    move v2, v1

    :goto_21
    if-ge v2, v3, :cond_4

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2f

    move v0, v1

    goto :goto_4

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_32
    move v0, v1

    goto :goto_4
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    array-length v0, p1

    if-lez v0, :cond_b

    :try_start_7
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/util/IllegalFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object p0

    :cond_b
    :goto_b
    return-object p0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/util/IllegalFormatException;->printStackTrace()V

    goto :goto_b
.end method

.method public static getString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/StringUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_c
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isSpace(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_a
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_18

    move v0, v1

    goto :goto_4

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public static isTrimEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_3
.end method

.method public static lowerFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    const-string p0, ""

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method public static null2Length0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, ""

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v0, 0x0

    :goto_11
    shr-int/lit8 v3, v1, 0x1

    if-ge v0, v3, :cond_24

    aget-char v3, v2, v0

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    aget-char v5, v2, v4

    aput-char v5, v2, v0

    aput-char v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_4
.end method

.method public static toDBC(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_11
    if-ge v0, v2, :cond_3d

    aget-char v3, v1, v0

    const/16 v4, 0x3000

    if-ne v3, v4, :cond_20

    const/16 v3, 0x20

    aput-char v3, v1, v0

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_20
    const v3, 0xff01

    aget-char v4, v1, v0

    if-gt v3, v4, :cond_38

    aget-char v3, v1, v0

    const v4, 0xff5e

    if-gt v3, v4, :cond_38

    aget-char v3, v1, v0

    const v4, 0xfee0

    sub-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto :goto_1d

    :cond_38
    aget-char v3, v1, v0

    aput-char v3, v1, v0

    goto :goto_1d

    :cond_3d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_a
.end method

.method public static toSBC(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_11
    if-ge v0, v2, :cond_3b

    aget-char v3, v1, v0

    const/16 v4, 0x20

    if-ne v3, v4, :cond_20

    const/16 v3, 0x3000

    aput-char v3, v1, v0

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_20
    const/16 v3, 0x21

    aget-char v4, v1, v0

    if-gt v3, v4, :cond_36

    aget-char v3, v1, v0

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_36

    aget-char v3, v1, v0

    const v4, 0xfee0

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto :goto_1d

    :cond_36
    aget-char v3, v1, v0

    aput-char v3, v1, v0

    goto :goto_1d

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_a
.end method

.method public static upperFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    const-string p0, ""

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x20

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method
