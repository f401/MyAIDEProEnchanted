.class public Lcom/baidu/mobstat/do$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 53
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/mobstat/do;->a(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 58
    :catch_b
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2

    .line 43
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/mobstat/do;->a(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 48
    :catch_b
    move-exception p0

    const-string p0, ""

    return-object p0
.end method
