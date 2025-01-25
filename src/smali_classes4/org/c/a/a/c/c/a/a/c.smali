.class public Lorg/c/a/a/c/c/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_8
    if-lt v0, v2, :cond_b

    :goto_a
    return-object p0

    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_19

    const/16 v4, 0x22

    if-eq v3, v4, :cond_19

    if-ge v3, v5, :cond_7d

    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    if-lt v0, v2, :cond_2e

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_2e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_80

    if-ge v1, v5, :cond_79

    const-string v4, "\\0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :sswitch_4f
    const-string v1, "\\\\"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :sswitch_55
    const-string v1, "\\b"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :sswitch_5b
    const-string v1, "\\f"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :sswitch_61
    const-string v1, "\\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :sswitch_67
    const-string v1, "\\r"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :sswitch_6d
    const-string v1, "\\t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :sswitch_73
    const-string v1, "\\\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :sswitch_data_80
    .sparse-switch
        0x8 -> :sswitch_55
        0x9 -> :sswitch_6d
        0xa -> :sswitch_61
        0xc -> :sswitch_5b
        0xd -> :sswitch_67
        0x22 -> :sswitch_73
        0x5c -> :sswitch_4f
    .end sparse-switch
.end method
