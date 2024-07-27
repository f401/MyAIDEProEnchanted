.class Labcd/Hu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Iu;->onApplicationCreate(Lcom/appfour/backbone/api/closures/OnApplicationClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Iu;

.field final j6:Lcom/appfour/backbone/api/closures/OnApplicationClosure;


# direct methods
.method constructor <init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnApplicationClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/Hu;->DW:Labcd/Iu;

    iput-object p2, p0, Labcd/Hu;->j6:Lcom/appfour/backbone/api/closures/OnApplicationClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    iget-object v1, p0, Labcd/Hu;->j6:Lcom/appfour/backbone/api/closures/OnApplicationClosure;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/app/Application;

    invoke-interface {v1, v0}, Lcom/appfour/backbone/api/closures/OnApplicationClosure;->getValue(Landroid/app/Application;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
