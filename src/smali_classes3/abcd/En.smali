.class public final Labcd/En;
.super Ljava/lang/Object;


# direct methods
.method public static j6([B)I
    .registers 4

    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-eq v0, v1, :cond_7

    return v2

    :cond_7
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_62

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_62

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_62

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_62

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    if-eqz v0, :cond_29

    goto :goto_62

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    aget-byte p0, p0, v1

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "036"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 p0, 0xe

    return p0

    :cond_57
    const-string v0, "035"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_62

    const/16 p0, 0xd

    return p0

    :cond_62
    :goto_62
    return v2
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xe

    if-lt p0, v0, :cond_7

    const-string p0, "036"

    goto :goto_9

    :cond_7
    const-string p0, "035"

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dex\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u0000"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
