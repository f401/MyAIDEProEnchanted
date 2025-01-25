.class public Lorg/a/a/a/c/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v3, :cond_12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    aget-char v4, v2, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_22

    if-eqz p1, :cond_22

    const/16 v4, 0xb7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_22
    const/16 v5, 0x9

    if-ne v4, v5, :cond_2c

    const-string v4, "\\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_2c
    const/16 v5, 0xa

    if-ne v4, v5, :cond_36

    const-string v4, "\\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_36
    const/16 v5, 0xd

    if-ne v4, v5, :cond_40

    const-string v4, "\\r"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_40
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f
.end method
