.class public Lcom/s1243808733/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findView(Landroid/view/ViewGroup;Lcom/s1243808733/util/Filter;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Lcom/s1243808733/util/Filter",
            "<",
            "Landroid/view/View;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 72
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 73
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-interface {p1, v0}, Lcom/s1243808733/util/Filter;->accept(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    :goto_1
    return-object v0

    .line 77
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 78
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/s1243808733/util/ViewUtil;->findView(Landroid/view/ViewGroup;Lcom/s1243808733/util/Filter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static findViewByName(Landroid/app/Activity;Ljava/lang/Class;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static findViewByName(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 33
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static findViewByName(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-object p0

    .line 57
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 58
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static findViewByName(Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static findViewByName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

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

.method public static findViewByTag(Landroid/app/Activity;Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 10
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static findViewByTag(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    :goto_0
    return-object p0

    .line 16
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 17
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

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
