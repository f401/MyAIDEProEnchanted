.class public Labcd/eP;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Labcd/CN;)[B
    .registers 2

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Labcd/yL;->j6(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j6(Labcd/wN;Labcd/qL;)[B
    .registers 3

    :try_start_0
    new-instance v0, Labcd/CN;

    invoke-direct {v0, p0, p1}, Labcd/CN;-><init>(Labcd/wN;Labcd/qL;)V

    invoke-static {v0}, Labcd/eP;->j6(Labcd/CN;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
