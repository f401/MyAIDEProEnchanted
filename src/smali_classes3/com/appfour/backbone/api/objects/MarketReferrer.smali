.class public Lcom/appfour/backbone/api/objects/MarketReferrer;
.super Ljava/lang/Object;


# instance fields
.field private final market:Lcom/appfour/backbone/api/objects/Market;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/MarketReferrer;->market:Lcom/appfour/backbone/api/objects/Market;

    iput-object p2, p0, Lcom/appfour/backbone/api/objects/MarketReferrer;->url:Ljava/lang/String;

    return-void
.end method

.method private getUri()Landroid/net/Uri;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://link?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appfour/backbone/api/objects/MarketReferrer;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCampaign()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(not set)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_13

    if-nez v1, :cond_14

    return-object v0

    :catchall_13
    move-exception v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMarket()Lcom/appfour/backbone/api/objects/Market;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/MarketReferrer;->market:Lcom/appfour/backbone/api/objects/Market;

    return-object v0
.end method

.method public getMedium()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "utm_medium"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(not set)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_13

    if-nez v1, :cond_14

    return-object v0

    :catchall_13
    move-exception v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(not set)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_13

    if-nez v1, :cond_14

    return-object v0

    :catchall_13
    move-exception v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerm()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "utm_term"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/MarketReferrer;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isPcampaignid()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "pcampaignid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :catchall_e
    move-exception v0

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/runtime/a;->DW(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
