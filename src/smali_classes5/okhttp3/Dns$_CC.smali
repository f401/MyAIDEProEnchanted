.class public final synthetic Lokhttp3/Dns$_CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-eqz p0, :cond_26

    :try_start_2
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken system behaviour for dns lookup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_26
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "hostname == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
