.class public Lorg/apache/commons/lang3/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method public static varargs containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    .line 52
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 61
    :cond_d
    :goto_d
    return v0

    .line 55
    :cond_e
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_18
    if-ge v1, v4, :cond_d

    aget-char v5, v3, v1

    .line 57
    invoke-virtual {v2, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 58
    const/4 v0, 0x1

    goto :goto_d

    .line 56
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public static varargs count(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    const/4 v1, 0x0

    .line 83
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move v0, v1

    .line 93
    :cond_e
    return v0

    .line 86
    :cond_f
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v3

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_1a
    if-ge v2, v5, :cond_e

    aget-char v1, v4, v2

    .line 89
    invoke-virtual {v3, v1}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 88
    :cond_26
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1a
.end method

.method private static deepEmpty([Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 104
    if-eqz p0, :cond_13

    .line 105
    array-length v2, p0

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_13

    aget-object v3, p0, v1

    .line 106
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 111
    :goto_f
    return v0

    .line 105
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 111
    :cond_13
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static varargs delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 133
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 136
    :cond_c
    :goto_c
    return-object p0

    :cond_d
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static varargs keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 159
    if-nez p0, :cond_4

    .line 160
    const/4 v0, 0x0

    .line 165
    :goto_3
    return-object v0

    .line 162
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 163
    :cond_10
    const-string v0, ""

    goto :goto_3

    .line 165
    :cond_13
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .line 177
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 180
    array-length v4, v3

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v4, :cond_23

    aget-char v5, v3, v0

    .line 181
    invoke-virtual {v1, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-ne v6, p2, :cond_20

    .line 182
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 185
    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    .line 207
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 236
    :cond_d
    :goto_d
    return-object p0

    .line 210
    :cond_e
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v5

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 213
    array-length v8, v7

    .line 214
    const/4 v0, 0x0

    aget-char v1, v7, v0

    .line 218
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    const/4 v4, 0x1

    move-object v0, v2

    move-object v3, v2

    :goto_29
    if-ge v4, v8, :cond_57

    .line 220
    aget-char v2, v7, v4

    .line 221
    if-ne v2, v1, :cond_52

    .line 222
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-ne v2, v9, :cond_3b

    .line 219
    :goto_37
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_29

    .line 225
    :cond_3b
    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-eq v2, v9, :cond_52

    .line 226
    :cond_43
    invoke-virtual {v5, v2}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 227
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_37

    .line 230
    :cond_4e
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 233
    :cond_52
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 234
    goto :goto_37

    .line 236
    :cond_57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d
.end method
