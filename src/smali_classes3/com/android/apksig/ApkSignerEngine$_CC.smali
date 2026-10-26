.class public final synthetic Lcom/android/apksig/ApkSignerEngine$_CC;
.super Ljava/lang/Object;


# direct methods
.method public static $default$generateSourceStampCertificateDigest(Lcom/android/apksig/ApkSignerEngine;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public static $default$initWith(Lcom/android/apksig/ApkSignerEngine;[BLjava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "initWith method is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$isEligibleForSourceStamp(Lcom/android/apksig/ApkSignerEngine;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$setExecutor(Lcom/android/apksig/ApkSignerEngine;Lcom/android/apksig/util/RunnablesExecutor;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setExecutor method is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
