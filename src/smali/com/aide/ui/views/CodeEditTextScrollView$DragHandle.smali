.class abstract Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/CodeEditTextScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DragHandle"
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
.field private bounce:F
    .annotation runtime Labcd/ru;
        field = -0x12df333c69dfc1e0L
    .end annotation
.end field

.field private charCenterX:F
    .annotation runtime Labcd/ru;
        field = 0x2fbc2929625a0591L
    .end annotation
.end field

.field private charCenterY:F
    .annotation runtime Labcd/ru;
        field = 0x2fbc8212f95ab818L
    .end annotation
.end field

.field private dragDX:I
    .annotation runtime Labcd/ru;
        field = 0x164a7d31097fd7ecL
    .end annotation
.end field

.field private dragDY:I
    .annotation runtime Labcd/ru;
        field = 0x164ab8dd59e63097L
    .end annotation
.end field

.field private dragIsActive:Z
    .annotation runtime Labcd/ru;
        field = 0x2368afe45d3b356cL
    .end annotation
.end field

.field private handleCenterX:I
    .annotation runtime Labcd/ru;
        field = 0x2e3fb9178ae3931dL
    .end annotation
.end field

.field private handleCenterY:I
    .annotation runtime Labcd/ru;
        field = 0x2e40046c9e9783a8L
    .end annotation
.end field

.field private handleHeight:I
    .annotation runtime Labcd/ru;
        field = 0x1dddbad26b45559bL
    .end annotation
.end field

.field private handleWidth:I
    .annotation runtime Labcd/ru;
        field = 0x1c2f34a52635e280L
    .end annotation
.end field

.field private icon:Landroid/graphics/drawable/Drawable;
    .annotation runtime Labcd/ru;
        field = -0x2050cadb3f68b31bL
    .end annotation
.end field

.field private iconDown:Landroid/graphics/drawable/Drawable;
    .annotation runtime Labcd/ru;
        field = -0x2e94d7df824ce76dL
    .end annotation
.end field

.field private isDown:Z
    .annotation runtime Labcd/ru;
        field = 0x1995b18327c1d930L
    .end annotation
.end field

.field private isVisible:Z
    .annotation runtime Labcd/ru;
        field = 0x384dd6b1cb873c50L
    .end annotation
.end field

.field private removeTimer:Ljava/util/Timer;
    .annotation runtime Labcd/ru;
        field = 0x27c23412ff5c6c9dL
    .end annotation
.end field

.field private removeTimerTask:Ljava/util/TimerTask;
    .annotation runtime Labcd/ru;
        field = -0x59c23b9acaff8dc4L
    .end annotation
.end field

.field final this$0:Lcom/aide/ui/views/CodeEditTextScrollView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private timeout:J
    .annotation runtime Labcd/ru;
        field = -0x6fd01450bbf7a1bL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x8e9889bfff0260L

    const-class v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xaedda7f36517481L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c0231db987b073cL    # 1.0647745461099527E-96

    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p4}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p5}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p6}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p7}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p8, p9}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p8, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->timeout:J

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    iput-object p2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->iconDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleHeight:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleWidth:I

    iget v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterX:I

    iget v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterY:I

    iput p7, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->charCenterY:F

    iput p6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->charCenterX:F

    return-void
.end method

.method static synthetic access$702(Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z

    return p1
.end method

.method static synthetic access$802(Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    return p1
.end method

.method private getHandleRect(II)Landroid/graphics/Rect;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x469e0d0a97597c73L
    .end annotation

    const-wide v2, -0x10719706fce5d3c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x10719706fce5d3c0L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterX:I

    add-int v4, p2, v0

    iget v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterY:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->charCenterY:F

    int-to-float v0, v0

    new-instance v7, Landroid/graphics/Rect;

    sub-int v1, p1, v1

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterX:I

    sub-int v6, p1, v6

    iget v8, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleWidth:I

    add-int/2addr v6, v8

    iget v8, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleHeight:I

    add-int/2addr v4, v8

    iget v8, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterY:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iget v8, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->charCenterY:F

    mul-float/2addr v0, v8

    sub-float v0, v4, v0

    float-to-int v0, v0

    invoke-direct {v7, v1, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private getHandleRectInWindow()Landroid/graphics/Rect;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x5a07ff0001972f40L
    .end annotation

    const-wide v6, 0x42ed640576c4c43bL    # 2.5852340483843384E14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x42ed640576c4c43bL    # 2.5852340483843384E14

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getLine()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->DW(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getColumn()I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->FH(I)F

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v4}, Lcom/aide/ui/views/CodeEditTextScrollView;->v5(Lcom/aide/ui/views/CodeEditTextScrollView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v1}, Lcom/aide/ui/views/editor/OConsole;->j6(II)F

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v3}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getHandleRect(II)Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private getScrollPaddingBottom()I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3dbcf7703e3ba14L
    .end annotation

    const-wide v4, 0x5f1779b4107df5b5L    # 1.2006900994484038E150

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5f1779b4107df5b5L    # 1.2006900994484038E150

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;Z)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, -0x4

    :cond_1
    add-int/lit8 v0, v0, 0x2

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private scheduleRemoveCaretHandle()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x17f45e27617ee959L
    .end annotation

    const-wide v4, 0x1d4514bff564d5cL    # 7.58465802036286E-300

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d4514bff564d5cL    # 7.58465802036286E-300

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_2
    new-instance v0, Lcom/aide/ui/views/n;

    invoke-direct {v0, p0}, Lcom/aide/ui/views/n;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;)V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    iget-wide v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->timeout:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x4739dd84b87c1140L
    .end annotation

    const-wide v4, 0x531ec89493be82a7L    # 2.5082852730043692E92

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x531ec89493be82a7L    # 2.5082852730043692E92

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getHandleRectInWindow()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->bounce:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->bounce:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-boolean v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isDown:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->iconDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->iconDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected abstract getColumn()I
.end method

.method protected abstract getLine()I
.end method

.method public hide()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1c65d3fc7790cb73L
    .end annotation

    const-wide v2, -0x1123557e23151904L    # -1.0610712057268163E226

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1123557e23151904L    # -1.0610712057268163E226

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public isTouchEventInsideHandle(Landroid/view/MotionEvent;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x19940211135c5b8cL
    .end annotation

    const-wide v8, 0x8003e52616de5e5L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x8003e52616de5e5L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getLine()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->DW(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getColumn()I

    move-result v4

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->FH(I)F

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v6}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Lcom/aide/ui/views/CodeEditTextScrollView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v4, v3}, Lcom/aide/ui/views/editor/OConsole;->j6(II)F

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2, v5}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getHandleRect(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public isVisible()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4c717ae9623bf9bL
    .end annotation

    const-wide v2, 0x1adabf4dec5c0a14L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1adabf4dec5c0a14L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected abstract onClick()V
.end method

.method public onDestroy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1f621fe887c882e8L
    .end annotation

    const-wide v2, -0x1c2417404f993d7L    # -1.244972600562494E300

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c2417404f993d7L    # -1.244972600562494E300

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected abstract onDraggedTo(II)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x2528fc681625d5bL
    .end annotation

    const-wide v10, -0x5b7798bb369978b0L

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x5b7798bb369978b0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v4}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getLine()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aide/ui/views/editor/OConsole;->DW(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getColumn()I

    move-result v6

    invoke-virtual {v4, v5}, Lcom/aide/ui/views/editor/OConsole;->FH(I)F

    move-result v7

    iget-object v8, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v8}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Lcom/aide/ui/views/CodeEditTextScrollView;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v6, v5}, Lcom/aide/ui/views/editor/OConsole;->j6(II)F

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v5}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {p0, v4, v7}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getHandleRect(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isDown:Z

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v5}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    iget-object v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v5}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragDX:I

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    sub-int v2, v3, v2

    iput v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragDY:I

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->invalidate()V

    :cond_2
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x25cd4561c1794bb7L
    .end annotation

    const-wide v10, 0x934cce3488a30d0L

    const/4 v8, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x934cce3488a30d0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->scheduleRemoveCaretHandle()V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isDown:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->onClick()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isDown:Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragDX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragDY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Lcom/aide/ui/views/CodeEditTextScrollView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/aide/ui/views/editor/OConsole;->FH(FF)I

    move-result v1

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/aide/ui/views/editor/OConsole;->DW(FF)I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getLine()I

    move-result v0

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getColumn()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v2, v0, :cond_4

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;Z)Z

    invoke-virtual {p0, v1, v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->onDraggedTo(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getScrollPaddingBottom()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;IIIIIIZ)Z

    :cond_4
    move v0, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;Z)Z

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method public setBounce(F)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1526a28063f3df20L
    .end annotation

    const-wide v4, 0x9a14a1e267c3065L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0x9a14a1e267c3065L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->bounce:F

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getHandleRectInWindow()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->invalidate(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public show()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1c4f914613f582b8L
    .end annotation

    const-wide v2, -0x11145dcb38a40a25L    # -2.045712072942806E226

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11145dcb38a40a25L    # -2.045712072942806E226

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->scheduleRemoveCaretHandle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
