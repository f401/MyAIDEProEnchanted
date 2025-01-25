.class Labcd/qv;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bv;->onNotificationAction(Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Bv;

.field final j6:Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;


# direct methods
.method constructor <init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/qv;->DW:Labcd/Bv;

    iput-object p2, p0, Labcd/qv;->j6:Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    iget-object v0, p0, Labcd/qv;->j6:Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-interface {v0, p1}, Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;->getValue(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object p1

    return-object p1
.end method
