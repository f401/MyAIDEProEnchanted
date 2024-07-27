.class Labcd/rv;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bv;->onLaunch(Lcom/appfour/backbone/api/closures/OnLaunchClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Bv;

.field final j6:Lcom/appfour/backbone/api/closures/OnLaunchClosure;


# direct methods
.method constructor <init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnLaunchClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/rv;->DW:Labcd/Bv;

    iput-object p2, p0, Labcd/rv;->j6:Lcom/appfour/backbone/api/closures/OnLaunchClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    iget-object v1, p0, Labcd/rv;->j6:Lcom/appfour/backbone/api/closures/OnLaunchClosure;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    invoke-interface {v1, v0}, Lcom/appfour/backbone/api/closures/OnLaunchClosure;->getValue(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
