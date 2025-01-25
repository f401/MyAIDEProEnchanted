.class public Labcd/eP;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Labcd/CN;)[B
    .registers 2

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Labcd/wN;Labcd/qL;)[B
    .registers 3

    :try_start_0
    new-instance v0, Labcd/CN;

    invoke-direct {v0, p0, p1}, Labcd/CN;-><init>(Labcd/wN;Labcd/qL;)V

    invoke-static {v0}, Labcd/eP;->j6(Labcd/CN;)[B

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method
