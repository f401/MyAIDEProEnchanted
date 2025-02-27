.class Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/animation/ValueAnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerbreadFloatValueAnimator"
.end annotation


# instance fields
.field private mDuration:J

.field private mEnded:Z

.field private mFraction:F

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/animation/AnimatorListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mLoopRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mStarted:Z

.field mTarget:Landroid/view/View;

.field mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/animation/AnimatorUpdateListenerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mDuration:J

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    iput-boolean v2, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    iput-boolean v2, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mEnded:Z

    new-instance v0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;-><init>(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V

    iput-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .registers 3

    iget-wide v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .registers 3

    iget-wide v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)F
    .registers 2

    iget v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    return v0
.end method

.method static synthetic access$302(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;F)F
    .registers 2

    iput p1, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    return p1
.end method

.method static synthetic access$400(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->notifyUpdateListeners()V

    return-void
.end method

.method static synthetic access$500(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->dispatchEnd()V

    return-void
.end method

.method static synthetic access$600(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private dispatchCancel()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroidj/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Landroidj/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    return-void
.end method

.method private dispatchEnd()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroidj/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Landroidj/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    return-void
.end method

.method private dispatchStart()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroidj/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Landroidj/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    return-void
.end method

.method private getTime()J
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyUpdateListeners()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-interface {v0, p0}, Landroidj/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Landroidj/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    return-void
.end method


# virtual methods
.method public addListener(Landroidj/support/v4/animation/AnimatorListenerCompat;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUpdateListener(Landroidj/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mEnded:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mEnded:Z

    iget-boolean v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->dispatchCancel()V

    :cond_f
    invoke-direct {p0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->dispatchEnd()V

    goto :goto_4
.end method

.method public getAnimatedFraction()F
    .registers 2

    iget v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    return v0
.end method

.method public setDuration(J)V
    .registers 4

    iget-boolean v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    if-nez v0, :cond_6

    iput-wide p1, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mDuration:J

    :cond_6
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mTarget:Landroid/view/View;

    return-void
.end method

.method public start()V
    .registers 5

    iget-boolean v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    invoke-direct {p0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->dispatchStart()V

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    invoke-direct {p0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStartTime:J

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method
