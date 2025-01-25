.class public Labcd/zw;
.super Ljava/lang/Object;


# direct methods
.method public static j6()Landroid/graphics/Rect;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_29

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_29
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static j6(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 1

    if-nez p0, :cond_8

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Labcd/zw;->j6(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_26

    return-object v2

    :cond_26
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Landroid/graphics/Rect;
    .registers 2

    if-nez p0, :cond_8

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getItemView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Labcd/zw;->j6(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWidget;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Labcd/zw;->j6(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Landroid/graphics/Rect;
    .registers 1

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Labcd/zw;->j6(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
