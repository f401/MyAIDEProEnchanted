.class Labcd/Pv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Qv$a;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Qv$a;

.field final j6:Lcom/appfour/backbone/api/objects/UserActionWindow;


# direct methods
.method constructor <init>(Labcd/Qv$a;Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 3

    iput-object p1, p0, Labcd/Pv;->DW:Labcd/Qv$a;

    iput-object p2, p0, Labcd/Pv;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Labcd/Pv;->DW:Labcd/Qv$a;

    invoke-static {v0}, Labcd/Qv$a;->j6(Labcd/Qv$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/Pv;->DW:Labcd/Qv$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Qv$a;->j6(Labcd/Qv$a;Z)Z

    iget-object v0, p0, Labcd/Pv;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Labcd/Qv$a;->j6(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Pv;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    iget-object v1, p0, Labcd/Pv;->DW:Labcd/Qv$a;

    invoke-static {v1}, Labcd/Qv$a;->DW(Labcd/Qv$a;)F

    move-result v1

    iget-object v2, p0, Labcd/Pv;->DW:Labcd/Qv$a;

    invoke-static {v2}, Labcd/Qv$a;->FH(Labcd/Qv$a;)F

    move-result v2

    invoke-static {v0, v1, v2}, Labcd/Qv$e;->DW(Lcom/appfour/backbone/api/objects/UserActionWindow;FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/Pv;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    iget-object v1, p0, Labcd/Pv;->DW:Labcd/Qv$a;

    invoke-static {v1}, Labcd/Qv$a;->DW(Labcd/Qv$a;)F

    move-result v1

    iget-object v2, p0, Labcd/Pv;->DW:Labcd/Qv$a;

    invoke-static {v2}, Labcd/Qv$a;->FH(Labcd/Qv$a;)F

    move-result v2

    invoke-static {v0, v1, v2}, Labcd/Qv$e;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FF)V

    goto :goto_0
.end method
