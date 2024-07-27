.class public Lorg/c/a/a/c/c/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v1, p0, 0x3

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p0, 0x7

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "\\\\"

    goto :goto_0

    :sswitch_1
    const-string v0, "\\b"

    goto :goto_0

    :sswitch_2
    const-string v0, "\\f"

    goto :goto_0

    :sswitch_3
    const-string v0, "\\n"

    goto :goto_0

    :sswitch_4
    const-string v0, "\\r"

    goto :goto_0

    :sswitch_5
    const-string v0, "\\t"

    goto :goto_0

    :sswitch_6
    const-string v0, "\\\'"

    goto :goto_0

    :cond_0
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x27 -> :sswitch_6
        0x5c -> :sswitch_0
    .end sparse-switch
.end method
