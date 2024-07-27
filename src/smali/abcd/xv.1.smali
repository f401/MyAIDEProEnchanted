.class Labcd/xv;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bv;->onMenuItemSelected(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Bv;

.field final j6:Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;


# direct methods
.method constructor <init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/xv;->DW:Labcd/Bv;

    iput-object p2, p0, Labcd/xv;->j6:Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 5

    iget-object v2, p0, Labcd/xv;->j6:Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v2, v0, v1}, Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;->getValue(Landroid/app/Activity;Landroid/view/MenuItem;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
