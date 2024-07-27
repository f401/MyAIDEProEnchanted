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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    .line 22
    iput-object p1, p0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method private isColorLight(I)Z
    .registers 12

    const/4 v0, 0x1

    .line 54
    int-to-double v2, v0

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/16 v1, 0xff

    int-to-double v6, v1

    div-double/2addr v4, v6

    .line 55
    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public setImmersive(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 26
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    if-nez v0, :cond_2

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    if-nez v0, :cond_0

    .line 27
    :cond_2
    iput-boolean p1, p0, Lcom/termux/app/FullScreenHelper;->mEnabled:Z

    .line 29
    iget-object v0, p0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    new-instance v0, Lcom/termux/app/FullScreenHelper$100000000;

    invoke-direct {v0, p0}, Lcom/termux/app/FullScreenHelper$100000000;-><init>(Lcom/termux/app/FullScreenHelper;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/termux/app/FullScreenHelper;->setImmersiveMode()V

    goto :goto_0

    .line 48
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method

.method setImmersiveMode()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
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

    .line 64
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

    :cond_0
    const/16 v0, 0x1006

    goto :goto_0
.end method
