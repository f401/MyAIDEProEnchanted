.class public Lcom/s1243808733/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findView(Landroid/view/ViewGroup;Lcom/s1243808733/util/Filter;)Landroid/view/View;
    .registers 5
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

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 84
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-interface {p1, v0}, Lcom/s1243808733/util/Filter;->accept(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 77
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 78
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/s1243808733/util/ViewUtil;->findView(Landroid/view/ViewGroup;Lcom/s1243808733/util/Filter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 79
    if-eqz v0, :cond_2

    .line 80
    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 72
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static findViewByName(Landroid/app/Activity;Ljava/lang/Class;)Landroid/view/View;
    .registers 3
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

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static findViewByName(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .registers 3
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

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static findViewByName(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .registers 3
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

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 3
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
    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Landroid/view/View;

    move-object v0, p0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 58
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public static findViewByName(Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;
    .registers 3
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

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static findViewByName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .registers 4
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

    .line 41
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 47
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 43
    if-eqz v0, :cond_1

    .line 44
    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static findViewByTag(Landroid/app/Activity;Ljava/lang/Object;)Landroid/view/View;
    .registers 3
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

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static findViewByTag(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .registers 3
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

    .line 15
    check-cast p0, Landroid/view/View;

    move-object v0, p0

    .line 19
    :goto_0
    return-object v0

    .line 16
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 17
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public static findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;
    .registers 4
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

    .line 23
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 29
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 25
    if-eqz v0, :cond_1

    .line 26
    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 23
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
