.class public Lcom/s1243808733/translate/TUtil;
.super Ljava/lang/Object;
.source "TUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wordSegmentation(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x2c

    const/16 v10, 0x2e

    const/4 v1, 0x0

    const/16 v9, 0x20

    .line 6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 9
    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_b

    .line 14
    aget-char v6, v4, v2

    const/16 v7, 0x28

    if-ne v6, v7, :cond_5

    const/4 v0, 0x1

    :cond_0
    :goto_1
    if-lez v2, :cond_1

    .line 22
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 23
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 24
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 25
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_9

    if-eq v6, v9, :cond_9

    if-lez v2, :cond_3

    .line 30
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    if-eq v7, v10, :cond_2

    if-eq v6, v10, :cond_2

    if-eq v7, v9, :cond_2

    .line 32
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_6

    if-eq v7, v11, :cond_2

    .line 34
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    :cond_2
    :goto_2
    if-ne v6, v10, :cond_3

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v5, :cond_7

    .line 43
    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 44
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    :cond_3
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_8

    if-ne v6, v11, :cond_8

    if-lez v2, :cond_8

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_8

    .line 53
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    if-eq v7, v9, :cond_8

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_8

    .line 56
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_5
    if-eqz v0, :cond_0

    const/16 v7, 0x29

    if-ne v6, v7, :cond_0

    move v0, v1

    goto :goto_1

    .line 36
    :cond_6
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    .line 37
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 47
    :cond_7
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 56
    :cond_8
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_4

    .line 57
    aget-char v6, v4, v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 58
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 61
    :cond_9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_4

    if-ne v6, v9, :cond_4

    if-lez v2, :cond_4

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_4

    .line 63
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    .line 64
    aget-char v6, v4, v6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_a

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_a

    .line 65
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    :cond_a
    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 73
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wordSegmentation_gpt(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x2c

    const/16 v10, 0x2e

    const/4 v1, 0x0

    const/16 v9, 0x20

    .line 88
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 90
    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_9

    .line 93
    aget-char v6, v4, v2

    const/16 v7, 0x28

    if-ne v6, v7, :cond_5

    const/4 v0, 0x1

    :cond_0
    :goto_1
    if-lez v2, :cond_1

    .line 99
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_3

    if-eq v6, v9, :cond_3

    if-lez v2, :cond_3

    .line 104
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    if-eq v7, v10, :cond_2

    if-eq v6, v10, :cond_2

    if-eq v7, v9, :cond_2

    .line 106
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_6

    if-eq v7, v11, :cond_2

    .line 108
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    :cond_2
    :goto_2
    if-ne v6, v10, :cond_3

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v5, :cond_7

    .line 116
    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 117
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :cond_3
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_8

    if-ne v6, v11, :cond_8

    if-lez v2, :cond_8

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_8

    .line 126
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    if-eq v7, v9, :cond_8

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_8

    .line 127
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_5
    if-eqz v0, :cond_0

    const/16 v7, 0x29

    if-ne v6, v7, :cond_0

    move v0, v1

    goto :goto_1

    .line 110
    :cond_6
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    .line 111
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 120
    :cond_7
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 127
    :cond_8
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_4

    .line 128
    aget-char v6, v4, v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 129
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 132
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wordSegmentatioyn(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x2c

    const/16 v10, 0x2e

    const/4 v1, 0x0

    const/16 v9, 0x20

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 139
    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_b

    .line 143
    aget-char v6, v4, v2

    const/16 v7, 0x28

    if-ne v6, v7, :cond_5

    const/4 v0, 0x1

    :cond_0
    :goto_1
    if-lez v2, :cond_1

    .line 151
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_9

    if-eq v6, v9, :cond_9

    if-lez v2, :cond_3

    .line 157
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    if-eq v7, v10, :cond_2

    if-eq v6, v10, :cond_2

    if-eq v7, v9, :cond_2

    .line 160
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_6

    if-eq v7, v11, :cond_2

    .line 162
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_2
    :goto_2
    if-ne v6, v10, :cond_3

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v5, :cond_7

    .line 171
    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 172
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_3
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    if-ne v6, v11, :cond_8

    if-lez v2, :cond_8

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_8

    .line 182
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    if-eq v7, v9, :cond_8

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_8

    .line 183
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_5
    if-eqz v0, :cond_0

    const/16 v7, 0x29

    if-ne v6, v7, :cond_0

    move v0, v1

    goto :goto_1

    .line 164
    :cond_6
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    .line 165
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 175
    :cond_7
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 183
    :cond_8
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_4

    .line 184
    aget-char v6, v4, v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 185
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 189
    :cond_9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    if-ne v6, v9, :cond_4

    if-lez v2, :cond_4

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_4

    .line 192
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    .line 193
    aget-char v6, v4, v6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_a

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_a

    .line 195
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 196
    :cond_a
    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 203
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
