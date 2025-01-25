.class public Lcom/aide/ui/views/CodeEditTextScrollView;
.super Landroid/widget/ScrollView;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;,
        Lcom/aide/ui/views/CodeEditTextScrollView$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static j6:Z


# instance fields
.field private EQ:F
    .annotation runtime Labcd/ru;
        field = -0xfa2431958d180e0L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x1f0d80f93f5f02afL
    .end annotation
.end field

.field private J0:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;
    .annotation runtime Labcd/ru;
        field = -0x3acb3979d2c95a10L
    .end annotation
.end field

.field private J8:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;
    .annotation runtime Labcd/ru;
        field = -0x16a0ee436269bf29L
    .end annotation
.end field

.field private QX:Lcom/aide/ui/views/CodeEditTextScrollView$a;
    .annotation runtime Labcd/ru;
        field = 0x4cd2a557021fe0a0L
    .end annotation
.end field

.field private VH:F
    .annotation runtime Labcd/ru;
        field = 0x2bc7ffdf093d219bL
    .end annotation
.end field

.field private Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;
    .annotation runtime Labcd/ru;
        field = -0xd3c2ba8e7ffedb5L
    .end annotation
.end field

.field private XL:[Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;
    .annotation runtime Labcd/ru;
        field = -0x184c3d078507f749L
    .end annotation
.end field

.field private Zo:F
    .annotation runtime Labcd/ru;
        field = 0x2bc7aad5ef7a3c40L
    .end annotation
.end field

.field private aM:Z
    .annotation runtime Labcd/ru;
        field = -0x342450d7894e46cdL
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x3749e72c5ea15837L
    .end annotation
.end field

.field private j3:Z
    .annotation runtime Labcd/ru;
        field = 0x9fda91330c550ecL
    .end annotation
.end field

.field private tp:F
    .annotation runtime Labcd/ru;
        field = -0xfa226d5e58933bbL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x374a2fdd21809b70L
    .end annotation
.end field

.field private v5:F
    .annotation runtime Labcd/ru;
        field = -0x2e5253195bc27ffdL
    .end annotation
.end field

.field private we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;
    .annotation runtime Labcd/ru;
        field = -0x22928868da37f1ddL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x273daece0ec8e000L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x69a053ef4f1173cL

    :try_start_6
    const-class v3, Lcom/aide/ui/views/CodeEditTextScrollView;

    const-wide v4, 0x1531a05ac6f9b43cL

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/4 v3, 0x0

    sput-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->j6:Z
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x200c2f2b7fd63c1L  # -8.17194931180598E298

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x24d82b202eac43c0L  # -1.3215397848047977E131

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_25

    const-wide v2, -0x24d82b202eac43c0L  # -1.3215397848047977E131

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x752e85e9fb71bb3L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x752e85e9fb71bb3L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditTextScrollView;Z)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Z)I

    move-result p0

    return p0
.end method

.method private DW(Z)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x15365db0ab031720L
    .end annotation

    const-wide v0, -0x53029f3ce390c16bL  # -5.633563894274687E-92

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    if-eqz p1, :cond_14

    const/4 v3, 0x0

    goto :goto_18

    :cond_14
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getQuickKeyBarHeight()I

    move-result v3

    :goto_18
    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result p1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_25

    div-float/2addr v2, p1

    float-to-int p1, v2

    return p1

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method private static DW(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xdb5081e08cff6c9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xf08de444c42f708L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const v3, 0x10102c7

    const v4, 0x1010435

    invoke-static {p0, v3, v4}, Lcom/aide/common/g;->j6(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070107

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return-object p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object p0

    return-object p0
.end method

.method private DW(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9d4429a47d052d4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xce09d99f9d3bcddL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_47

    const-wide v2, -0xce09d99f9d3bcddL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method private DW(Landroid/view/MotionEvent;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x8455d2568d64380L
    .end annotation

    const-wide v0, -0x3595895a26550cfL  # -2.825856252014978E292

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(FFFF)F

    move-result v2

    iget v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->v5:F

    div-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->setPinchZoom(F)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private EQ()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4e17a30423512058L
    .end annotation

    const-wide v0, 0x4c1bfb7eef77269L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private static FH(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x120f44fe3e822978L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xc6517ea1c3e99adL  # 5.8922411416838E-249

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const v3, 0x10102c6

    const v4, 0x1010435

    invoke-static {p0, v3, v4}, Lcom/aide/common/g;->j6(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return-object p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method static synthetic FH(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getCodeEditText()Lcom/aide/ui/views/CodeEditText;

    move-result-object p0

    return-object p0
.end method

.method private FH(Landroid/view/MotionEvent;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x811c0f3e3ca6a0cL
    .end annotation

    const-wide v0, 0x104d915ba8f70e37L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(FFFF)F

    move-result v4

    iput v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->v5:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v4, v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(FF)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v2
.end method

.method static synthetic Hw(Lcom/aide/ui/views/CodeEditTextScrollView;)I
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getScrollLineY()I

    move-result p0

    return p0
.end method

.method private Hw(Landroid/content/Context;)V
    .registers 18
    .annotation runtime Labcd/su;
        method = -0x735c0d51c90ba200L
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-wide v13, -0x62ca77dc4cbe1827L  # -5.705354828277504E-168

    :try_start_9
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_10

    invoke-static {v13, v14, v11, v12}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    new-instance v1, Lcom/aide/ui/views/CodeEditTextScrollView$a;

    const v2, 0x7f070104

    invoke-direct {v1, v11, v2}, Lcom/aide/ui/views/CodeEditTextScrollView$a;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;I)V

    iput-object v1, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    new-instance v1, Lcom/aide/ui/views/CodeEditTextScrollView$a;

    const v2, 0x7f070105

    invoke-direct {v1, v11, v2}, Lcom/aide/ui/views/CodeEditTextScrollView$a;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;I)V

    iput-object v1, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->QX:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    new-instance v15, Lcom/aide/ui/views/f;

    invoke-static/range {p1 .. p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x3f000000  # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0xbb8

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/aide/ui/views/f;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V

    iput-object v15, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    new-instance v15, Lcom/aide/ui/views/g;

    invoke-static/range {p1 .. p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x3f4ccccd  # 0.8f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/32 v9, 0x989680

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/aide/ui/views/g;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V

    iput-object v15, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->J0:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    new-instance v15, Lcom/aide/ui/views/h;

    invoke-static/range {p1 .. p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x3e4ccccd  # 0.2f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/32 v9, 0x989680

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/aide/ui/views/h;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V

    iput-object v15, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->J8:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    iget-object v2, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    aput-object v2, v1, v0

    iget-object v0, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->QX:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->J0:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    aput-object v15, v1, v0

    iput-object v1, v11, Lcom/aide/ui/views/CodeEditTextScrollView;->XL:[Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;
    :try_end_92
    .catchall {:try_start_9 .. :try_end_92} :catchall_93

    return-void

    :catchall_93
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_9b

    invoke-static {v0, v13, v14, v11, v12}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_9b
    throw v0
.end method

.method private Hw(Landroid/view/MotionEvent;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x30806668692c2c64L
    .end annotation

    const-wide v0, -0xd7e5cdf9dbe25fbL  # -3.763366082939994E243

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method private J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x44c40a1372c746f5L
    .end annotation

    const-wide v0, -0x6723897a0a498610L  # -6.3882679392129995E-189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J0:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->show()V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J8:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->show()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method private getCodeEditText()Lcom/aide/ui/views/CodeEditText;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4e62180a46fa1057L
    .end annotation

    const-wide v0, -0x4934c55544863e90L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CodeEditText;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v2

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method private getHeaderHeight()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4767b7450965516bL
    .end annotation

    const-wide v0, 0x4d629507d6abfb58L  # 6.115402783991585E64

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private getHorizontalScrollView()Landroid/widget/HorizontalScrollView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x6de994d0a594af5L
    .end annotation

    const-wide v0, -0xb0fd3db6daf168L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object v2

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method private getOEditorView()Lcom/aide/ui/views/CodeEditText$c;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x78b4497aee19fe8L
    .end annotation

    const-wide v0, -0x491b202d8068757bL  # -2.9251132522344774E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getCodeEditText()Lcom/aide/ui/views/CodeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private getQuickKeyBarHeight()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x9c76bb0122a7a51L
    .end annotation

    const-wide v0, 0x3ae9b4fb58331840L  # 6.645093467499335E-25

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getCodeEditText()Lcom/aide/ui/views/CodeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getQuickKeyBarHeight()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private getScreenLinesCount()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4a4175250840ee91L
    .end annotation

    const-wide v0, 0x5a4fddd9daaaaa74L  # 1.0785592182634681E127

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getQuickKeyBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_36

    div-float/2addr v2, v0

    float-to-int v0, v2

    return v0

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method private getScrollColumnX()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4273f07be6bf410L
    .end annotation

    const-wide v0, 0x2f141159f96ed655L  # 6.611203127375185E-82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private getScrollLineY()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x26f3d9d803bb8505L
    .end annotation

    const-wide v0, -0x1ef6ca247a712fe0L  # -2.769026619417619E159

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderHeight()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_16

    sub-int/2addr v2, v0

    return v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private getVisibleColumnsCount()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xa91ea113323a39L
    .end annotation

    const-wide v0, -0x533ac9f4a2365f58L  # -5.084342094327563E-93

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1c

    div-float/2addr v2, v0

    float-to-int v0, v2

    return v0

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method private j6(FFFF)F
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x243a78d7ccec99fcL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p2}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p3}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p4}, Ljava/lang/Float;-><init>(F)V

    const-wide v1, 0x10b26215bcd8bd35L  # 3.031259304583662E-228

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    sub-float v0, p1, p3

    sub-float v1, p2, p4

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_31

    double-to-float p1, p1

    return p1

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_54

    const-wide v2, 0x10b26215bcd8bd35L  # 3.031259304583662E-228

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p3}, Ljava/lang/Float;-><init>(F)V

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, p4}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method

.method private static j6(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x90b2cf6fce54cedL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x42a50175b435be0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const v3, 0x10102c5

    const v4, 0x1010435

    invoke-static {p0, v3, v4}, Lcom/aide/common/g;->j6(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return-object p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method private j6(FF)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x47bd2731779bc3b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0xd67e50cd8cc7dafL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iput p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Zo:F

    iput p2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->VH:F

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getScrollColumnX()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->gn:I

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getScrollLineY()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->u7:I

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText$c;->ei()V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_47

    const-wide v2, 0xd67e50cd8cc7dafL

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method private j6(IIIIIIZ)Z
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x3fde41bee7896718L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-wide v3, 0x429bb79840c1a2bL

    invoke-static {v3, v4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_47
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/OConsole;->DW(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getFirstVisibleLine()I

    move-result v3

    add-int/2addr v3, p3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p7}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Z)I

    move-result v4

    if-ge p1, v3, :cond_61

    sub-int p3, p1, p3

    add-int/lit8 v3, p3, 0x1

    const/4 p3, 0x1

    goto :goto_62

    :cond_61
    const/4 p3, 0x0

    :goto_62
    sub-int/2addr v4, p5

    add-int/2addr v4, v1

    if-le p1, v4, :cond_6f

    invoke-direct {p0, p7}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Z)I

    move-result p3

    sub-int p3, p1, p3

    add-int v3, p3, p5

    const/4 p3, 0x1

    :cond_6f
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p5

    invoke-virtual {p5, p2, p1}, Lcom/aide/ui/views/editor/OConsole;->j6(II)F

    move-result p2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p5

    int-to-float p5, p5

    int-to-float p6, p6

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result p7

    mul-float p6, p6, p7

    sub-float p6, p2, p6

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object p7

    invoke-virtual {p7}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p7

    int-to-float p7, p7

    cmpg-float p7, p6, p7

    if-gez p7, :cond_99

    move p5, p6

    const/4 p6, 0x1

    goto :goto_9a

    :cond_99
    const/4 p6, 0x0

    :goto_9a
    int-to-float p4, p4

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result p7

    mul-float p4, p4, p7

    add-float/2addr p2, p4

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result p7

    add-int/2addr p4, p7

    int-to-float p4, p4

    cmpl-float p4, p2, p4

    if-lez p4, :cond_bc

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    sub-float p5, p2, p4

    const/4 p6, 0x1

    :cond_bc
    if-nez p6, :cond_c0

    if-eqz p3, :cond_f5

    :cond_c0
    if-eqz p3, :cond_de

    if-gez v3, :cond_c5

    const/4 v3, 0x0

    :cond_c5
    int-to-float p2, v3

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result p4

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderHeight()I

    move-result p7

    int-to-float p7, p7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    mul-float p2, p2, p4

    add-float/2addr p2, p7

    float-to-int p2, p2

    invoke-virtual {p0, v0, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_de
    if-eqz p6, :cond_f0

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object p2

    float-to-int p4, p5

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result p5

    invoke-virtual {p2, p4, p5}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_f0
    if-gtz p1, :cond_f5

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->EQ()V

    :cond_f5
    if-nez p6, :cond_fb

    if-eqz p3, :cond_fa

    goto :goto_fb

    :cond_fa
    const/4 v1, 0x0

    :cond_fb
    :goto_fb
    return v1
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditTextScrollView;IIIIIIZ)Z
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(IIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditTextScrollView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->aM:Z

    return p1
.end method

.method private setPinchZoom(F)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x263a1e5d03ed63c9L
    .end annotation

    const-wide v0, -0x1dffd3b1744f759cL  # -1.164180216350925E164

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/CodeEditText$c;->FH(F)[F

    move-result-object v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_3b

    const/4 v3, 0x1

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v2, v2, v4

    :try_start_1f
    iget v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->gn:I

    int-to-float v4, v4

    iget v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Zo:F

    add-float/2addr v4, v5

    mul-float v4, v4, v2

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->tp:F

    iget v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->u7:I

    int-to-float v2, v2

    iget v5, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->VH:F

    add-float/2addr v2, v5

    mul-float v2, v2, v3

    sub-float/2addr v2, v5

    iput v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->EQ:F

    float-to-int v3, v4

    float-to-int v2, v2

    invoke-direct {p0, v3, v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(II)V
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_48

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v2
.end method

.method private tp()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x24d4c9732a0b46ebL
    .end annotation

    const-wide v0, 0x57ff885ea56374e8L  # 7.765321322691977E115

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private u7()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x15074ff1029e388L
    .end annotation

    const-wide v0, 0x18824277c6155f9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isHardwareAccelerated()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/views/CodeEditTextScrollView;)I
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderHeight()I

    move-result p0

    return p0
.end method

.method private we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4e5aaa45e518630bL
    .end annotation

    const-wide v0, -0x3c630a05d28ae244L  # -5.2171226887536205E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->show()V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J0:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J8:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 6

    const-wide v0, 0x123b7678b5601d74L  # 7.597447000267798E-221

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditTextScrollView$a;->getLine()I

    move-result v3

    if-eq v2, v3, :cond_37

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditTextScrollView$a;->getColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditTextScrollView$a;->getLine()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    :cond_37
    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x854d838fc468343L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->aM:Z

    if-nez v2, :cond_2a

    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->j3:Z

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J0:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J8:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getCodeEditText()Lcom/aide/ui/views/CodeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->QX()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x4171e77fd88566fL  # -7.577280579051066E288

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->QX:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->hide()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, -0x149e137f1acc2680L  # -1.841442259277931E209

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->J0()V

    goto :goto_1d

    :cond_1a
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->we()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public Zo()V
    .registers 7

    const-wide v0, -0x15dcbdbac7b8ece3L  # -1.8869390101948493E203

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->XL:[Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1a

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->onDestroy()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    goto :goto_25

    :goto_24
    throw v2

    :goto_25
    goto :goto_24
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x6e509cc46f4e88ecL
    .end annotation

    const-wide v0, -0x5e4dd5d67b37a8dfL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->tp()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    const-wide v0, 0x47a2c3c10cfd5c3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->XL:[Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_24

    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->draw(Landroid/graphics/Canvas;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method public getFirstVisibleLine()I
    .registers 5

    const-wide v0, 0x3f392439339ff780L  # 3.8362881207364835E-4

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getScrollLineY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1c

    div-float/2addr v2, v0

    float-to-int v0, v2

    return v0

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 5

    const-wide v0, 0x1cd9c7fbbb29c670L  # 1.067395400698648E-169

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-object v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public gn()V
    .registers 6

    const-wide v0, -0x4ad765e263b53f87L  # -1.284285071744421E-52

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderHeight()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    const-string v2, "scrollY"

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public j6(Z)I
    .registers 6

    const-wide v0, 0x333d99eef02e3b27L  # 7.195677952023415E-62

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getFirstVisibleLine()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Z)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    return v2

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x104b94252d76737fL  # 3.552769197570374E-230

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    int-to-float v0, p2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getFirstVisibleLine()I

    move-result v1

    add-int/2addr v0, p1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getScreenLinesCount()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_53

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    mul-float v0, v0, v1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V
    :try_end_53
    .catchall {:try_start_0 .. :try_end_53} :catchall_54

    :cond_53
    return-void

    :catchall_54
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_6d

    const-wide v2, 0x104b94252d76737fL  # 3.552769197570374E-230

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    throw v0
.end method

.method public j6(IIFLjava/lang/Runnable;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p3}, Ljava/lang/Float;-><init>(F)V

    const-wide v1, 0x58536f31aa6b2a70L  # 3.0630097668369944E117

    move-object v3, p0

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getFontSize()F

    move-result v0

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_75

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/aide/ui/views/editor/OConsole;->j6(II)F

    move-result v0

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aide/ui/views/editor/OConsole;->FH(I)F

    move-result v1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getScrollLineY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(FF)V

    const-string v0, "pinchZoom"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v1, v2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getFontSize()F

    move-result v2

    div-float v2, p3, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/aide/ui/views/l;

    invoke-direct {v1, p0, p4}, Lcom/aide/ui/views/l;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7a

    :cond_75
    if-eqz p4, :cond_7a

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_7a
    .catchall {:try_start_0 .. :try_end_7a} :catchall_7b

    :cond_7a
    :goto_7a
    return-void

    :catchall_7b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_9a

    const-wide v2, 0x58536f31aa6b2a70L  # 3.0630097668369944E117

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p3}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object v4, p0

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9a
    throw v0
.end method

.method public j6(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xa95ac3b5b35e228L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_55

    :cond_21
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_23
    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->j3:Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_34

    if-ne p1, p3, :cond_31

    if-eq p2, p4, :cond_34

    :cond_31
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->J0()V

    :cond_34
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/ui/views/CodeEditText$c;->Hw(IIII)V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J0:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4b
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_51

    :cond_4e
    :try_start_4e
    iput-boolean v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->j3:Z

    return-void

    :catchall_51
    move-exception v0

    iput-boolean v1, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->j3:Z

    throw v0
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_78

    const-wide v2, 0xa95ac3b5b35e228L

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

    :cond_78
    throw v0
.end method

.method public j6(IIZZ)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x305141e96c74f310L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    if-eqz p3, :cond_2d

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    :goto_25
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/CodeEditTextScrollView$a;->j6(II)V

    goto :goto_30

    :cond_2d
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->QX:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    goto :goto_25

    :goto_30
    if-eqz p4, :cond_45

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getCodeEditText()Lcom/aide/ui/views/CodeEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->getDefaultFontSize()F

    move-result v1

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_46

    :cond_45
    return-void

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_69

    const-wide v2, 0x305141e96c74f310L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    goto :goto_6b

    :goto_6a
    throw v0

    :goto_6b
    goto :goto_6a
.end method

.method public j6()Z
    .registers 12

    const-wide v0, -0x699abe5b3c10942dL  # -8.678067641992615E-201

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v4

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(IIIIIIZ)Z

    move-result v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return v0

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public j6(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v0, -0x3c0ad07db1200f81L  # -2.4425313183648444E19

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->we:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isTouchEventInsideHandle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J0:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isTouchEventInsideHandle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->J8:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isTouchEventInsideHandle(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_29

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method protected onAttachedToWindow()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xc521356b82a9f03L
    .end annotation

    const-wide v0, 0x3d6e832e4db032e0L  # 8.672152854637428E-13

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->j6:Z

    if-nez v2, :cond_1b

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->u7()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    :cond_1b
    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method protected onFinishInflate()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2cf7f84c464e270L
    .end annotation

    const-wide v0, 0x92b62326af35371L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/views/i;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/i;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->j6(Lcom/aide/ui/views/editor/n;)V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/views/j;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/j;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->j6(Lcom/aide/ui/views/editor/t;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const-wide v0, 0x2de69e0e3d9e8b00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->XL:[Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_11
    const/4 v6, 0x1

    if-ge v5, v3, :cond_20

    aget-object v7, v2, v5

    invoke-virtual {v7, p1}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1d

    return v6

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_20
    invoke-static {p1}, Lcom/aide/common/g;->j6(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v4

    :cond_27
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw:Z

    if-nez v2, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3c

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH(Landroid/view/MotionEvent;)V

    :cond_3c
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw:Z

    if-eqz v2, :cond_41

    return v6

    :cond_41
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    return p1

    :catchall_46
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v2

    :goto_50
    goto :goto_4f
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    const-wide v0, 0x1f89ef0628269a1L  # 3.676439788293999E-299

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_33

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "instanceState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v3, "scrollx"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "scrolly"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/aide/ui/views/k;

    invoke-direct {v4, p0, v2, v3}, Lcom/aide/ui/views/k;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;II)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_36

    :cond_33
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    :goto_36
    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    const-wide v0, 0x5e807989b385e40L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "instanceState"

    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "scrollx"

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "scrolly"

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-object v2

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method protected onScrollChanged(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x5209b4672ea87cdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xcc221ddb251b60L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->XL()V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0xcc221ddb251b60L

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
        method = -0x437bdab95fc0c233L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x348c47d61787b660L  # 1.441715580242872E-55

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->XL()V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0x348c47d61787b660L  # 1.441715580242872E-55

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const-wide v0, 0x1314a41f9328ec78L  # 9.355696212012245E-217

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->XL:[Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_10
    const/4 v5, 0x1

    if-ge v4, v3, :cond_1f

    aget-object v6, v2, v4

    invoke-virtual {v6, p1}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1c

    return v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1f
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw:Z

    const/4 v3, 0x2

    if-nez v2, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v3, :cond_34

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH(Landroid/view/MotionEvent;)V

    :cond_34
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw:Z

    if-eqz v2, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_47

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v3, :cond_47

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Landroid/view/MotionEvent;)V

    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_53

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v2, v5, :cond_5a

    :cond_53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5d

    :cond_5a
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Landroid/view/MotionEvent;)V

    :cond_5d
    return v5

    :cond_5e
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_63

    return p1

    :catchall_63
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_6b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    goto :goto_6d

    :goto_6c
    throw v2

    :goto_6d
    goto :goto_6c
.end method

.method public v5()Z
    .registers 5

    const-wide v0, 0x59eeb6471dfc4b07L  # 1.6241892715098831E125

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditTextScrollView;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->Ws:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditTextScrollView;->QX:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_21

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditTextScrollView;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method
