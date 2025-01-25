.class public interface abstract Lcom/appfour/backbone/api/define/DefineHook;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onActivityCreate(Lcom/appfour/backbone/api/closures/OnActivityClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onActivityStart(Lcom/appfour/backbone/api/closures/OnActivityClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onActivityStop(Lcom/appfour/backbone/api/closures/OnActivityClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onApplicationCreate(Lcom/appfour/backbone/api/closures/OnApplicationClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onClick(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnClickClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onCrash(Lcom/appfour/backbone/api/closures/OnCrashClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onEnter(Ljava/lang/Class;Ljava/lang/String;Lcom/appfour/backbone/api/closures/OnEnterClosure0;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure0<",
            "TC;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure1;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure1<",
            "TC;TT0;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure2;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure2<",
            "TC;TT0;TT1;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure3;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure3<",
            "TC;TT0;TT1;TT2;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure4;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/lang/Class<",
            "TT3;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure4<",
            "TC;TT0;TT1;TT2;TT3;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure5;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/lang/Class<",
            "TT3;>;",
            "Ljava/lang/Class<",
            "TT4;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure5<",
            "TC;TT0;TT1;TT2;TT3;TT4;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure0;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure0<",
            "TC;TE;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure1;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure1<",
            "TC;TE;TT0;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure2;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure2<",
            "TC;TE;TT0;TT1;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure3;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure3<",
            "TC;TE;TT0;TT1;TT2;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure4;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/lang/Class<",
            "TT3;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure4<",
            "TC;TE;TT0;TT1;TT2;TT3;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure5;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/lang/Class<",
            "TT3;>;",
            "Ljava/lang/Class<",
            "TT4;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure5<",
            "TC;TE;TT0;TT1;TT2;TT3;TT4;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onInAppProductImpression(Lcom/appfour/backbone/api/closures/OnInAppProductClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onInAppProductPurchase(Lcom/appfour/backbone/api/closures/OnInAppProductClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onInput(Lcom/appfour/backbone/api/closures/OnInputClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onInstall(Lcom/appfour/backbone/api/closures/OnMarketClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onItemClick(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnItemClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnItemClickClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onItemLongPress(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnItemClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnItemClickClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onLaunch(Lcom/appfour/backbone/api/closures/OnLaunchClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onLongPress(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnClickClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onMenuItemSelected(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation
.end method

.method public abstract onNewVersion(Lcom/appfour/backbone/api/closures/OnVoidClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onNotificationAction(Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onNotificationShown(Lcom/appfour/backbone/api/closures/OnNotificationClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onReferrerMarketClick(Lcom/appfour/backbone/api/closures/OnMarketClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onReferrerMarketImpression(Lcom/appfour/backbone/api/closures/OnMarketImpressionClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onTouch(Lcom/appfour/backbone/api/closures/OnTouchClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onUpdate(Lcom/appfour/backbone/api/closures/OnVoidClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onWindowHidden(Lcom/appfour/backbone/api/closures/OnWindowClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method public abstract onWindowShown(Lcom/appfour/backbone/api/closures/OnWindowClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end method
