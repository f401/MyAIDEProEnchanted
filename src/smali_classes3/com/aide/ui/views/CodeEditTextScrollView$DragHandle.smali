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
    .registers 3

    const-class v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    const-wide v1, -0x8e9889bfff0260L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xaedda7f36517481L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_42

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p4}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p5}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p6}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p7}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p8, p9}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-wide v1, 0x2c0231db987b073cL  # 1.0647745461099527E-96

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_42
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p8, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->timeout:J

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    iput-object p2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->iconDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleHeight:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleWidth:I

    int-to-float p1, p1

    mul-float p1, p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterX:I

    iget p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleHeight:I

    int-to-float p1, p1

    mul-float p1, p1, p5

    float-to-int p1, p1

    iput p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterY:I

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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x469e0d0a97597c73L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x10719706fce5d3c0L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterX:I

    add-int v2, p2, v0

    iget v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterY:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->charCenterY:F

    int-to-float v0, v0

    new-instance v5, Landroid/graphics/Rect;

    sub-int v1, p1, v1

    mul-float v4, v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterX:I

    sub-int v4, p1, v4

    iget v6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleWidth:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleHeight:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleCenterY:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget v6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->charCenterY:F

    mul-float v6, v6, v0

    sub-float/2addr v2, v6

    float-to-int v0, v2

    invoke-direct {v5, v1, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    return-object v5

    :catchall_4d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_66

    const-wide v2, -0x10719706fce5d3c0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_66
    throw v0
.end method

.method private getHandleRectInWindow()Landroid/graphics/Rect;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x5a07ff0001972f40L
    .end annotation

    const-wide v0, 0x42ed640576c4c43bL  # 2.5852340483843384E14

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
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

    invoke-static {v6}, Lcom/aide/ui/views/CodeEditTextScrollView;->v5(Lcom/aide/ui/views/CodeEditTextScrollView;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

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

    move-result-object v0
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    return-object v0

    :catchall_41
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v2
.end method

.method private getScrollPaddingBottom()I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3dbcf7703e3ba14L
    .end annotation

    const-wide v0, 0x5f1779b4107df5b5L  # 1.2006900994484038E150

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->handleHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;Z)I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    if-le v2, v3, :cond_2e

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2, v4}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;Z)I

    move-result v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_31

    add-int/lit8 v2, v0, -0x4

    :cond_2e
    add-int/lit8 v2, v2, 0x2

    return v2

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method private scheduleRemoveCaretHandle()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x17f45e27617ee959L
    .end annotation

    const-wide v0, 0x1d4514bff564d5cL  # 7.58465802036286E-300

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    if-nez v2, :cond_11

    return-void

    :cond_11
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    :cond_18
    new-instance v2, Lcom/aide/ui/views/n;

    invoke-direct {v2, p0}, Lcom/aide/ui/views/n;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;)V

    iput-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    iget-wide v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->timeout:J

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4739dd84b87c1140L
    .end annotation

    const-wide v0, 0x531ec89493be82a7L  # 2.5082852730043692E92

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getHandleRectInWindow()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->bounce:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->bounce:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-boolean v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isDown:Z

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->iconDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->iconDown:Landroid/graphics/drawable/Drawable;

    :goto_32
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3e

    :cond_36
    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3f

    goto :goto_32

    :goto_3e
    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v2

    :goto_49
    goto :goto_48
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

    const-wide v0, -0x1123557e23151904L  # -1.0610712057268163E226

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    if-nez v2, :cond_11

    return-void

    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->invalidate()V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public isTouchEventInsideHandle(Landroid/view/MotionEvent;)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x19940211135c5b8cL
    .end annotation

    const-wide v0, 0x8003e52616de5e5L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

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

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_55

    return p1

    :catchall_55
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v2
.end method

.method public isVisible()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4c717ae9623bf9bL
    .end annotation

    const-wide v0, 0x1adabf4dec5c0a14L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method protected abstract onClick()V
.end method

.method public onDestroy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1f621fe887c882e8L
    .end annotation

    const-wide v0, -0x1c2417404f993d7L  # -1.244972600562494E300

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimer:Ljava/util/Timer;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method protected abstract onDraggedTo(II)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x2528fc681625d5bL
    .end annotation

    const-wide v0, -0x5b7798bb369978b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_92

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_92

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v4, :cond_92

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v6}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v6

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getLine()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aide/ui/views/editor/OConsole;->DW(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getColumn()I

    move-result v8

    invoke-virtual {v6, v7}, Lcom/aide/ui/views/editor/OConsole;->FH(I)F

    move-result v9

    iget-object v10, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v10}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Lcom/aide/ui/views/CodeEditTextScrollView;)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v8, v7}, Lcom/aide/ui/views/editor/OConsole;->j6(II)F

    move-result v6

    iget-object v7, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v7}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {p0, v6, v9}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getHandleRect(II)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_92

    iput-boolean v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z

    iput-boolean v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isDown:Z

    iget-object v7, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->removeTimerTask:Ljava/util/TimerTask;

    if-eqz v7, :cond_6d

    invoke-virtual {v7}, Ljava/util/TimerTask;->cancel()Z

    :cond_6d
    iget-object v7, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v7}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragDX:I

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    sub-int/2addr v5, v9

    iput v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragDY:I

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->invalidate()V

    :cond_92
    iget-boolean p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z
    :try_end_94
    .catchall {:try_start_5 .. :try_end_94} :catchall_98

    if-eqz p1, :cond_97

    return v4

    :cond_97
    return v3

    :catchall_98
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_a0

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a0
    throw v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .annotation runtime Labcd/su;
        method = 0x25cd4561c1794bb7L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide v3, 0x934cce3488a30d0L

    :try_start_9
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_10

    invoke-static {v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-boolean v0, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z

    const/4 v5, 0x0

    if-nez v0, :cond_16

    return v5

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_30

    iput-boolean v5, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragIsActive:Z

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->scheduleRemoveCaretHandle()V

    iget-object v0, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    iget-boolean v0, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isDown:Z

    if-eqz v0, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->onClick()V

    iput-boolean v5, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isDown:Z

    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_a3

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget v8, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragDX:I

    int-to-float v8, v8

    sub-float/2addr v0, v8

    iget-object v8, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v8}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v0, v8

    iget v8, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->dragDY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v8}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Lcom/aide/ui/views/CodeEditTextScrollView;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v8}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/aide/ui/views/editor/OConsole;->FH(FF)I

    move-result v10

    iget-object v8, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v8}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/aide/ui/views/editor/OConsole;->DW(FF)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getLine()I

    move-result v0

    if-ne v10, v0, :cond_7b

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getColumn()I

    move-result v0
    :try_end_79
    .catchall {:try_start_9 .. :try_end_79} :catchall_a4

    if-eq v11, v0, :cond_a3

    :cond_7b
    :try_start_7b
    iget-object v0, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0, v6}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;Z)Z

    invoke-virtual {v1, v10, v11}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->onDraggedTo(II)V
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_9c

    :try_start_83
    iget-object v0, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0, v5}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;Z)Z

    iget-object v0, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    iget-object v9, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getScrollPaddingBottom()I

    move-result v14

    const/4 v15, 0x3

    const/16 v16, 0x1

    invoke-static/range {v9 .. v16}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;IIIIIIZ)Z

    goto :goto_a3

    :catchall_9c
    move-exception v0

    iget-object v6, v1, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v6, v5}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;Z)Z

    throw v0
    :try_end_a3
    .catchall {:try_start_83 .. :try_end_a3} :catchall_a4

    :cond_a3
    :goto_a3
    return v6

    :catchall_a4
    move-exception v0

    sget-boolean v5, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v5, :cond_ac

    invoke-static {v0, v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_ac
    throw v0
.end method

.method public setBounce(F)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1526a28063f3df20L
    .end annotation

    const-wide v0, 0x9a14a1e267c3065L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->bounce:F

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->getHandleRectInWindow()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x64

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->invalidate(Landroid/graphics/Rect;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public show()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1c4f914613f582b8L
    .end annotation

    const-wide v0, -0x11145dcb38a40a25L  # -2.045712072942806E226

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible:Z

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->invalidate()V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->scheduleRemoveCaretHandle()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
