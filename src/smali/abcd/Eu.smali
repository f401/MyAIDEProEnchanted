.class Labcd/Eu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Iu;->onInstall(Lcom/appfour/backbone/api/closures/OnMarketClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Iu;

.field final j6:Lcom/appfour/backbone/api/closures/OnMarketClosure;


# direct methods
.method constructor <init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnMarketClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/Eu;->DW:Labcd/Iu;

    iput-object p2, p0, Labcd/Eu;->j6:Lcom/appfour/backbone/api/closures/OnMarketClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    iget-object v1, p0, Labcd/Eu;->j6:Lcom/appfour/backbone/api/closures/OnMarketClosure;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/appfour/backbone/api/objects/Market;

    invoke-interface {v1, v0}, Lcom/appfour/backbone/api/closures/OnMarketClosure;->getValue(Lcom/appfour/backbone/api/objects/Market;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
