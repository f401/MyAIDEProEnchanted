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
    .registers 4

    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Labcd/Qv$e;->DW(Landroid/view/View;Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private static DW(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 5

    :try_start_0
    instance-of v1, p0, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v7/view/menu/MenuView$ItemView;

    move-object v1, v0

    invoke-interface {v1}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    :try_start_1
    const-string v1, "com.android.internal.view.menu.MenuView$ItemView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "getItemData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static DW(Landroid/view/View;FF)Landroid/view/View;
    .registers 12

    const/4 v8, 0x0

    const/4 v2, 0x0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v4, v1}, Labcd/Qv$e;->FH(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v8

    if-ltz v0, :cond_4

    cmpl-float v0, p2, v8

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public static DW(Lcom/appfour/backbone/api/objects/UserActionWindow;FF)V
    .registers 13

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Labcd/Qv$e;->FH(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v3, 0x2

    move-object v1, p0

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0}, Labcd/Qv;->FH(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2, v8}, Labcd/Qv$e;->j6(Landroid/view/View;FFLandroid/view/View;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_1

    new-instance v2, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-direct {v2, v8, v1, v0}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    move-object v1, p0

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v8}, Labcd/Qv$e;->j6(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v8, v2, v3, v1}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {v8}, Labcd/Qv$e;->FH(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v2, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-direct {v2, v8, v1, v0}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    move-object v1, p0

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    iget-object v2, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Labcd/Qv$e;->j6(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v3, v2, v8}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/appfour/backbone/api/objects/UserActionWidget;

    const/4 v0, 0x0

    invoke-direct {v6, v8, v0, v2}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v3, 0x4

    move-object v1, p0

    move-object v2, v6

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0, v8}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private static FH(Landroid/view/View;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair",
            "<+",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p0, v0}, Labcd/Qv$e;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    new-instance v0, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static FH(Landroid/view/View;FF)Landroid/view/View;
    .registers 12

    const/4 v8, 0x0

    const/4 v2, 0x0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v4, v1}, Labcd/Qv$e;->FH(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v8

    if-ltz v0, :cond_4

    cmpl-float v0, p2, v8

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method private static FH(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Landroid/view/View;Landroid/view/View;)F
    .registers 4

    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Labcd/Qv$e;->j6(Landroid/view/View;Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private static j6(Landroid/view/View;FFLandroid/view/View;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FF",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-static {p0, p3}, Labcd/Qv$e;->j6(Landroid/view/View;Landroid/view/View;)F

    move-result v0

    sub-float v1, p1, v0

    invoke-static {p0, p3}, Labcd/Qv$e;->DW(Landroid/view/View;Landroid/view/View;)F

    move-result v0

    sub-float v2, p2, v0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3, v1, v2}, Labcd/Qv$e;->j6(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Landroid/view/View;Ljava/lang/Class;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Landroid/util/Pair",
            "<TV;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/Pair;

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Labcd/Qv$e;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Landroid/view/View;FF)Landroid/view/View;
    .registers 7

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v2, p1

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v2, p2

    if-ltz v2, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static j6(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/AdapterView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FF)V
    .registers 14

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Labcd/Qv$e;->DW(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    move-object v1, p0

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v8}, Labcd/Qv$e;->DW(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v9, :cond_1

    new-instance v6, Lcom/appfour/backbone/api/objects/UserActionWidget;

    invoke-direct {v6, v8, v3, v2}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    move-object v1, p0

    move-object v2, v6

    move v3, v7

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0, v9}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2, v8}, Labcd/Qv$e;->j6(Landroid/view/View;FFLandroid/view/View;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Labcd/Qv$e;->DW(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v2, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-direct {v2, v8, v1, v0}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    move-object v1, p0

    move v3, v7

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0, v10}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-direct {v2, v8, v1, v0}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    move-object v1, p0

    move v3, v6

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v8}, Labcd/Qv$e;->j6(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v8, v2, v3, v1}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-static {v8}, Labcd/Qv$e;->FH(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_4

    new-instance v2, Lcom/appfour/backbone/api/objects/UserActionWidget;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-direct {v2, v8, v1, v0}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    move-object v1, p0

    move v3, v6

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    iget-object v2, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Labcd/Qv$e;->j6(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v3, v2, v8}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    new-instance v6, Lcom/appfour/backbone/api/objects/UserActionWidget;

    invoke-direct {v6, v8, v3, v2}, Lcom/appfour/backbone/api/objects/UserActionWidget;-><init>(Landroid/view/View;ILandroid/view/View;)V

    float-to-int v4, p1

    float-to-int v5, p2

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v3, 0x7

    move-object v1, p0

    move-object v2, v6

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0, v8}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FFFF)V
    .registers 13

    new-instance v0, Lcom/appfour/backbone/api/objects/UserTouchAction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    float-to-int v4, p1

    float-to-int v5, p2

    float-to-int v6, p3

    float-to-int v7, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/appfour/backbone/api/objects/UserTouchAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Lcom/appfour/backbone/api/objects/UserActionWidget;IIIII)V

    invoke-static {v0}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    return-void
.end method
