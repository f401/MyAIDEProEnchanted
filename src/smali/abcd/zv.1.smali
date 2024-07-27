.class Labcd/zv;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bv;->onItemLongPress(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnItemClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Bv;

.field final j6:Lcom/appfour/backbone/api/closures/OnItemClickClosure;


# direct methods
.method constructor <init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnItemClickClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/zv;->DW:Labcd/Bv;

    iput-object p2, p0, Labcd/zv;->j6:Lcom/appfour/backbone/api/closures/OnItemClickClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 8

    iget-object v0, p0, Labcd/zv;->j6:Lcom/appfour/backbone/api/closures/OnItemClickClosure;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    check-cast v5, Landroid/view/View;

    invoke-interface/range {v0 .. v5}, Lcom/appfour/backbone/api/closures/OnItemClickClosure;->getValue(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
