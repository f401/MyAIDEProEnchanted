.class Labcd/Qv$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Qv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method private static DW(Landroid/view/View;Landroid/view/View;)F
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Labcd/Qv$e;->DW(Landroid/view/View;Landroid/view/View;)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method private static DW(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 5

    :try_start_0
    instance-of v0, p0, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Landroid/support/v7/view/menu/MenuView$ItemView;

    invoke-interface {v0}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-object p0

    :catchall_c
    move-exception v0

    :cond_d
    :try_start_d
    const-string v0, "com.android.internal.view.menu.MenuView$ItemView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "getItemData"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static DW(Landroid/view/View;FF)Landroid/view/View;
    .registers 11

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    move-object v3, v1

    :goto_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p1, v5

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    sub-float v6, p2, v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Labcd/Qv$e;->DW(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3b

    if-eqz v3, :cond_3a

    invoke-static {v4, v3}, Labcd/Qv$e;->FH(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3b

    :cond_3a
    move-object v3, v4

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3e
    if-eqz v3, :cond_41

    return-object v3

    :cond_41
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_69

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_69

    return-object p0

    :cond_69
    return-object v1
.end method

.method public static DW(Lcom/appfour/backbone/api/objects/UserActionWindow;FF)V
    .registers 13

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Labcd/Qv$e;->FH(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1b

    float-to-int v7, p1

    float-to-int v8, p2

    new-instance p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v1, p1

    move-object v2, p0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v8}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {p1}, Labcd/Qv;->FH(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Labcd/Qv$e;->j6(Landroid/view/View;FFLandroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_56

    new-instance v4, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-direct {v4, v0, v2, v3}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v8, p1

    float-to-int v9, p2

    new-instance p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v5, 0x3

    move-object v2, p1

    move-object v3, p0

    move v6, v8

    move v7, v9

    invoke-direct/range {v2 .. v9}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0}, Labcd/Qv$e;->j6(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    iget-object p2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {p1, v0, p0, p2, v1}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    return-void

    :cond_56
    invoke-static {v0}, Labcd/Qv$e;->FH(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    new-instance v4, Lcom/appfour/backbone/api/objects/UserActionWidget;

    if-eqz v1, :cond_8d

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-direct {v4, v0, v2, v3}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v8, p1

    float-to-int v9, p2

    new-instance p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v5, 0x3

    move-object v2, p1

    move-object v3, p0

    move v6, v8

    move v7, v9

    invoke-direct/range {v2 .. v9}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Labcd/Qv$e;->j6(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, p0, p2, v1, v0}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    return-void

    :cond_8d
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v4, v0, v1, v2}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v8, p1

    float-to-int v9, p2

    new-instance p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v5, 0x4

    move-object v2, p1

    move-object v3, p0

    move v6, v8

    move v7, v9

    invoke-direct/range {v2 .. v9}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {p1, v0}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V

    return-void
.end method

.method private static FH(Landroid/view/View;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "+",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p0, v0}, Labcd/Qv$e;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_21

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    new-instance v1, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-object v1

    :catchall_20
    move-exception p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static FH(Landroid/view/View;FF)Landroid/view/View;
    .registers 11

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    move-object v3, v1

    :goto_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p1, v5

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    sub-float v6, p2, v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Labcd/Qv$e;->DW(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3b

    if-eqz v3, :cond_3a

    invoke-static {v4, v3}, Labcd/Qv$e;->FH(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3b

    :cond_3a
    move-object v3, v4

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3e
    if-eqz v3, :cond_41

    return-object v3

    :cond_41
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_69

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_69

    return-object p0

    :cond_69
    return-object v1
.end method

.method private static FH(Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    return v2

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    mul-int p0, p0, p1

    if-ge v0, p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2
.end method

.method private static j6(Landroid/view/View;Landroid/view/View;)F
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Labcd/Qv$e;->j6(Landroid/view/View;Landroid/view/View;)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method private static j6(Landroid/view/View;FFLandroid/view/View;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FF",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_28

    invoke-static {p0, p3}, Labcd/Qv$e;->j6(Landroid/view/View;Landroid/view/View;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p0, p3}, Labcd/Qv$e;->DW(Landroid/view/View;Landroid/view/View;)F

    move-result p0

    sub-float/2addr p2, p0

    move-object p0, p3

    check-cast p0, Landroid/widget/ListView;

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_28

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, p1, p2}, Labcd/Qv$e;->j6(Landroid/view/View;FF)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/view/View;Ljava/lang/Class;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Landroid/util/Pair<",
            "TV;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance p1, Landroid/util/Pair;

    check-cast v0, Landroid/view/View;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_12
    instance-of p0, v0, Landroid/view/View;

    if-eqz p0, :cond_1d

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Labcd/Qv$e;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/view/View;FF)Landroid/view/View;
    .registers 7

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_41

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_41

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_3e

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v2, p1

    if-ltz v2, :cond_3e

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_3e

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v2, p2

    if-ltz v2, :cond_3e

    return-object v1

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/widget/AdapterView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    return-object p0

    :cond_b
    :try_start_b
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_17

    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FF)V
    .registers 24

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0, v1}, Labcd/Qv$e;->DW(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_20

    float-to-int v9, v0

    float-to-int v10, v1

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object/from16 v4, p0

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v10}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    return-void

    :cond_20
    invoke-static {v2}, Labcd/Qv$e;->DW(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3e

    new-instance v8, Lcom/appfour/backbone/api/objects/UserActionWidget;

    invoke-direct {v8, v2, v5, v4}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v12, v0

    float-to-int v13, v1

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v9, 0x5

    move-object v6, v0

    move-object/from16 v7, p0

    move v10, v12

    move v11, v13

    invoke-direct/range {v6 .. v13}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0, v3}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V

    return-void

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Labcd/Qv$e;->j6(Landroid/view/View;FFLandroid/view/View;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_ad

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Labcd/Qv$e;->DW(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_74

    new-instance v7, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-direct {v7, v2, v5, v3}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v11, v0

    float-to-int v12, v1

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v8, 0x5

    move-object v5, v0

    move-object/from16 v6, p0

    move v9, v11

    move v10, v12

    invoke-direct/range {v5 .. v12}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0, v4}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V

    return-void

    :cond_74
    new-instance v15, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-direct {v15, v2, v4, v5}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v0, v0

    float-to-int v1, v1

    new-instance v4, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/16 v16, 0x6

    move-object v13, v4

    move-object/from16 v14, p0

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v0

    move/from16 v20, v1

    invoke-direct/range {v13 .. v20}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v2}, Labcd/Qv$e;->j6(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-static {v4, v2, v0, v1, v3}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    return-void

    :cond_ad
    invoke-static {v2}, Labcd/Qv$e;->FH(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_e5

    new-instance v8, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-direct {v8, v2, v4, v5}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v12, v0

    float-to-int v13, v1

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v9, 0x6

    move-object v6, v0

    move-object/from16 v7, p0

    move v10, v12

    move v11, v13

    invoke-direct/range {v6 .. v13}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Labcd/Qv$e;->j6(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v4, v3, v2}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    return-void

    :cond_e5
    new-instance v7, Lcom/appfour/backbone/api/objects/UserActionWidget;

    invoke-direct {v7, v2, v5, v4}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v11, v0

    float-to-int v12, v1

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v8, 0x7

    move-object v5, v0

    move-object/from16 v6, p0

    move v9, v11

    move v10, v12

    invoke-direct/range {v5 .. v12}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0, v2}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V

    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FFFF)V
    .registers 14

    new-instance v8, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    float-to-int v4, p1

    float-to-int v5, p2

    float-to-int v6, p3

    float-to-int v7, p4

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v8}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    return-void
.end method
