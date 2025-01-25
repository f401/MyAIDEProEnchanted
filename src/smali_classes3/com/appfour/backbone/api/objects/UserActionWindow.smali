.class public Lcom/appfour/backbone/api/objects/UserActionWindow;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVITY_TYPE:I = 0x0

.field public static final DIALOG_TYPE:I = 0x1

.field public static final OVERLAY_TYPE:I = 0x3

.field public static final POPUP_TYPE:I = 0x2

.field public static final TOAST_TYPE:I = 0x4


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final type:I

.field private final windowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->activity:Landroid/app/Activity;

    iput p2, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->type:I

    iput-object p3, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->windowView:Landroid/view/View;

    invoke-static {p0}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->windowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->windowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIMEHeight()I
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->DW()I

    move-result v0

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->type:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->windowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getWindowView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserActionWindow;->windowView:Landroid/view/View;

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
