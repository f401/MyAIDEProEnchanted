.class public Lcom/appfour/backbone/api/objects/UserTouchAction;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final CLICK_KIND:I = 0x7

.field public static final ITEM_CLICK_KIND:I = 0x6

.field public static final ITEM_LONG_PRESS_KIND:I = 0x3

.field public static final LONG_PRESS_KIND:I = 0x4

.field public static final LONG_TAP_KIND:I = 0x2

.field public static final MENU_ITEM_SELECT_KIND:I = 0x5

.field public static final SWIPE_KIND:I = 0x1

.field public static final TAP_KIND:I


# instance fields
.field private final kind:I

.field private final widget:Lcom/appfour/backbone/api/objects/UserActionWidget;

.field private final window:Lcom/appfour/backbone/api/objects/UserActionWindow;

.field private final x1:I

.field private final x2:I

.field private final y1:I

.field private final y2:I


# direct methods
.method public constructor <init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->window:Lcom/appfour/backbone/api/objects/UserActionWindow;

    iput p3, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->kind:I

    iput p4, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->x1:I

    iput p5, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->y1:I

    iput p6, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->x2:I

    iput p7, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->y2:I

    iput-object p2, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->widget:Lcom/appfour/backbone/api/objects/UserActionWidget;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->window:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getActivityClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKind()I
    .registers 2

    iget v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->kind:I

    return v0
.end method

.method public getViewIdText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->widget:Lcom/appfour/backbone/api/objects/UserActionWidget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getViewIdText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->widget:Lcom/appfour/backbone/api/objects/UserActionWidget;

    return-object v0
.end method

.method public getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->window:Lcom/appfour/backbone/api/objects/UserActionWindow;

    return-object v0
.end method

.method public getX1()I
    .registers 2

    iget v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->x1:I

    return v0
.end method

.method public getX2()I
    .registers 2

    iget v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->x2:I

    return v0
.end method

.method public getY1()I
    .registers 2

    iget v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->y1:I

    return v0
.end method

.method public getY2()I
    .registers 2

    iget v0, p0, Lcom/appfour/backbone/api/objects/UserTouchAction;->y2:I

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
