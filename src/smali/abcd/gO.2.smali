.class Labcd/gO;
.super Ljava/lang/Object;


# direct methods
.method static j6(Ljava/util/List;)Labcd/HL;
    .registers 4

    new-instance v1, Labcd/rL;

    invoke-direct {v1}, Labcd/rL;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Labcd/WL;

    invoke-direct {v0, v1}, Labcd/WL;-><init>(Labcd/rL;)V

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-virtual {v1, v0}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_0
.end method

.method static j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 1

    if-nez p0, :cond_0

    new-instance p0, Labcd/jO;

    invoke-direct {p0}, Labcd/jO;-><init>()V

    :cond_0
    return-object p0
.end method

.method static j6(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 3

    if-nez p0, :cond_0

    invoke-static {p1}, Labcd/gO;->j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Labcd/gO;->j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/YP;

    invoke-direct {v0, p0, p1}, Labcd/YP;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method static j6(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 4

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/kO;

    invoke-virtual {v0}, Labcd/kO;->DW()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/gO;->j6(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_0
.end method

.method public static j6(Ljava/lang/String;)Ljava/security/Provider;
    .registers 3

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "provider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6(Labcd/SP;)Ljava/util/List;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Labcd/SP;->j6(Labcd/RP;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/SN;

    invoke-virtual {v0}, Labcd/SN;->j6()Labcd/yN;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/XN;

    const-string v2, "error processing certs"

    invoke-direct {v1, v2, v0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
