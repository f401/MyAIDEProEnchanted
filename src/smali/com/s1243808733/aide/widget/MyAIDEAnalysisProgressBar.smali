.class public Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;
.super Lcom/aide/ui/AIDEAnalysisProgressBar;
.source "MyAIDEAnalysisProgressBar.java"


# instance fields
.field anim:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEAnalysisProgressBar;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/AIDEAnalysisProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/AIDEAnalysisProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->init()V

    return-void
.end method

.method static synthetic access$001(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;I)V
    .registers 2

    .line 21
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEAnalysisProgressBar;->setVisibility(I)V

    return-void
.end method

.method private init()V
    .registers 2

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setProgressDrawableColor(I)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_18

    .line 46
    :catchall_c
    move-exception v0

    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setProgressDrawableColor(I)V

    :goto_18
    return-void
.end method

.method private setProgressDrawableColor(I)V
    .registers 8

    .line 52
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$1;

    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$1;-><init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    new-instance v4, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$2;

    new-instance v5, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v4, p0, v5, p1}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$2;-><init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;Landroid/graphics/drawable/shapes/Shape;I)V

    const/4 p1, 0x3

    const/4 v5, 0x1

    invoke-direct {v2, v4, p1, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 63
    const/high16 p1, 0x1020000

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 64
    const p1, 0x102000d

    invoke-virtual {v0, v5, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .registers 4

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setProgress(IZ)V

    goto :goto_e

    .line 107
    :cond_b
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEAnalysisProgressBar;->setProgress(I)V

    :goto_e
    return-void
.end method

.method public setVisibility(I)V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->anim:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_7

    .line 74
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_7
    if-nez p1, :cond_d

    .line 77
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEAnalysisProgressBar;->setVisibility(I)V

    goto :goto_2e

    .line 79
    :cond_d
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setAlpha(F)V

    .line 80
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->anim:Landroid/view/animation/AlphaAnimation;

    .line 81
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 82
    iget-object v0, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->anim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$3;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$3;-><init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 98
    iget-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2e
    return-void
.end method
