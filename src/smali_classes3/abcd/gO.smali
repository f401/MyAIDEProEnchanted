.class Labcd/gO;
.super Ljava/lang/Object;


# direct methods
.method static j6(Ljava/util/List;)Labcd/HL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    new-instance p0, Labcd/WL;

    invoke-direct {p0, v0}, Labcd/WL;-><init>(Labcd/rL;)V

    return-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/qL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_9
.end method

.method static j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 1

    if-nez p0, :cond_7

    new-instance p0, Labcd/jO;

    invoke-direct {p0}, Labcd/jO;-><init>()V

    :cond_7
    return-object p0
.end method

.method static j6(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 3

    if-nez p0, :cond_7

    invoke-static {p1}, Labcd/gO;->j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    goto :goto_14

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Labcd/gO;->j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    goto :goto_14

    :cond_e
    new-instance v0, Labcd/YP;

    invoke-direct {v0, p0, p1}, Labcd/YP;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object p0, v0

    :goto_14
    return-object p0
.end method

.method static j6(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 3

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-object p1

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/kO;

    invoke-virtual {v0}, Labcd/kO;->DW()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/gO;->j6(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_4
.end method

.method public static j6(Ljava/lang/String;)Ljava/security/Provider;
    .registers 3

    if-eqz p0, :cond_22

    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "provider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/security/NoSuchProviderException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method static j6(Labcd/SP;)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p0, v1}, Labcd/SP;->j6(Labcd/RP;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    return-object v0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/SN;

    invoke-virtual {v1}, Labcd/SN;->j6()Labcd/yN;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_22} :catch_23

    goto :goto_e

    :catch_23
    move-exception p0

    new-instance v0, Labcd/XN;

    const-string v1, "error processing certs"

    invoke-direct {v0, v1, p0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2d

    :goto_2c
    throw v0

    :goto_2d
    goto :goto_2c
.end method
