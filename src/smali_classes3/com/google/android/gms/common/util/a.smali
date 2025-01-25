.class public Lcom/google/android/gms/common/util/a;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    :try_start_4
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_8} :catch_b

    if-eqz v1, :cond_c

    return-object v1

    :catch_b
    move-exception v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method
