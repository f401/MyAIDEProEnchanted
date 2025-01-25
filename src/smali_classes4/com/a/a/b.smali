.class public final Lcom/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_1c

    const-string v0, "039"

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dex\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    if-lt p0, v0, :cond_21

    const-string v0, "039"

    goto :goto_6

    :cond_21
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_28

    const-string v0, "038"

    goto :goto_6

    :cond_28
    const/16 v0, 0x18

    if-lt p0, v0, :cond_2f

    const-string v0, "037"

    goto :goto_6

    :cond_2f
    const-string v0, "035"

    goto :goto_6
.end method
