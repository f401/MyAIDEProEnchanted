.class public Lcom/appfour/backbone/api/objects/UserInputAction;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private final isBackKey:Z

.field private final window:Lcom/appfour/backbone/api/objects/UserActionWindow;


# direct methods
.method public constructor <init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/UserInputAction;->window:Lcom/appfour/backbone/api/objects/UserActionWindow;

    iput-boolean p2, p0, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey:Z

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserInputAction;->window:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserInputAction;->window:Lcom/appfour/backbone/api/objects/UserActionWindow;

    return-object v0
.end method

.method public isBackKey()Z
    .registers 2

    iget-boolean v0, p0, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/runtime/a;->DW(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
