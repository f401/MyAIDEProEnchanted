.class Labcd/mv;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bv;->onLongPress(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Bv;

.field final j6:Lcom/appfour/backbone/api/closures/OnClickClosure;


# direct methods
.method constructor <init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnClickClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/mv;->DW:Labcd/Bv;

    iput-object p2, p0, Labcd/mv;->j6:Lcom/appfour/backbone/api/closures/OnClickClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 5

    iget-object v0, p0, Labcd/mv;->j6:Lcom/appfour/backbone/api/closures/OnClickClosure;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/appfour/backbone/api/closures/OnClickClosure;->getValue(Landroid/app/Activity;Landroid/view/View;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object p1

    return-object p1
.end method
