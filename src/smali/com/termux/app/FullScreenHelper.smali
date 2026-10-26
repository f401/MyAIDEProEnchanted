.class final Lcom/termux/app/FullScreenHelper;
.super Ljava/lang/Object;
.source "FullScreenHelper.java"


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    .line 22
    iput-object p1, p0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method private isColorLight(I)Z
    .locals 10

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v8

    const-wide v8, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    const-wide v2, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    sub-double v0, v6, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setImmersive(Z)V
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    if-ne p1, v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 27
    :cond_0
    iput-boolean p1, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    .line 29
    iget-object v0, p0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 32
    new-instance v1, Lcom/termux/app/FullScreenHelper$1;

    invoke-direct {v1, p0}, Lcom/termux/app/FullScreenHelper$1;-><init>(Lcom/termux/app/FullScreenHelper;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/termux/app/FullScreenHelper;->setImmersiveMode()V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method

.method setImmersiveMode()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/termux/app/FullScreenHelper;->isColorLight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3006

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 63
    :cond_0
    const/16 v0, 0x1006

    goto :goto_0
.end method
