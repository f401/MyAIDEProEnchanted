.class public Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;
.super Ljava/lang/Object;


# static fields
.field private static final VALUE_REGEX:Ljava/lang/String; = "\\([([1-9/-]/d*/./d*|0/./d*[1-9/-]/d*|0?/.0+|0|,)\\s]+\\)"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doRotation(Lcom/github/megatronking/svg/generator/utils/Matrix;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/utils/Matrix;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v0, "rotate"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "("

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-ne v0, v8, :cond_4

    aget-object v0, v3, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    aget-object v2, v3, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v2

    :goto_0
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    aget-object v0, v3, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    aget-object v2, v3, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v2

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/github/megatronking/svg/generator/utils/Matrix;->postRotate(FFF)V

    return-void

    :cond_1
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v2, v4, :cond_3

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    move v3, v1

    goto :goto_1

    :cond_2
    invoke-static {v3, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    move v2, v1

    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_1

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method private static doScale(Lcom/github/megatronking/svg/generator/utils/Matrix;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/utils/Matrix;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "scale"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "("

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->postScale(FF)V

    return-void

    :cond_0
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v2, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    goto :goto_0
.end method

.method private static doTranslate(Lcom/github/megatronking/svg/generator/utils/Matrix;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/utils/Matrix;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "translate"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "("

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->postTranslate(FF)V

    return-void

    :cond_0
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v2, v0}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    goto :goto_0
.end method

.method public static formatTransform(Ljava/lang/String;)[F
    .registers 11

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils$100000000;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils$100000000;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "translate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\\([([1-9/-]/d*/./d*|0/./d*[1-9/-]/d*|0?/.0+|0|,)\\s]+\\)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->regexMatch(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\\([([1-9/-]/d*/./d*|0/./d*[1-9/-]/d*|0?/.0+|0|,)\\s]+\\)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->regexMatch(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "rotate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\\([([1-9/-]/d*/./d*|0/./d*[1-9/-]/d*|0?/.0+|0|,)\\s]+\\)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->regexMatch(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {v1, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    const/4 v1, 0x6

    new-array v1, v1, [F

    aget v2, v0, v5

    aput v2, v1, v5

    aget v2, v0, v8

    aput v2, v1, v6

    aget v2, v0, v6

    aput v2, v1, v7

    aget v2, v0, v9

    aput v2, v1, v8

    aget v2, v0, v7

    aput v2, v1, v9

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v0, v0, v3

    aput v0, v1, v2

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v3}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    const-string v4, "translate"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, v0}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->doTranslate(Lcom/github/megatronking/svg/generator/utils/Matrix;Ljava/lang/String;)V

    :cond_1
    const-string v4, "scale"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, v0}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->doScale(Lcom/github/megatronking/svg/generator/utils/Matrix;Ljava/lang/String;)V

    :cond_2
    const-string v4, "rotate"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v0}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->doRotation(Lcom/github/megatronking/svg/generator/utils/Matrix;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v3}, Lcom/github/megatronking/svg/generator/utils/Matrix;->preConcat(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    goto :goto_0
.end method

.method public static preConcat([F[F)[F
    .registers 12

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x6

    new-array p0, v0, [F

    int-to-float v0, v6

    aput v0, p0, v5

    int-to-float v0, v5

    aput v0, p0, v6

    int-to-float v0, v5

    aput v0, p0, v7

    int-to-float v0, v6

    aput v0, p0, v8

    int-to-float v0, v5

    aput v0, p0, v9

    const/4 v0, 0x5

    int-to-float v1, v5

    aput v1, p0, v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x6

    new-array p1, v0, [F

    int-to-float v0, v6

    aput v0, p1, v5

    int-to-float v0, v5

    aput v0, p1, v6

    int-to-float v0, v5

    aput v0, p1, v7

    int-to-float v0, v6

    aput v0, p1, v8

    int-to-float v0, v5

    aput v0, p1, v9

    const/4 v0, 0x5

    int-to-float v1, v5

    aput v1, p1, v0

    :cond_1
    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    aget v2, p0, v5

    aput v2, v1, v5

    aget v2, p0, v7

    aput v2, v1, v6

    aget v2, p0, v9

    aput v2, v1, v7

    aget v2, p0, v6

    aput v2, v1, v8

    aget v2, p0, v8

    aput v2, v1, v9

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, p0, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v5

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v3, v5

    aput v3, v1, v2

    const/16 v2, 0x8

    int-to-float v3, v6

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    new-instance v1, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [F

    aget v3, p1, v5

    aput v3, v2, v5

    aget v3, p1, v7

    aput v3, v2, v6

    aget v3, p1, v9

    aput v3, v2, v7

    aget v3, p1, v6

    aput v3, v2, v8

    aget v3, p1, v8

    aput v3, v2, v9

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget v4, p1, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    int-to-float v4, v5

    aput v4, v2, v3

    const/4 v3, 0x7

    int-to-float v4, v5

    aput v4, v2, v3

    const/16 v3, 0x8

    int-to-float v4, v6

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    invoke-virtual {v1, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->preConcat(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {v1, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    const/4 v1, 0x6

    new-array v1, v1, [F

    aget v2, v0, v5

    aput v2, v1, v5

    aget v2, v0, v8

    aput v2, v1, v6

    aget v2, v0, v6

    aput v2, v1, v7

    aget v2, v0, v9

    aput v2, v1, v8

    aget v2, v0, v7

    aput v2, v1, v9

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v0, v0, v3

    aput v0, v1, v2

    return-object v1
.end method

.method private static regexMatch(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
