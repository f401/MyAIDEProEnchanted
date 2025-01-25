.class public Landroidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;


# instance fields
.field private final mInsets:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1a

    if-nez p1, :cond_f

    :goto_c
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    :goto_e
    return-void

    :cond_f
    new-instance v1, Landroid/view/WindowInsets;

    iget-object v0, p1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v0, v1

    goto :goto_c

    :cond_1a
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    goto :goto_e
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    return-void
.end method

.method static unwrap(Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    goto :goto_3
.end method

.method static wrap(Ljava/lang/Object;)Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_14

    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object p0, v1

    :cond_14
    return-object p0
.end method

.method public consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_15

    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v2, :cond_1f

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat;->wrap(Ljava/lang/Object;)Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getStableInsetBottom()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getStableInsetLeft()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getStableInsetRight()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getStableInsetTop()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSystemWindowInsetBottom()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSystemWindowInsetLeft()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSystemWindowInsetRight()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSystemWindowInsetTop()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hasInsets()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasInsets()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hasStableInsets()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hasSystemWindowInsets()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isConsumed()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isRound()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_15

    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
