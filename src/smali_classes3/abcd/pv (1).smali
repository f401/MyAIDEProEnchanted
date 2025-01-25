.class Labcd/pv;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bv;->onNotificationShown(Lcom/appfour/backbone/api/closures/OnNotificationClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Bv;

.field final j6:Lcom/appfour/backbone/api/closures/OnNotificationClosure;


# direct methods
.method constructor <init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnNotificationClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/pv;->DW:Labcd/Bv;

    iput-object p2, p0, Labcd/pv;->j6:Lcom/appfour/backbone/api/closures/OnNotificationClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    iget-object v0, p0, Labcd/pv;->j6:Lcom/appfour/backbone/api/closures/OnNotificationClosure;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotification;

    invoke-interface {v0, p1}, Lcom/appfour/backbone/api/closures/OnNotificationClosure;->getValue(Lcom/appfour/backbone/api/objects/UserNotification;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object p1

    return-object p1
.end method
