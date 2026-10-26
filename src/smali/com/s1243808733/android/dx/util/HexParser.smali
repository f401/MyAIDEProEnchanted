.class public final Lcom/s1243808733/android/dx/util/HexParser;
.super Ljava/lang/Object;
.source "HexParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)[B
    .locals 13

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 46
    div-int/lit8 v9, v1, 0x2

    new-array v7, v9, [B

    const/4 v0, 0x0

    const/4 v6, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_e

    .line 51
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    move v0, v1

    .line 55
    :cond_0
    const/16 v3, 0x23

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_3

    if-ge v3, v0, :cond_3

    .line 59
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 65
    :goto_1
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 69
    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-ge v4, v3, :cond_4

    .line 83
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    move v8, v5

    .line 87
    :goto_2
    if-ge v8, v10, :cond_b

    .line 88
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eqz v3, :cond_6

    const/16 v5, 0x22

    if-ne v11, v5, :cond_5

    const/4 v3, 0x0

    .line 120
    :cond_2
    :goto_3
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 74
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 75
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    const/16 v3, 0x10

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus offset marker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_5
    int-to-byte v5, v11

    .line 94
    aput-byte v5, v7, v6

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_3

    :cond_6
    const/16 v5, 0x20

    if-le v11, v5, :cond_2

    const/16 v5, 0x22

    if-ne v11, v5, :cond_8

    const/4 v3, -0x1

    if-ne v4, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    .line 105
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spare digit around offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_8
    const/16 v5, 0x10

    invoke-static {v11, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_a

    const/4 v11, -0x1

    if-ne v4, v11, :cond_9

    move v4, v5

    goto :goto_3

    :cond_9
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 120
    aput-byte v4, v7, v6

    add-int/lit8 v5, v6, 0x1

    const/4 v4, -0x1

    move v6, v5

    goto :goto_3

    .line 114
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus digit character: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/4 v2, -0x1

    if-ne v4, v2, :cond_d

    if-nez v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 132
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unterminated quote around offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spare digit around offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    if-ge v6, v9, :cond_f

    .line 138
    new-array v0, v6, [B

    .line 139
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    return-object v0

    :cond_f
    move-object v0, v7

    goto :goto_4
.end method
