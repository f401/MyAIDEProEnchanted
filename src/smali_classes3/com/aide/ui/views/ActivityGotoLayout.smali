.class public Lcom/aide/ui/views/ActivityGotoLayout;
.super Landroid/view/ViewGroup;


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

    const-class v0, Lcom/aide/ui/views/ActivityGotoLayout;

    const-wide v1, -0x190292074a4340L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x397f951f2719021L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x57e7001dbdace190L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x57e7001dbdace190L

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
    sget-boolean v0, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2186ac46d63e5603L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x2186ac46d63e5603L

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

.method private DW(F)F
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x14dc95d006605b37L
    .end annotation

    const-wide v0, -0x243d374055bbfcb8L  # -1.0666457411513189E134

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0, p1}, Lcom/aide/ui/views/ActivityGotoLayout;->Hw(F)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method private FH(F)F
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x11e13a5a81bdc210L
    .end annotation

    const-wide v0, 0xfdb3ef7827e40d3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget p1, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    const/high16 v0, 0x44160000  # 600.0f

    mul-float p1, p1, v0

    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private Hw(F)F
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x16cc5c4b88e3987L
    .end annotation

    const-wide v0, 0x60ee6910cc648d0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget p1, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    const/high16 v0, 0x44160000  # 600.0f

    mul-float p1, p1, v0

    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private j6(F)F
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x64b7797ece1a57c0L
    .end annotation

    const-wide v0, 0x39091a976bf97d2fL  # 6.043537594463053E-34

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0, p1}, Lcom/aide/ui/views/ActivityGotoLayout;->FH(F)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x5c4e525d79a84dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x40790c14d346b5f0L  # 400.7550843011986

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    sub-int v0, p4, p2

    int-to-float v0, v0

    sub-int v1, p5, p3

    int-to-float v1, v1

    invoke-direct {p0, v0}, Lcom/aide/ui/views/ActivityGotoLayout;->DW(F)F

    move-result v2

    invoke-direct {p0, v1}, Lcom/aide/ui/views/ActivityGotoLayout;->j6(F)F

    move-result v3

    sub-float v2, v0, v2

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v2, v4

    sub-float v3, v1, v3

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    float-to-int v5, v2

    float-to-int v6, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_4b

    return-void

    :catchall_4b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v1, :cond_73

    const-wide v2, 0x40790c14d346b5f0L  # 400.7550843011986

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_73
    throw v0
.end method

.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x208df5789349d018L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/ActivityGotoLayout;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x3308d30258df431L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/aide/ui/views/ActivityGotoLayout;->DW(F)F

    move-result v2

    int-to-float v3, v0

    invoke-direct {p0, v3}, Lcom/aide/ui/views/ActivityGotoLayout;->j6(F)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    float-to-int v2, v2

    const/high16 v5, 0x40000000  # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    float-to-int v3, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/ActivityGotoLayout;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x3308d30258df431L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method
