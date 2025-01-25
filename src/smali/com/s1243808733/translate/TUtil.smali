.class public Lcom/s1243808733/translate/TUtil;
.super Ljava/lang/Object;
.source "TUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wordSegmentation(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v3, v1, :cond_de

    .line 14
    aget-char v5, p0, v3

    const/16 v6, 0x28

    if-ne v5, v6, :cond_17

    const/4 v4, 0x1

    goto :goto_1e

    :cond_17
    if-eqz v4, :cond_1e

    const/16 v6, 0x29

    if-ne v5, v6, :cond_1e

    const/4 v4, 0x0

    :cond_1e
    :goto_1e
    const/16 v6, 0x20

    if-lez v3, :cond_3b

    .line 22
    add-int/lit8 v7, v3, -0x1

    aget-char v7, p0, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 23
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 24
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 25
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    :cond_3b
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_ae

    if-eq v5, v6, :cond_ae

    const/16 v7, 0x2c

    if-lez v3, :cond_83

    .line 30
    add-int/lit8 v8, v3, -0x1

    aget-char v8, p0, v8

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_6e

    if-eq v5, v9, :cond_6e

    if-eq v8, v6, :cond_6e

    .line 32
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_5f

    if-eq v8, v7, :cond_6e

    .line 34
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6e

    .line 36
    :cond_5f
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_6e

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 37
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6e
    :goto_6e
    if-ne v5, v9, :cond_83

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v1, :cond_80

    .line 43
    aget-char v8, p0, v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_83

    .line 44
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_83

    .line 47
    :cond_80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    :cond_83
    :goto_83
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_9e

    if-ne v5, v7, :cond_9e

    if-lez v3, :cond_9e

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_9e

    .line 53
    add-int/lit8 v7, v3, -0x1

    aget-char v7, p0, v7

    if-eq v7, v6, :cond_9e

    aget-char v5, p0, v5

    if-eq v5, v6, :cond_9e

    .line 56
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_da

    :cond_9e
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_da

    .line 57
    aget-char v5, p0, v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_da

    .line 61
    :cond_ae
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_da

    if-ne v5, v6, :cond_da

    if-lez v3, :cond_da

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_da

    .line 63
    add-int/lit8 v6, v3, -0x1

    aget-char v6, p0, v6

    .line 64
    aget-char v5, p0, v5

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_d5

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_d5

    .line 65
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 66
    :cond_d5
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_da
    :goto_da
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 73
    :cond_de
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wordSegmentation_gpt(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 90
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v3, v1, :cond_b1

    .line 93
    aget-char v5, p0, v3

    const/16 v6, 0x28

    if-ne v5, v6, :cond_17

    const/4 v4, 0x1

    goto :goto_1e

    :cond_17
    if-eqz v4, :cond_1e

    const/16 v6, 0x29

    if-ne v5, v6, :cond_1e

    const/4 v4, 0x0

    :cond_1e
    :goto_1e
    const/16 v6, 0x20

    if-lez v3, :cond_3b

    .line 99
    add-int/lit8 v7, v3, -0x1

    aget-char v7, p0, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 100
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    :cond_3b
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    const/16 v8, 0x2c

    if-nez v7, :cond_83

    if-eq v5, v6, :cond_83

    if-lez v3, :cond_83

    .line 104
    add-int/lit8 v7, v3, -0x1

    aget-char v7, p0, v7

    const/16 v9, 0x2e

    if-eq v7, v9, :cond_6e

    if-eq v5, v9, :cond_6e

    if-eq v7, v6, :cond_6e

    .line 106
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_5f

    if-eq v7, v8, :cond_6e

    .line 108
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6e

    .line 110
    :cond_5f
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_6e

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_6e

    .line 111
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6e
    :goto_6e
    if-ne v5, v9, :cond_83

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v1, :cond_80

    .line 116
    aget-char v7, p0, v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_83

    .line 117
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_83

    .line 120
    :cond_80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :cond_83
    :goto_83
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_9e

    if-ne v5, v8, :cond_9e

    if-lez v3, :cond_9e

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_9e

    .line 126
    add-int/lit8 v7, v3, -0x1

    aget-char v7, p0, v7

    if-eq v7, v6, :cond_9e

    aget-char v5, p0, v5

    if-eq v5, v6, :cond_9e

    .line 127
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_ad

    :cond_9e
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_ad

    .line 128
    aget-char v5, p0, v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_ad
    :goto_ad
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 132
    :cond_b1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wordSegmentatioyn(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 139
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v3, v1, :cond_de

    .line 143
    aget-char v5, p0, v3

    const/16 v6, 0x28

    if-ne v5, v6, :cond_17

    const/4 v4, 0x1

    goto :goto_1e

    :cond_17
    if-eqz v4, :cond_1e

    const/16 v6, 0x29

    if-ne v5, v6, :cond_1e

    const/4 v4, 0x0

    :cond_1e
    :goto_1e
    const/16 v6, 0x20

    if-lez v3, :cond_3b

    .line 151
    add-int/lit8 v7, v3, -0x1

    aget-char v7, p0, v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 152
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_3b
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_ae

    if-eq v5, v6, :cond_ae

    const/16 v7, 0x2c

    if-lez v3, :cond_83

    .line 157
    add-int/lit8 v8, v3, -0x1

    aget-char v8, p0, v8

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_6e

    if-eq v5, v9, :cond_6e

    if-eq v8, v6, :cond_6e

    .line 160
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_5f

    if-eq v8, v7, :cond_6e

    .line 162
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 164
    :cond_5f
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_6e

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 165
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6e
    :goto_6e
    if-ne v5, v9, :cond_83

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v1, :cond_80

    .line 171
    aget-char v8, p0, v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_83

    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 175
    :cond_80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_83
    :goto_83
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_9e

    if-ne v5, v7, :cond_9e

    if-lez v3, :cond_9e

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_9e

    .line 182
    add-int/lit8 v7, v3, -0x1

    aget-char v7, p0, v7

    if-eq v7, v6, :cond_9e

    aget-char v5, p0, v5

    if-eq v5, v6, :cond_9e

    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_da

    :cond_9e
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_da

    .line 184
    aget-char v5, p0, v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 185
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_da

    .line 189
    :cond_ae
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_da

    if-ne v5, v6, :cond_da

    if-lez v3, :cond_da

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_da

    .line 192
    add-int/lit8 v6, v3, -0x1

    aget-char v6, p0, v6

    .line 193
    aget-char v5, p0, v5

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_d5

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_d5

    .line 195
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 196
    :cond_d5
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_da
    :goto_da
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 203
    :cond_de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
