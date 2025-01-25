.class public abstract Labcd/yu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appfour/backbone/api/define/DefineHook;
.implements Lcom/appfour/backbone/api/define/DefineHookRuntime;


# instance fields
.field protected j6:Labcd/jv;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Labcd/jv;
    .registers 2

    iget-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    return-object v0
.end method

.method protected abstract j6()Lcom/appfour/backbone/api/define/DefineHook;
.end method

.method protected abstract j6(JLcom/appfour/backbone/api/objects/EventData;)V
.end method

.method protected abstract j6(JLjava/lang/Throwable;)V
.end method
