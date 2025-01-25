.class Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ClickUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnUtilsTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/ClickUtils$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener$LazyHolder;->access$100()Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;

    move-result-object v0

    return-object v0
.end method

.method private processAlpha(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_c

    const/4 v0, -0x2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_e

    :goto_b
    return-void

    :cond_c
    const/4 v0, -0x3

    goto :goto_3

    :cond_e
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b
.end method

.method private processScale(Landroid/view/View;Z)V
    .registers 7

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_c

    :goto_b
    return-void

    :cond_c
    if-eqz p2, :cond_2b

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_b

    :cond_2b
    move v0, v1

    goto :goto_15
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->processScale(Landroid/view/View;Z)V

    invoke-direct {p0, p1, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->processAlpha(Landroid/view/View;Z)V

    :cond_e
    :goto_e
    return v2

    :cond_f
    if-eq v0, v1, :cond_14

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_14
    invoke-direct {p0, p1, v2}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->processScale(Landroid/view/View;Z)V

    invoke-direct {p0, p1, v2}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->processAlpha(Landroid/view/View;Z)V

    goto :goto_e
.end method
