.class public Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;

    const-wide v1, -0x714e3555dcbe61d8L  # -6.83061598968619E-238

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x178f01f3d24fb0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xe70f4ed6d44f4f1L  # -1.0107268232744385E239

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0xe70f4ed6d44f4f1L  # -1.0107268232744385E239

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xe376aaf8e0d247cL

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0xe376aaf8e0d247cL

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method private getCodeEditText()Lcom/aide/ui/views/CodeEditText;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4626e2eca7fab0f0L
    .end annotation

    const-wide v0, 0x3e67a1fb833d5aadL  # 4.401941602779234E-8

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CodeEditText;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v2

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method private getOEditorView()Lcom/aide/ui/views/CodeEditText$c;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x12ee9e81ffece665L
    .end annotation

    const-wide v0, -0x7a9241b3978be9cL  # -4.830505334930149E271

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->getCodeEditText()Lcom/aide/ui/views/CodeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v0, -0x5ea53394afdfcb03L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return p1

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v0, 0x3775006ad0955c95L  # 1.5067930458622691E-41

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/g;->j6(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method protected onScrollChanged(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x61010116f31d39cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x8ab26df668c8bc7L  # 6.57859607554664E-267

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->XL()V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0x8ab26df668c8bc7L  # 6.57859607554664E-267

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4c0645114338206cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x704cb873ca65c71L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->XL()V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextHorizontalScrollView;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, -0x704cb873ca65c71L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method
