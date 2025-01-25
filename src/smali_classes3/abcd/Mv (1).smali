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
            "Ljava/util/Map<",
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
    .registers 5

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_e1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    if-ltz v0, :cond_e1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_e1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_e1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    const/4 v2, 0x3

    if-ltz v0, :cond_41

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    if-ge v0, v3, :cond_41

    const/4 v1, 0x3

    goto :goto_85

    :cond_41
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    if-lt v0, v3, :cond_64

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v3, v2

    if-ge v0, v3, :cond_64

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_85

    :cond_64
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v3, v2

    if-lt v0, v3, :cond_85

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_85

    const/4 v0, 0x5

    const/4 v1, 0x5

    :cond_85
    :goto_85
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    if-ltz v0, :cond_9d

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    if-ge v0, v3, :cond_9d

    or-int/lit8 v1, v1, 0x30

    goto :goto_e1

    :cond_9d
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    if-lt v0, v3, :cond_c0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v3, v2

    if-ge v0, v3, :cond_c0

    or-int/lit8 v1, v1, 0x10

    goto :goto_e1

    :cond_c0
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v3, v2

    if-lt v0, v3, :cond_e1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getHeight()I

    move-result p0

    if-ge v0, p0, :cond_e1

    or-int/lit8 v1, v1, 0x50

    :cond_e1
    :goto_e1
    return v1
.end method

.method private DW(I)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x11

    const-string v1, "center"

    if-ne p1, v0, :cond_7

    return-object v1

    :cond_7
    if-nez p1, :cond_c

    const-string p1, "outside"

    return-object p1

    :cond_c
    and-int/lit8 v0, p1, 0x20

    const-string v2, ""

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "top|"

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_24
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bottom|"

    goto :goto_1c

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "center|"

    goto :goto_1c

    :goto_3e
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_54

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "left"

    :goto_4c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    :cond_54
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_63

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "right"

    goto :goto_4c

    :cond_63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :goto_6f
    return-object p1
.end method

.method private DW(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private DW(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, p1}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-direct {p0, v0}, Labcd/Mv;->Hw(I)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    iget-object v1, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    return-object p1

    :cond_2b
    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private DW(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getView()Landroid/view/View;

    move-result-object p1

    :goto_f
    invoke-direct {p0, p1}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return-object p1
.end method

.method private DW(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;
    .registers 6

    const-string v0, ":menu"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v1

    if-eqz v1, :cond_178

    const/4 v2, 0x1

    if-eq v1, v2, :cond_125

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6b

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3a

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Service;

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":overlay_window"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_37
    const-string p1, "overlay_window"

    return-object p1

    :cond_3a
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_68
    const-string p1, "toast"

    return-object p1

    :cond_6b
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v1

    :try_start_6f
    const-string v2, "android.widget.MenuPopupWindow$MenuDropDownListView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_94

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_92
    .catchall {:try_start_6f .. :try_end_92} :catchall_93

    return-object p1

    :catchall_93
    move-exception v2

    :cond_94
    :try_start_94
    const-class v2, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {p0, v1, v2}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b3
    .catchall {:try_start_94 .. :try_end_b3} :catchall_b4

    return-object p1

    :catchall_b4
    move-exception v0

    :cond_b5
    :try_start_b5
    const-string v0, "floating_toolbar"

    invoke-direct {p0, v1, v0}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":floating_toolbar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_d6
    .catchall {:try_start_b5 .. :try_end_d6} :catchall_d7

    return-object p1

    :catchall_d7
    move-exception v0

    :cond_d8
    :try_start_d8
    const-string v0, "android.widget.Editor$InsertionHandleView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f0

    const-string v0, "android.widget.Editor$SelectionHandleView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10b

    :cond_f0
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

    move-result-object p1
    :try_end_109
    .catchall {:try_start_d8 .. :try_end_109} :catchall_10a

    return-object p1

    :catchall_10a
    move-exception v0

    :cond_10b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":popup"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_125
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_15e

    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_15e

    iget-object v1, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":dialog"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_178
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    move-result-object p1

    const-string v4, "android.title"

    invoke-virtual {p1, v4}, Lcom/appfour/backbone/api/objects/UserNotification;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v4, p1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    if-eqz v3, :cond_50

    if-eqz v1, :cond_4b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4b
    invoke-virtual {p0, v2}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_50
    if-eqz v4, :cond_74

    if-eqz v1, :cond_6f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6f
    invoke-virtual {p0, p1}, Labcd/Mv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_74
    const/4 p1, 0x0

    return-object p1
.end method

.method private DW(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0, p1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    invoke-static {p1}, Labcd/Uv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static DW(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Labcd/xu;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :catchall_e
    move-exception p0

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private static FH(Lcom/appfour/backbone/api/objects/UserTouchAction;)I
    .registers 5

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX2()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY2()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-nez v0, :cond_21

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_4a

    :cond_21
    :goto_21
    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_27

    const/4 v2, 0x1

    goto :goto_34

    :cond_27
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v2

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX2()I

    move-result v3

    if-le v2, v3, :cond_33

    const/4 v2, 0x3

    goto :goto_34

    :cond_33
    const/4 v2, 0x5

    :goto_34
    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_3b

    or-int/lit8 p0, v2, 0x10

    goto :goto_4a

    :cond_3b
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY2()I

    move-result p0

    if-le v0, p0, :cond_48

    or-int/lit8 p0, v2, 0x30

    goto :goto_4a

    :cond_48
    or-int/lit8 p0, v2, 0x50

    :goto_4a
    return p0
.end method

.method private FH(Landroid/view/View;)Landroid/widget/TextView;
    .registers 5

    invoke-direct {p0, p1}, Labcd/Mv;->v5(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_16
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_37

    invoke-direct {p0, p1}, Labcd/Mv;->Hw(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_37

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_37

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_34

    return-object v1

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_37
    const/4 p1, 0x0

    return-object p1
.end method

.method private FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_27

    :cond_8
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x0

    :goto_28
    return-object p1
.end method

.method private static FH(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Labcd/Mv;->FH(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_87

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2b
    const-string v5, "."

    const-string v6, " in "

    if-ge v4, v2, :cond_61

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Labcd/Mv;->DW(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    aget-object p0, p0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_87
    :goto_87
    return-object v0
.end method

.method private FH(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    :try_start_3
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_e} :catch_10

    const/4 p1, 0x1

    return p1

    :catch_10
    move-exception p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private Hw(I)Z
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1a

    const v0, 0x102000a

    if-eq p1, v0, :cond_1a

    const v0, 0x10203db

    if-eq p1, v0, :cond_1a

    packed-switch p1, :pswitch_data_1c

    packed-switch p1, :pswitch_data_26

    invoke-direct {p0, p1}, Labcd/Mv;->FH(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1a
    :pswitch_1a  #0x1020014, 0x1020015, 0x1020016, 0x1020019, 0x102001a, 0x102001b
    return v1

    nop

    :pswitch_data_1c
    .packed-switch 0x1020014
        :pswitch_1a  #01020014
        :pswitch_1a  #01020015
        :pswitch_1a  #01020016
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x1020019
        :pswitch_1a  #01020019
        :pswitch_1a  #0102001a
        :pswitch_1a  #0102001b
    .end packed-switch
.end method

.method private Hw(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    instance-of v1, p1, Landroid/support/v7/widget/RecyclerView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6

    if-eqz v1, :cond_7

    return v0

    :catchall_6
    move-exception v1

    :cond_7
    :try_start_7
    instance-of v1, p1, Landroid/support/v4/view/ViewPager;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_c

    if-eqz v1, :cond_d

    return v0

    :catchall_c
    move-exception v1

    :cond_d
    :try_start_d
    instance-of v1, p1, Landroid/support/v4/widget/DrawerLayout;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_12

    if-eqz v1, :cond_13

    return v0

    :catchall_12
    move-exception v0

    :cond_13
    instance-of p1, p1, Landroid/widget/AdapterView;

    return p1
.end method

.method public static XL()Labcd/Mv;
    .registers 1

    sget-object v0, Labcd/Mv;->Zo:Labcd/Mv;

    return-object v0
.end method

.method public static aM()V
    .registers 1

    sget-object v0, Labcd/Mv;->Zo:Labcd/Mv;

    if-nez v0, :cond_e

    new-instance v0, Labcd/Mv;

    invoke-direct {v0}, Labcd/Mv;-><init>()V

    sput-object v0, Labcd/Mv;->Zo:Labcd/Mv;

    invoke-static {v0}, Lcom/appfour/backbone/api/runtime/b;->j6(Lcom/appfour/backbone/api/runtime/a;)V

    :cond_e
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
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    const/4 p1, 0x0

    return-object p1
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

    if-eqz v0, :cond_b

    return-object p1

    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Labcd/Mv;->j6(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method private j6(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    :try_start_3
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p1

    :cond_11
    const-string p1, "unknown"

    return-object p1
.end method

.method private j6(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    const-string p1, "unknown"

    goto :goto_d

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method private j6(Landroid/view/MenuItem;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Mv;->FH(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Landroid/view/View;ILandroid/view/View;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, p3}, Labcd/Mv;->FH(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p3

    const-string v1, ":"

    if-eqz p3, :cond_3e

    invoke-direct {p0, p1}, Labcd/Mv;->Hw(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3e
    invoke-direct {p0, v0}, Labcd/Mv;->Hw(I)Z

    move-result p3

    if-nez p3, :cond_6a

    invoke-direct {p0, p1}, Labcd/Mv;->Hw(I)Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/InAppProduct;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/InAppProduct;->getProductId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/Market;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/Market;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string p1, "unknown"

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/Market;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/MarketReferrer;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->isPcampaignid()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "pcampaignid"

    return-object p1

    :cond_9
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getSource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p1, "unknown"

    return-object p1

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getMedium()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/MarketReferrer;->getMedium()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    :cond_3e
    const-string p1, ""

    :goto_40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Labcd/Mv;->j6(Landroid/view/View;ILandroid/view/View;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_17
    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;
    .registers 4

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

    if-eqz v0, :cond_17

    return-object v0

    :cond_17
    invoke-direct {p0, p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Mv;->gn:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserInputAction;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBack in "

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInput in "

    goto :goto_d
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserLaunchAction;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    const-string v1, "android.text"

    invoke-virtual {p1, v1}, Lcom/appfour/backbone/api/objects/UserNotification;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification:"

    if-eqz v0, :cond_20

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    const-string v2, "android.title"

    invoke-virtual {p1, v2}, Lcom/appfour/backbone/api/objects/UserNotification;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3e
    const-string p1, "notification"

    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Ljava/lang/String;
    .registers 5

    const-string v0, "__CONTENT"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_26
    const-string v0, "__DELETE"

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDelete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4c
    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick unknown in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotificationAction;->getNotification()Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getKind()I

    move-result v0

    const-string v1, " in "

    packed-switch v0, :pswitch_data_92

    const/4 p1, 0x0

    return-object p1

    :pswitch_b  #0x7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick "

    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object v2

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_33  #0x6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick "

    goto :goto_12

    :pswitch_3b  #0x5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemSelected "

    goto :goto_12

    :pswitch_43  #0x4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongPress "

    goto :goto_12

    :pswitch_4b  #0x3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemLongPress "

    goto :goto_12

    :pswitch_53  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongTap "

    :goto_5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Mv;->DW(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :pswitch_66  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwipe "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Mv;->DW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Mv;->FH(Lcom/appfour/backbone/api/objects/UserTouchAction;)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Mv;->v5(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :pswitch_89  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTap "

    goto :goto_5a

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_89  #00000000
        :pswitch_66  #00000001
        :pswitch_53  #00000002
        :pswitch_4b  #00000003
        :pswitch_43  #00000004
        :pswitch_3b  #00000005
        :pswitch_33  #00000006
        :pswitch_b  #00000007
    .end packed-switch
.end method

.method private v5(I)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x11

    const-string v1, ""

    if-eq p1, v0, :cond_80

    if-nez p1, :cond_a

    goto/16 :goto_80

    :cond_a
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "up"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_20
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "down"

    goto :goto_18

    :cond_2f
    :goto_2f
    and-int/lit8 v0, p1, 0x2

    const-string v2, "|"

    if-eqz v0, :cond_5c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "left"

    :goto_54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_80

    :cond_5c
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_75

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "right"

    goto :goto_54

    :cond_80
    :goto_80
    return-object v1
.end method

.method private v5(Landroid/view/View;)Z
    .registers 3

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_10

    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
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

    if-eqz v0, :cond_b

    check-cast p1, Lcom/appfour/backbone/api/objects/InAppProduct;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/InAppProduct;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/Market;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/appfour/backbone/api/objects/Market;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/Market;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/MarketReferrer;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/appfour/backbone/api/objects/MarketReferrer;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/MarketReferrer;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserNotification;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotification;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    if-eqz v0, :cond_37

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_37
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_42

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_42
    instance-of v0, p1, Landroid/view/MenuItem;

    if-eqz v0, :cond_4d

    check-cast p1, Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/view/MenuItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4d
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_58

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_58
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    if-eqz v0, :cond_63

    check-cast p1, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_63
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserActionWidget;

    if-eqz v0, :cond_6e

    check-cast p1, Lcom/appfour/backbone/api/objects/UserActionWidget;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6e
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    if-eqz v0, :cond_79

    check-cast p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_79
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    if-eqz v0, :cond_84

    check-cast p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_84
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserInputAction;

    if-eqz v0, :cond_8f

    check-cast p1, Lcom/appfour/backbone/api/objects/UserInputAction;

    invoke-direct {p0, p1}, Labcd/Mv;->j6(Lcom/appfour/backbone/api/objects/UserInputAction;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8f
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_9a

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9a
    instance-of v0, p1, Ljava/lang/Thread;

    if-eqz v0, :cond_a5

    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a5
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_b0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Labcd/Mv;->FH(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b0
    const/4 p1, 0x0

    return-object p1
.end method

.method public DW(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Labcd/Mv;->FH(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
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
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move-exception v1

    :goto_19
    return v0
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

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_18

    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_36

    return-object v3

    :cond_36
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    return-object v3
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
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    return-object v0
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
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    return-wide v0

    :catch_18
    move-exception v0

    const-wide/16 v0, 0x0

    return-wide v0
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
    .registers 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_18

    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    :cond_33
    return v3
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
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    return-wide v0

    :catch_18
    move-exception v0

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public j6(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;
    .registers 8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Mv;->j6(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v1, :cond_35

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/Mv;->DW(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    return-object v4

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v2

    return-object p1

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    invoke-direct {p0, p1}, Labcd/Mv;->j6(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/Mv;->VH:Labcd/Dv;

    invoke-virtual {v0, p1}, Labcd/Dv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Labcd/Uv;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-direct {p0, p1}, Labcd/Mv;->FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserActionWidget;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/appfour/backbone/api/objects/UserActionWidget;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserActionWidget;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2c

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Labcd/Mv;->DW(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    if-nez v1, :cond_13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_13
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, v1, :cond_11

    move v3, v1

    move v1, v0

    move v0, v3

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Ljava/lang/String;
    .registers 8

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_66

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_3e

    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_3b

    const-string v6, "android.hardware."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const-string v6, "android.hardware.sensor."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    const/16 v6, 0x18

    goto :goto_34

    :cond_32
    const/16 v6, 0x11

    :goto_34
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_3e
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_45

    :cond_66
    return-object v1
.end method
