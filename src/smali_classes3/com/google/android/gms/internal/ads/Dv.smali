.class public final Lcom/google/android/gms/internal/ads/Dv;
.super Ljava/lang/Object;


# direct methods
.method public static j6([BZ)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    const/16 p1, 0xb

    goto :goto_6

    :cond_5
    const/4 p1, 0x2

    :goto_6
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;Z)[B
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0xb

    goto :goto_6

    :cond_5
    const/4 p1, 0x2

    :goto_6
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length v0, p1

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "Unable to decode "

    if-eqz p1, :cond_24

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    return-object p1
.end method
