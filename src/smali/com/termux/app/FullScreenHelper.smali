.class final Lcom/termux/app/FullScreenHelper;
.super Ljava/lang/Object;
.source "FullScreenHelper.java"


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 3

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
    .registers 8

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L  # 0.299

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L  # 0.587

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x3fbd2f1a9fbe76c9L  # 0.114

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L  # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    cmpg-double p1, v2, v0

    if-gez p1, :cond_40

    const/4 p1, 0x1

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    :goto_41
    return p1
.end method


# virtual methods
.method public setImmersive(Z)V
    .registers 3

    .line 26
    iget-boolean v0, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 27
    :cond_5
    iput-boolean p1, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    .line 29
    iget-object v0, p0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1f

    .line 32
    new-instance p1, Lcom/termux/app/FullScreenHelper$1;

    invoke-direct {p1, p0}, Lcom/termux/app/FullScreenHelper$1;-><init>(Lcom/termux/app/FullScreenHelper;)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/termux/app/FullScreenHelper;->setImmersiveMode()V

    goto :goto_27

    .line 48
    :cond_1f
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :goto_27
    return-void
.end method

.method setImmersiveMode()V
    .registers 4

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

    if-lt v1, v2, :cond_23

    invoke-direct {p0, v0}, Lcom/termux/app/FullScreenHelper;->isColorLight(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x3006

    goto :goto_25

    :cond_23
    const/16 v0, 0x1006

    .line 65
    :goto_25
    iget-object v1, p0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
