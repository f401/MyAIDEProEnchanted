.class Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;
.super Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeStableInsets(Ljava/lang/Object;)Landroidj/support/v4/view/WindowInsetsCompat;
    .registers 4

    new-instance v0, Landroidj/support/v4/view/WindowInsetsCompat;

    invoke-static {p1}, Landroidj/support/v4/view/WindowInsetsCompatApi21;->consumeStableInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getStableInsetBottom(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/WindowInsetsCompatApi21;->getStableInsetBottom(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetLeft(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/WindowInsetsCompatApi21;->getStableInsetLeft(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetRight(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/WindowInsetsCompatApi21;->getStableInsetRight(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetTop(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/WindowInsetsCompatApi21;->getStableInsetTop(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasStableInsets(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/WindowInsetsCompatApi21;->hasStableInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isConsumed(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/WindowInsetsCompatApi21;->isConsumed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroidj/support/v4/view/WindowInsetsCompat;
    .registers 5

    new-instance v0, Landroidj/support/v4/view/WindowInsetsCompat;

    invoke-static {p1, p2}, Landroidj/support/v4/view/WindowInsetsCompatApi21;->replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
