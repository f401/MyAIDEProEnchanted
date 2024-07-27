.class public Lcom/appfour/backbone/api/objects/InAppProduct;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private final isSubscription:Z

.field private final market:Lcom/appfour/backbone/api/objects/Market;

.field private final priceInMicros:J

.field private final productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->productId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->priceInMicros:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->currencyCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->market:Lcom/appfour/backbone/api/objects/Market;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->isSubscription:Z

    return-void
.end method

.method public constructor <init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;ZJLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->productId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->priceInMicros:J

    iput-object p6, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->currencyCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->market:Lcom/appfour/backbone/api/objects/Market;

    iput-boolean p3, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->isSubscription:Z

    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket()Lcom/appfour/backbone/api/objects/Market;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->market:Lcom/appfour/backbone/api/objects/Market;

    return-object v0
.end method

.method public getPriceInMicros()J
    .registers 3

    iget-wide v0, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->priceInMicros:J

    return-wide v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public isSubscription()Z
    .registers 2

    iget-boolean v0, p0, Lcom/appfour/backbone/api/objects/InAppProduct;->isSubscription:Z

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
