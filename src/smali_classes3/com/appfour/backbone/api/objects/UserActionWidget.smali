.class public Lcom/appfour/backbone/api/objects/UserActionWidget;
.super Ljava/lang/Object;


# instance fields
.field private final itemPosition:I

.field private final itemView:Landroid/view/View;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->view:Landroid/view/View;

    iput-object p3, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->itemView:Landroid/view/View;

    iput p2, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->itemPosition:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition()I
    .registers 2

    iget v0, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->itemPosition:I

    return v0
.end method

.method public getItemView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewIdText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->view:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appfour/backbone/api/objects/UserActionWidget;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/appfour/backbone/api/runtime/a;->j6(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/runtime/a;->DW(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
