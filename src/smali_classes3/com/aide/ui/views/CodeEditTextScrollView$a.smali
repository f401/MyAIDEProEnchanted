.class Lcom/aide/ui/views/CodeEditTextScrollView$a;
.super Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/CodeEditTextScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private DW:I
    .annotation runtime Labcd/ru;
        field = -0x1680ae21538cddc8L
    .end annotation
.end field

.field private FH:Landroid/animation/AnimatorSet;
    .annotation runtime Labcd/ru;
        field = -0x33f1b87193d18fd4L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x356b70232af14990L
    .end annotation
.end field

.field private j6:I
    .annotation runtime Labcd/ru;
        field = 0x22518fa536052e10L
    .end annotation
.end field

.field final this$0:Lcom/aide/ui/views/CodeEditTextScrollView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/CodeEditTextScrollView$a;

    const-wide v1, -0x1397ababe31175c3L  # -1.6380927349548788E214

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;I)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x7410d1035725b307L
    .end annotation

    const-string v0, "bounce"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_ENTER_TOGGLE:Z

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x2abe247ef60142a0L  # -4.999512782938679E102

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000  # 0.5f

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000  # 0.5f

    const-wide/32 v10, 0x989680

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41700000  # 15.0f

    mul-float v1, v1, v2

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v3, v6

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/16 v7, 0x12c

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v2, [F

    aput v5, v2, v4

    aput v1, v2, v6

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->FH:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->FH:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/aide/ui/views/o;

    invoke-direct {v1, p0, p1}, Lcom/aide/ui/views/o;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView$a;Lcom/aide/ui/views/CodeEditTextScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    :try_end_8e
    .catchall {:try_start_2 .. :try_end_8e} :catchall_8f

    return-void

    :catchall_8f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_a4

    const-wide v2, -0x2abe247ef60142a0L  # -4.999512782938679E102

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditTextScrollView$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->Hw:Z

    return p0
.end method


# virtual methods
.method protected getColumn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4019f2200105a4fL
    .end annotation

    const-wide v0, 0x31aa83a1e332cadbL  # 1.9208318898483591E-69

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->DW:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method protected getLine()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1b5797fe7a7036b7L
    .end annotation

    const-wide v0, 0x1bab96e7b9ed313fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->j6:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x181656ca22655c60L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x59a10bc7eeff6de4L  # 5.634186465444244E123

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iput p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->j6:I

    iput p2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->DW:I

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$a;->show()V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x59a10bc7eeff6de4L  # 5.634186465444244E123

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method protected onClick()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x30f7a3bfce68bea0L
    .end annotation

    const-wide v0, 0x798c5ad00b70fd4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText;

    move-result-object v2

    iget v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->j6:I

    iget v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->DW:I

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/CodeEditText;->v5(II)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->Hw:Z

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    iget v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->j6:I

    iget v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->DW:I

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getDefaultFontSize()F

    move-result v5

    new-instance v6, Lcom/aide/ui/views/p;

    invoke-direct {v6, p0}, Lcom/aide/ui/views/p;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView$a;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(IIFLjava/lang/Runnable;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method protected onDraggedTo(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x326264f50eddd23L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x5c510cbcba410abL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x5c510cbcba410abL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public show()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3e332666edd87b4L
    .end annotation

    const-wide v0, 0x20cd75c21975c880L  # 1.124980047506161E-150

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->show()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->Hw:Z

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->FH:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$a;->FH:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$a;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
