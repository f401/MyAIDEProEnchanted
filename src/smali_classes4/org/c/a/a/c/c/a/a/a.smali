.class public Lorg/c/a/a/c/c/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_40

    const/16 v0, 0x20

    if-ge p0, v0, :cond_3a

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

    :goto_24
    return-object v0

    :sswitch_25
    const-string v0, "\\\\"

    goto :goto_24

    :sswitch_28
    const-string v0, "\\b"

    goto :goto_24

    :sswitch_2b
    const-string v0, "\\f"

    goto :goto_24

    :sswitch_2e
    const-string v0, "\\n"

    goto :goto_24

    :sswitch_31
    const-string v0, "\\r"

    goto :goto_24

    :sswitch_34
    const-string v0, "\\t"

    goto :goto_24

    :sswitch_37
    const-string v0, "\\\'"

    goto :goto_24

    :cond_3a
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_data_40
    .sparse-switch
        0x8 -> :sswitch_28
        0x9 -> :sswitch_34
        0xa -> :sswitch_2e
        0xc -> :sswitch_2b
        0xd -> :sswitch_31
        0x27 -> :sswitch_37
        0x5c -> :sswitch_25
    .end sparse-switch
.end method
