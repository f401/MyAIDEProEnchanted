.class public abstract Labcd/Iu;
.super Labcd/Bv;


# instance fields
.field private BT:Z

.field private KD:Z

.field private P8:Z

.field private SI:Z

.field private ei:Z

.field private gW:Z

.field private nw:Z

.field private vy:Z

.field private yS:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/Bv;-><init>()V

    return-void
.end method


# virtual methods
.method public BT()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->KD:Z

    return v0
.end method

.method public KD()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->vy:Z

    return v0
.end method

.method public P8()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->SI:Z

    return v0
.end method

.method public SI()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->P8:Z

    return v0
.end method

.method public cn()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->gW:Z

    return v0
.end method

.method public ei()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->nw:Z

    return v0
.end method

.method public nw()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->yS:Z

    return v0
.end method

.method public onApplicationCreate(Lcom/appfour/backbone/api/closures/OnApplicationClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->ei:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Hu;

    invoke-direct {v0, p0, p1}, Labcd/Hu;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnApplicationClosure;)V

    goto :goto_0
.end method

.method public onCrash(Lcom/appfour/backbone/api/closures/OnCrashClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->KD:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Bu;

    invoke-direct {v0, p0, p1}, Labcd/Bu;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnCrashClosure;)V

    goto :goto_0
.end method

.method public onInAppProductImpression(Lcom/appfour/backbone/api/closures/OnInAppProductClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->SI:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Cu;

    invoke-direct {v0, p0, p1}, Labcd/Cu;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnInAppProductClosure;)V

    goto :goto_0
.end method

.method public onInAppProductPurchase(Lcom/appfour/backbone/api/closures/OnInAppProductClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->nw:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Du;

    invoke-direct {v0, p0, p1}, Labcd/Du;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnInAppProductClosure;)V

    goto :goto_0
.end method

.method public onInstall(Lcom/appfour/backbone/api/closures/OnMarketClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->yS:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Eu;

    invoke-direct {v0, p0, p1}, Labcd/Eu;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnMarketClosure;)V

    goto :goto_0
.end method

.method public onNewVersion(Lcom/appfour/backbone/api/closures/OnVoidClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->BT:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Gu;

    invoke-direct {v0, p0, p1}, Labcd/Gu;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnVoidClosure;)V

    goto :goto_0
.end method

.method public onReferrerMarketClick(Lcom/appfour/backbone/api/closures/OnMarketClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->P8:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Au;

    invoke-direct {v0, p0, p1}, Labcd/Au;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnMarketClosure;)V

    goto :goto_0
.end method

.method public onReferrerMarketImpression(Lcom/appfour/backbone/api/closures/OnMarketImpressionClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->vy:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/zu;

    invoke-direct {v0, p0, p1}, Labcd/zu;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnMarketImpressionClosure;)V

    goto :goto_0
.end method

.method public onUpdate(Lcom/appfour/backbone/api/closures/OnVoidClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Iu;->gW:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Fu;

    invoke-direct {v0, p0, p1}, Labcd/Fu;-><init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnVoidClosure;)V

    goto :goto_0
.end method

.method public ro()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->BT:Z

    return v0
.end method

.method public vy()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Iu;->ei:Z

    return v0
.end method
