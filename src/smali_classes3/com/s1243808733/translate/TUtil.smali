.class public Lcom/s1243808733/translate/TUtil;
.super Ljava/lang/Object;
.source "TUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wordSegmentation(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

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

    .line 13
    :goto_0
    if-lt v2, v5, :cond_0

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14
    :cond_0
    aget-char v6, v4, v2

    .line 16
    const/16 v7, 0x28

    if-ne v6, v7, :cond_6

    .line 17
    const/4 v0, 0x1

    .line 22
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 25
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_a

    if-eq v6, v9, :cond_a

    .line 29
    if-lez v2, :cond_4

    .line 30
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    .line 31
    if-eq v7, v10, :cond_3

    if-eq v6, v10, :cond_3

    if-eq v7, v9, :cond_3

    .line 32
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_7

    .line 33
    if-eq v7, v11, :cond_3

    .line 34
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    :cond_3
    :goto_2
    if-ne v6, v10, :cond_4

    .line 42
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v5, :cond_8

    .line 43
    add-int/lit8 v7, v2, 0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    .line 44
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    :cond_4
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    if-eqz v0, :cond_9

    if-ne v6, v11, :cond_9

    if-lez v2, :cond_9

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_9

    add-int/lit8 v6, v2, -0x1

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_9

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_9

    .line 56
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 13
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_6
    if-eqz v0, :cond_1

    const/16 v7, 0x29

    if-ne v6, v7, :cond_1

    move v0, v1

    .line 19
    goto :goto_1

    .line 36
    :cond_7
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 37
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 47
    :cond_8
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 57
    :cond_9
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_5

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v4, v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 58
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 61
    :cond_a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    if-eqz v0, :cond_5

    if-ne v6, v9, :cond_5

    if-lez v2, :cond_5

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_5

    .line 63
    add-int/lit8 v6, v2, -0x1

    aget-char v6, v4, v6

    .line 64
    add-int/lit8 v7, v2, 0x1

    aget-char v7, v4, v7

    .line 65
    const/16 v8, 0x3e

    if-eq v6, v8, :cond_b

    const/16 v8, 0x5d

    if-eq v6, v8, :cond_b

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 66
    :cond_b
    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public static wordSegmentation_gpt(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

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

    .line 92
    :goto_0
    if-lt v2, v5, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    aget-char v6, v4, v2

    .line 94
    const/16 v7, 0x28

    if-ne v6, v7, :cond_6

    .line 95
    const/4 v0, 0x1

    .line 99
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_4

    if-eq v6, v9, :cond_4

    .line 103
    if-lez v2, :cond_4

    .line 104
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    .line 105
    if-eq v7, v10, :cond_3

    if-eq v6, v10, :cond_3

    if-eq v7, v9, :cond_3

    .line 106
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_7

    .line 107
    if-eq v7, v11, :cond_3

    .line 108
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    :cond_3
    :goto_2
    if-ne v6, v10, :cond_4

    .line 115
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v5, :cond_8

    .line 116
    add-int/lit8 v7, v2, 0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    .line 117
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :cond_4
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    if-eqz v0, :cond_9

    if-ne v6, v11, :cond_9

    if-lez v2, :cond_9

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_9

    add-int/lit8 v6, v2, -0x1

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_9

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_9

    .line 127
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_6
    if-eqz v0, :cond_1

    const/16 v7, 0x29

    if-ne v6, v7, :cond_1

    move v0, v1

    .line 97
    goto :goto_1

    .line 110
    :cond_7
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 111
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 120
    :cond_8
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 128
    :cond_9
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_5

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v4, v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 129
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public static wordSegmentatioyn(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

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

    .line 142
    :goto_0
    if-lt v2, v5, :cond_0

    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    aget-char v6, v4, v2

    .line 145
    const/16 v7, 0x28

    if-ne v6, v7, :cond_6

    .line 146
    const/4 v0, 0x1

    .line 151
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 152
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_a

    if-eq v6, v9, :cond_a

    .line 156
    if-lez v2, :cond_4

    .line 157
    add-int/lit8 v7, v2, -0x1

    aget-char v7, v4, v7

    .line 159
    if-eq v7, v10, :cond_3

    if-eq v6, v10, :cond_3

    if-eq v7, v9, :cond_3

    .line 160
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_7

    .line 161
    if-eq v7, v11, :cond_3

    .line 162
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_3
    :goto_2
    if-ne v6, v10, :cond_4

    .line 170
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v5, :cond_8

    .line 171
    add-int/lit8 v7, v2, 0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    .line 172
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_4
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    if-eqz v0, :cond_9

    if-ne v6, v11, :cond_9

    if-lez v2, :cond_9

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_9

    add-int/lit8 v6, v2, -0x1

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_9

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v4, v6

    if-eq v6, v9, :cond_9

    .line 183
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_6
    if-eqz v0, :cond_1

    const/16 v7, 0x29

    if-ne v6, v7, :cond_1

    move v0, v1

    .line 148
    goto :goto_1

    .line 164
    :cond_7
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 165
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 175
    :cond_8
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 184
    :cond_9
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_5

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v4, v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 185
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 189
    :cond_a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    if-eqz v0, :cond_5

    if-ne v6, v9, :cond_5

    if-lez v2, :cond_5

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v5, :cond_5

    .line 192
    add-int/lit8 v6, v2, -0x1

    aget-char v6, v4, v6

    .line 193
    add-int/lit8 v7, v2, 0x1

    aget-char v7, v4, v7

    .line 195
    const/16 v8, 0x3e

    if-eq v6, v8, :cond_b

    const/16 v8, 0x5d

    if-eq v6, v8, :cond_b

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 196
    :cond_b
    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4
.end method
