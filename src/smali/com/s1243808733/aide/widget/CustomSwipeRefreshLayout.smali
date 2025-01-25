.class public Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;
.super Landroidj/support/v4/widget/SwipeRefreshLayout;
.source "CustomSwipeRefreshLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Landroidj/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;->init()V

    return-void
.end method

.method private init()V
    .registers 1

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 26
    invoke-super {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->onFinishInflate()V

    .line 27
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method
