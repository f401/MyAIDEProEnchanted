.class public Lorg/apache/tools/ant/util/DeweyDecimal;
.super Ljava/lang/Object;
.source "DeweyDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/tools/ant/util/DeweyDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final components:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, "."

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    .line 61
    const/4 v0, 0x0

    :goto_18
    iget-object v2, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v2, v2

    if-ge v0, v2, :cond_51

    .line 62
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_49

    .line 67
    iget-object v3, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v0

    .line 70
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 71
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 74
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 61
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 75
    :cond_41
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "DeweyDecimal ended in a \'.\'"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_49
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Empty component in string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_51
    return-void
.end method

.method public constructor <init>([I)V
    .registers 5

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    .line 45
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 33
    check-cast p1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;->compareTo(Lorg/apache/tools/ant/util/DeweyDecimal;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tools/ant/util/DeweyDecimal;)I
    .registers 8

    const/4 v1, 0x0

    .line 213
    iget-object v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    iget-object v2, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v1

    .line 214
    :goto_c
    if-ge v3, v4, :cond_20

    .line 215
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v2, v0

    if-ge v3, v2, :cond_21

    aget v0, v0, v3

    .line 216
    :goto_15
    iget-object v2, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v5, v2

    if-ge v3, v5, :cond_27

    aget v2, v2, v3

    .line 217
    :goto_1c
    if-eq v0, v2, :cond_23

    .line 218
    sub-int v1, v0, v2

    .line 221
    :cond_20
    return v1

    :cond_21
    move v0, v1

    .line 215
    goto :goto_15

    .line 214
    :cond_23
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_27
    move v2, v1

    goto :goto_1c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 229
    instance-of v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public get(I)I
    .registers 3

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 225
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .registers 8

    const/4 v1, 0x0

    .line 108
    iget-object v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    iget-object v2, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v1

    .line 110
    :goto_c
    if-ge v3, v4, :cond_27

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v2, v0

    if-ge v3, v2, :cond_1f

    aget v0, v0, v3

    .line 112
    :goto_15
    iget-object v2, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v5, v2

    if-ge v3, v5, :cond_21

    aget v2, v2, v3

    .line 114
    :goto_1c
    if-eq v2, v0, :cond_23

    .line 119
    :goto_1e
    return v1

    :cond_1f
    move v0, v1

    .line 111
    goto :goto_15

    :cond_21
    move v2, v1

    .line 112
    goto :goto_1c

    .line 110
    :cond_23
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    .line 119
    :cond_27
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method public isGreaterThan(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .registers 8

    const/4 v1, 0x0

    .line 152
    iget-object v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    iget-object v2, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v1

    .line 154
    :goto_c
    if-ge v3, v4, :cond_1e

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v2, v0

    if-ge v3, v2, :cond_1f

    aget v0, v0, v3

    .line 156
    :goto_15
    iget-object v2, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v5, v2

    if-ge v3, v5, :cond_21

    aget v2, v2, v3

    .line 158
    :goto_1c
    if-le v2, v0, :cond_23

    .line 166
    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    move v0, v1

    .line 155
    goto :goto_15

    :cond_21
    move v2, v1

    .line 156
    goto :goto_1c

    .line 161
    :cond_23
    if-ge v2, v0, :cond_27

    .line 162
    const/4 v1, 0x1

    goto :goto_1e

    .line 154
    :cond_27
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c
.end method

.method public isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    iget-object v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    iget-object v3, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v1

    .line 179
    :goto_d
    if-ge v4, v5, :cond_2c

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v3, v0

    if-ge v4, v3, :cond_20

    aget v0, v0, v4

    .line 181
    :goto_16
    iget-object v3, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v6, v3

    if-ge v4, v6, :cond_22

    aget v3, v3, v4

    .line 183
    :goto_1d
    if-le v3, v0, :cond_24

    .line 191
    :goto_1f
    return v1

    :cond_20
    move v0, v1

    .line 180
    goto :goto_16

    :cond_22
    move v3, v1

    .line 181
    goto :goto_1d

    .line 186
    :cond_24
    if-ge v3, v0, :cond_28

    move v1, v2

    .line 187
    goto :goto_1f

    .line 179
    :cond_28
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_d

    :cond_2c
    move v1, v2

    .line 191
    goto :goto_1f
.end method

.method public isLessThan(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .registers 3

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLessThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .registers 3

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThan(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    invoke-static {v0}, Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticStaticInterfaceCall0;->m([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 201
    const-string v1, "."

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    return-object v0
.end method
