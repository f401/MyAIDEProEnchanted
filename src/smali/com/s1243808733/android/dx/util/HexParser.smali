.class public final Lcom/s1243808733/android/dx/util/HexParser;
.super Ljava/lang/Object;
.source "HexParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)[B
    .registers 17

    .line 45
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 46
    div-int/lit8 v2, v1, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v5, v1, :cond_111

    .line 51
    const/16 v7, 0xa

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v7, :cond_18

    move v7, v1

    .line 55
    :cond_18
    const/16 v8, 0x23

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ltz v8, :cond_27

    if-ge v8, v7, :cond_27

    .line 59
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2b

    .line 61
    :cond_27
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 65
    :goto_2b
    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v9, 0x10

    const/16 v10, 0x22

    const/4 v11, -0x1

    if-eq v8, v11, :cond_6a

    .line 69
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v11, :cond_41

    if-ge v12, v8, :cond_41

    goto :goto_6a

    .line 74
    :cond_41
    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 75
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-static {v12, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_56

    goto :goto_6a

    .line 78
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus offset marker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_6a
    :goto_6a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    .line 87
    :goto_71
    const-string v15, "spare digit around offset "

    if-ge v12, v8, :cond_da

    .line 88
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v14, :cond_85

    if-ne v4, v10, :cond_7f

    const/4 v14, 0x0

    goto :goto_bd

    :cond_7f
    int-to-byte v4, v4

    .line 94
    aput-byte v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_bd

    :cond_85
    const/16 v9, 0x20

    if-gt v4, v9, :cond_8a

    goto :goto_8f

    :cond_8a
    if-ne v4, v10, :cond_a8

    if-ne v13, v11, :cond_92

    const/4 v14, 0x1

    :goto_8f
    const/16 v9, 0x10

    goto :goto_bd

    .line 105
    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    :cond_a8
    const/16 v9, 0x10

    invoke-static {v4, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v15

    if-eq v15, v11, :cond_c1

    if-ne v13, v11, :cond_b4

    move v13, v15

    goto :goto_bd

    :cond_b4
    shl-int/lit8 v4, v13, 0x4

    or-int/2addr v4, v15

    int-to-byte v4, v4

    .line 120
    aput-byte v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v13, -0x1

    :goto_bd
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_71

    .line 114
    :cond_c1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus digit character: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_da
    if-ne v13, v11, :cond_fb

    if-nez v14, :cond_e3

    add-int/lit8 v5, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_d

    .line 132
    :cond_e3
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
    :cond_fb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_111
    if-ge v6, v2, :cond_11a

    .line 138
    new-array v0, v6, [B

    .line 139
    const/4 v1, 0x0

    invoke-static {v3, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    :cond_11a
    return-object v3
.end method
