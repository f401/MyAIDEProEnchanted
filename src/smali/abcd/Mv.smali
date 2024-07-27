.class public Labcd/Mv;
.super Labcd/lv;

# interfaces
.implements Lcom/appfour/backbone/api/runtime/a;


# static fields
.field private static Zo:Labcd/Mv;


# instance fields
.field private VH:Labcd/Dv;

.field private gn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/lv;-><init>()V

    new-instance v0, Labcd/Dv;

    invoke-direct {v0}, Labcd/Dv;-><init>()V

    iput-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Mv;->gn:Ljava/util/Map;

    return-void
.end method

.method private static DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_2

    const/4 v0, 0x3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_4

    or-int/lit8 v0, v0, 0x30

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_5

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x50

    goto/16 :goto_1
.end method

.method private DW(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const-string v0, "center"

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "outside"

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "top|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "left"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bottom|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "center|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "right"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "center"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private DW(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private DW(Landroid/view/View;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, p1}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Labcd/Mv;->Hw(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private DW(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private DW(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Service;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":overlay_window"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "overlay_window"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "toast"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    :try_start_0
    const-string v1, "android.widget.MenuPopupWindow$MenuDropDownListView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":menu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_4
    :try_start_1
    const-class v1, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {p0, v0, v1}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":menu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :cond_5
    :try_start_2
    const-string v1, "floating_toolbar"

    invoke-direct {p0, v0, v1}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":floating_toolbar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :cond_6
    :try_start_3
    const-string v1, "android.widget.Editor$InsertionHandleView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "android.widget.Editor$SelectionHandleView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":editor_handle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":popup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":dialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private DW(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v1, v0}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object v2

    const-string v3, "android.text"

    invoke-virtual {v2, v3}, Lcom/appfour/backbone/api/objects/UserNotification;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v3, v2}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object v4

    const-string v5, "android.title"

    invoke-virtual {v4, v5}, Lcom/appfour/backbone/api/objects/UserNotification;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v5, v4}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private DW(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0, p1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Labcd/Uv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static DW(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Labcd/xu;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static FH(Lcom/appfour/backbone/api/objects/UserTouchAction;)I
    .registers 5

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX2()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY2()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    div-int/lit8 v0, v2, 0x2

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    div-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX2()I

    move-result v3

    if-le v0, v3, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY2()I

    move-result v2

    if-le v1, v2, :cond_5

    or-int/lit8 v0, v0, 0x30

    goto :goto_1

    :cond_5
    or-int/lit8 v0, v0, 0x50

    goto :goto_1
.end method

.method private FH(Landroid/view/View;)Landroid/widget/TextView;
    .registers 5

    invoke-direct {p0, p1}, Labcd/Mv;->v5(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Labcd/Mv;->Hw(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static FH(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Labcd/Mv;->FH(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Labcd/Mv;->DW(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private FH(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Hw(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const v0, 0x102000a

    if-eq p1, v0, :cond_0

    const v0, 0x10203db

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-direct {p0, p1}, Labcd/Mv;->FH(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1020014
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private Hw(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    :try_start_0
    instance-of v1, p1, Landroid/support/v7/widget/RecyclerView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :cond_1
    :try_start_1
    instance-of v1, p1, Landroid/support/v4/view/ViewPager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_0

    :goto_1
    :try_start_2
    instance-of v1, p1, Landroid/support/v4/widget/DrawerLayout;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v1, :cond_0

    :goto_2
    instance-of v0, p1, Landroid/widget/AdapterView;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public static XL()Labcd/Mv;
    .registers 1

    sget-object v0, Labcd/Mv;->Zo:Labcd/Mv;

    return-object v0
.end method

.method public static aM()V
    .registers 1

    sget-object v0, Labcd/Mv;->Zo:Labcd/Mv;

    if-nez v0, :cond_0

    new-instance v0, Labcd/Mv;

    invoke-direct {v0}, Labcd/Mv;-><init>()V

    sput-object v0, Labcd/Mv;->Zo:Labcd/Mv;

    sget-object v0, Labcd/Mv;->Zo:Labcd/Mv;

    invoke-static {v0}, Lcom/appfour/backbone/api/runtime/b;->j6(Lcom/appfour/backbone/api/runtime/a;)V

    :cond_0
    return-void
.end method

.method private j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private j6(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private j6(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private j6(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Landroid/view/MenuItem;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Mv;->FH(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Landroid/view/View;ILandroid/view/View;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, p3}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Labcd/Mv;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Labcd/Mv;->Hw(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Labcd/Mv;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/InAppProduct;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/InAppProduct;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/Market;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/Market;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/Market;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/MarketReferrer;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->isPcampaignid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pcampaignid"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getSource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getMedium()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getMedium()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labcd/Mv;->j6(Landroid/view/View;ILandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->DW(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/Mv;->gn:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Mv;->gn:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserInputAction;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBack in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInput in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserLaunchAction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    const-string v1, "android.text"

    invoke-virtual {p1, v1}, Lcom/appfour/backbone/api/objects/UserNotification;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    const-string v1, "android.title"

    invoke-virtual {p1, v1}, Lcom/appfour/backbone/api/objects/UserNotification;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "notification"

    goto :goto_0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Ljava/lang/String;
    .registers 5

    const-string v0, "__CONTENT"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "__DELETE"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDelete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick unknown in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getKind()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMenuItemSelected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongPress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemLongPress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongTap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)I

    move-result v1

    invoke-direct {p0, v1}, Labcd/Mv;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwipe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)I

    move-result v1

    invoke-direct {p0, v1}, Labcd/Mv;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Mv;->FH(Lcom/appfour/backbone/api/objects/UserTouchAction;)I

    move-result v1

    invoke-direct {p0, v1}, Labcd/Mv;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)I

    move-result v1

    invoke-direct {p0, v1}, Labcd/Mv;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private v5(I)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "left"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "right"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private v5(Landroid/view/View;)Z
    .registers 3

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()I
    .registers 2

    sget v0, Labcd/Qv;->DW:I

    return v0
.end method

.method public DW(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of v0, p1, Lcom/appfour/backbone/api/objects/InAppProduct;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appfour/backbone/api/objects/InAppProduct;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/InAppProduct;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/Market;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/appfour/backbone/api/objects/Market;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/Market;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/MarketReferrer;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/appfour/backbone/api/objects/MarketReferrer;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/MarketReferrer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserNotification;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotification;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/view/MenuItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserActionWidget;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/appfour/backbone/api/objects/UserActionWidget;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserInputAction;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/appfour/backbone/api/objects/UserInputAction;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserInputAction;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, Ljava/lang/Thread;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Labcd/Mv;->FH(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public DW(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Labcd/Mv;->FH(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public EQ()J
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Labcd/Mv;->j6()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public FH()I
    .registers 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public Hw()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Mv;->u7()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Mv;->J8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J0()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x3a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public J8()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public QX()Ljava/lang/String;
    .registers 2

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public VH()J
    .registers 4

    :try_start_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Ws()Ljava/lang/String;
    .registers 2

    invoke-static {}, Labcd/ApplicationUtils;->DW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Zo()Z
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public gn()Z
    .registers 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j6()J
    .registers 4

    :try_start_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public j6(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Mv;->j6(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/Mv;->DW(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0, p1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Labcd/Uv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-direct {p0, p1}, Labcd/Mv;->FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserActionWidget;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/appfour/backbone/api/objects/UserActionWidget;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0, p1}, Labcd/Dv;->j6(Ljava/util/List;)V

    return-void
.end method

.method public tp()Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    new-instance v0, Labcd/Xv;

    invoke-direct {v0}, Labcd/Xv;-><init>()V

    return-object v0
.end method

.method public u7()Ljava/lang/String;
    .registers 3

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, v1, :cond_0

    move v0, v1

    move v3, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    move v3, v1

    goto :goto_0
.end method

.method public we()Ljava/lang/String;
    .registers 8

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    const-string v0, ""

    if-eqz v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    iget-object v5, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v6, "android.hardware."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "android.hardware.sensor."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v0

    :cond_4
    return-object v1
.end method
