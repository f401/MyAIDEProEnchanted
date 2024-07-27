.class public Lcom/aide/ui/AIDEEditorPager;
.super Landroid/support/v4/view/ViewPager;

# interfaces
.implements Labcd/Nk$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/AIDEEditorPager$a;,
        Lcom/aide/ui/AIDEEditorPager$b;
    }
.end annotation


# static fields
.field private static CU:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static et:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private Eq:Z
    .annotation runtime Labcd/ru;
        field = 0x390c5fb69cb0f363L
    .end annotation
.end field

.field private FN:Lcom/aide/ui/Z;
    .annotation runtime Labcd/ru;
        field = 0xdd9d492e157a65L
    .end annotation
.end field

.field private Xa:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x273bf5cce876ecd9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Z
    .annotation runtime Labcd/ru;
        field = 0x1af493be17e74b70L
    .end annotation
.end field

.field private hz:Lcom/aide/ui/AIDEEditorPager$b;
    .annotation runtime Labcd/ru;
        field = -0x33f9511ac9beaeb1L
    .end annotation
.end field

.field private jO:Lcom/aide/ui/Z;
    .annotation runtime Labcd/ru;
        field = -0x29667c6ebd2e780L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x37115a8ad7afe0f1L    # -2.1357367179897575E43

    const-class v0, Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, -0x204d0c61ba112d38L    # -9.925776017298156E152

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x204d0c61ba112d38L    # -9.925776017298156E152

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->vy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, 0x204510879210ca23L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x204510879210ca23L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->vy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/AIDEEditorPager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/ui/AIDEEditorPager;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->P8()V

    return-void
.end method

.method static synthetic Hw(Lcom/aide/ui/AIDEEditorPager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z

    return v0
.end method

.method private P8()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xa107b0ef73389e1L
    .end annotation

    const-wide v4, -0x5107e5cc2ce906ccL    # -1.985092024822155E-82

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5107e5cc2ce906ccL    # -1.985092024822155E-82

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/J;

    invoke-direct {v0, p0}, Lcom/aide/ui/J;-><init>(Lcom/aide/ui/AIDEEditorPager;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic Zo(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditor;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    return-object v0
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2785e126c2f0b17cL
    .end annotation

    const-wide v2, -0x3dd52bc94d3327c3L    # -5.761475210242234E10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3dd52bc94d3327c3L    # -5.761475210242234E10

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/MainActivity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private getCurrentEditor()Lcom/aide/ui/AIDEEditor;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1fcbe451dcbd2d6bL
    .end annotation

    const-wide v2, 0x4cb00581e7f3ef90L    # 2.574557950428871E61

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4cb00581e7f3ef90L    # 2.574557950428871E61

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private getEditors()Ljava/util/List;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x33e4b9dacc43cadbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/AIDEEditor;",
            ">;"
        }
    .end annotation

    const-wide v4, 0xf6a48c7545ec350L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf6a48c7545ec350L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/MainActivity;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private setVisible(Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xf893fb4607b699cL
    .end annotation

    const-wide v6, 0x974d96c7c1d9549L

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x974d96c7c1d9549L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const v2, 0x7f0800f1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_3

    move v2, v1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v2, 0x7f0800f0

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :cond_3
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private v5(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x11926b345a576f00L
    .end annotation

    const-wide v2, 0x72c45cd09bb0f19L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x72c45cd09bb0f19L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private v5(I)Lcom/aide/ui/AIDEEditor;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1c6e28412dcedfa5L
    .end annotation

    const-wide v2, -0x70f5459a7f46508L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x70f5459a7f46508L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic v5(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditorPager$b;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->hz:Lcom/aide/ui/AIDEEditorPager$b;

    return-object v0
.end method

.method private vy()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x172f4b5f78e32203L
    .end annotation

    const-wide v4, -0xafbf3b64b71380L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xafbf3b64b71380L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTouchSlop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/Nk;->j6(Labcd/Nk$b;)V

    new-instance v0, Lcom/aide/ui/AIDEEditorPager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/AIDEEditorPager$a;-><init>(Lcom/aide/ui/AIDEEditorPager;Lcom/aide/ui/I;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/AIDEEditorPager;->setVisible(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f030123

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->jO:Lcom/aide/ui/Z;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public BT()V
    .registers 5

    const-wide v2, -0x7f4312982f84b8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7f4312982f84b8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->U2()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(II)Lcom/aide/engine/SyntaxError;
    .registers 10

    const-wide v2, -0x13810d4ede1d3b38L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x13810d4ede1d3b38L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/AIDEEditor;->VH(II)Lcom/aide/engine/SyntaxError;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(Landroid/graphics/Rect;)V
    .registers 8

    const-wide v4, 0x3aff6a33dd6a2f24L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3aff6a33dd6a2f24L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->jO:Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aide/ui/MainActivity;->j6(Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x136ec9cfc444aed0L    # -9.270859940787155E214

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x136ec9cfc444aed0L    # -9.270859940787155E214

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditorPager;->v5(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditor;->vy()V

    iget-object v1, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/o;->DW()V

    iget-object v1, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/aide/ui/AIDEEditorPager;->setVisible(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/MainActivity;->DW(I)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->P8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public EQ()V
    .registers 5

    const-wide v2, 0xad3ea80b4eaa3e9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xad3ea80b4eaa3e9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->er()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH(Ljava/lang/String;)Labcd/Nk$a;
    .registers 8

    const-wide v4, -0xb3b13c1a30b7a48L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb3b13c1a30b7a48L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080060

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    iget-boolean v2, p0, Lcom/aide/ui/AIDEEditorPager;->Eq:Z

    invoke-virtual {v0, v2}, Lcom/aide/ui/views/CodeEditText;->setIdentifierClickingEnabled(Z)V

    invoke-virtual {v0, p1}, Lcom/aide/ui/AIDEEditor;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/AIDEEditorPager;->setVisible(Z)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/MainActivity;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->P8()V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/o;->DW()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v3

    const v0, 0x7f08005f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Labcd/we;->j6(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(I)V
    .registers 6

    const-wide v2, -0x78081ab385495f4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x78081ab385495f4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/AIDEEditor;->v5(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 8

    const-wide v4, -0xb584829a5c7d24fL    # -8.694538272412631E253

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v2, -0xb584829a5c7d24fL    # -8.694538272412631E253

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->BT()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public J0()V
    .registers 5

    const-wide v2, -0xe17eb4cbb348759L    # -5.017860151925401E240

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe17eb4cbb348759L    # -5.017860151925401E240

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    invoke-virtual {v0}, Lcom/aide/ui/Z;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()V
    .registers 5

    const-wide v2, -0x48157e08f23c6ac1L    # -2.4343455766559887E-39

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x48157e08f23c6ac1L    # -2.4343455766559887E-39

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->yS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Mr()V
    .registers 5

    const-wide v2, 0x589bf0c8af1bef20L    # 7.0458509103566584E118

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x589bf0c8af1bef20L    # 7.0458509103566584E118

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->P8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public QX()Z
    .registers 5

    const-wide v2, 0x17034b1f1a8f598bL    # 8.06570997643965E-198

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17034b1f1a8f598bL    # 8.06570997643965E-198

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->J8()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public U2()V
    .registers 5

    const-wide v2, 0xe1525f09c2fe170L    # 7.928973040522479E-241

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe1525f09c2fe170L    # 7.928973040522479E-241

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->ei()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, 0x1fd5ca469861a5c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1fd5ca469861a5c0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->lg()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public Ws()Z
    .registers 5

    const-wide v2, 0x39bbb7ff9efb02a8L    # 1.3666396034225244E-30

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39bbb7ff9efb02a8L    # 1.3666396034225244E-30

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->BT()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public XL()Z
    .registers 5

    const-wide v2, -0x54413610305f9b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x54413610305f9b0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()V
    .registers 5

    const-wide v2, 0x24b36da39541afd8L    # 6.84283711086646E-132

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x24b36da39541afd8L    # 6.84283711086646E-132

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->a8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public a8()V
    .registers 5

    const-wide v2, 0x2e3eb246c292705fL    # 6.172322136852175E-86

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2e3eb246c292705fL    # 6.172322136852175E-86

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->nw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public aM()Z
    .registers 5

    const-wide v2, 0x1c6e3412e4756371L    # 9.769413899949755E-172

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c6e3412e4756371L    # 9.769413899949755E-172

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->Ws()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public er()V
    .registers 5

    const-wide v2, -0x9044aa572e06f18L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9044aa572e06f18L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    invoke-virtual {v0}, Lcom/aide/ui/Z;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gW()V
    .registers 5

    const-wide v2, -0x1a98a19e9bcec0c8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a98a19e9bcec0c8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->ro()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getBasicEditorCommands()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/Wl;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x3722a48e45a36af3L    # -1.022949263127753E43

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3722a48e45a36af3L    # -1.022949263127753E43

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/AIDEEditor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getBasicEditorCommands()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getCurrentFileLineCount()I
    .registers 5

    const-wide v2, -0x3226abdc26b5d60L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3226abdc26b5d60L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getLineCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getCurrentFileSpan()Labcd/Tl;
    .registers 9

    const-wide v6, 0x3f2bd0e321565b8fL    # 2.1221897683850992E-4

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3f2bd0e321565b8fL    # 2.1221897683850992E-4

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v0, Labcd/Tl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Labcd/Tl;

    invoke-virtual {v5}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v3

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v4

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndColumn()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getFileEditors()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/AIDEEditor;",
            ">;"
        }
    .end annotation

    const-wide v4, 0x15357b083c3dabb8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15357b083c3dabb8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method public getQuickKeys()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x131b6bdd0e6ad3bfL    # -3.547022583216961E216

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x131b6bdd0e6ad3bfL    # -3.547022583216961E216

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getQuickKeys()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getSelectionContent()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x4968dad0e6c9e185L    # -1.0135438488571354E-45

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4968dad0e6c9e185L    # -1.0135438488571354E-45

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getSelectionContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getTabSize()I
    .registers 5

    const-wide v2, -0x35eb7cd899b17550L    # -7.494697294709565E48

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35eb7cd899b17550L    # -7.494697294709565E48

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getVisibleFile()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x55ce9a6daf3360L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x55ce9a6daf3360L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public gn()V
    .registers 5

    const-wide v2, -0xc7edd132a16eabL    # -6.60283193195876E304

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc7edd132a16eabL    # -6.60283193195876E304

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j3()V
    .registers 5

    const-wide v2, 0x297991b456fb0bdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x297991b456fb0bdL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->vy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public j6(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x15d1c374db1700L

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/ui/AIDEEditor;->j6(IIII)V

    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->tp()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v0, :cond_2

    const-wide v2, -0x15d1c374db1700L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(IIIILjava/lang/String;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x21ef3a8e5ccaa9a0L

    move-object v2, p0

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText;->j6(IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v0, :cond_2

    const-wide v2, -0x21ef3a8e5ccaa9a0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Landroid/graphics/Rect;)V
    .registers 8

    const-wide v4, -0x1e62660317968d3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e62660317968d3L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aide/ui/MainActivity;->j6(Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x140b201ca3161d2fL    # -1.098030384400716E212

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x140b201ca3161d2fL    # -1.098030384400716E212

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditorPager;->v5(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    new-instance v1, Lcom/aide/ui/I;

    invoke-direct {v1, p0, v0}, Lcom/aide/ui/I;-><init>(Lcom/aide/ui/AIDEEditorPager;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditorPager;->we()V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/MainActivity;->FH(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V
    .registers 26

    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x259361fbb5a70d01L    # 1.118503055707745E-127

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p7

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p8, v4, v5

    const/16 v5, 0x8

    aput-object p9, v4, v5

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p10

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p11

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, p0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Nk;->VH(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEEditor;

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v2 .. v12}, Lcom/aide/ui/AIDEEditor;->j6(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v12}, Lcom/aide/ui/AIDEEditor;->j6(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public varargs j6(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12

    const-wide v6, -0xf3f720777f320a0L    # -1.315905276389896E235

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf3f720777f320a0L    # -1.315905276389896E235

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/aide/ui/AIDEEditor;->j6(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    return-void
.end method

.method public j6(IILjava/lang/String;)Z
    .registers 14

    const-wide v8, 0x22a28e5b528cfdf8L    # 7.608487121574287E-142

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x22a28e5b528cfdf8L    # 7.608487121574287E-142

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/AIDEEditor;->j6(IILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public lg()V
    .registers 5

    const-wide v2, -0x13a9b33dfc3cb0d1L    # -7.50721055620024E213

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13a9b33dfc3cb0d1L    # -7.50721055620024E213

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->XL()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const-wide v4, -0x76a479f7892be240L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x76a479f7892be240L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/g;->j6(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aide/ui/views/CodeEditText;->j6(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xcaa1e05517a73f0L
    .end annotation

    const-wide v2, -0x15fa5d60cbffcc81L    # -5.299426235808347E202

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x15fa5d60cbffcc81L    # -5.299426235808347E202

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->tp(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/g;->j6(Landroid/content/Context;)F

    move-result v1

    sub-float v0, v1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->we(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z

    iget-object v1, p0, Lcom/aide/ui/AIDEEditorPager;->hz:Lcom/aide/ui/AIDEEditorPager$b;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/s1243808733/aide/AideMainActivity;->inputMethodChangeValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/ui/AIDEEditorPager;->hz:Lcom/aide/ui/AIDEEditorPager$b;

    invoke-interface {v1, v0}, Lcom/aide/ui/AIDEEditorPager$b;->j6(Z)V

    new-instance v0, Lcom/aide/ui/K;

    invoke-direct {v0, p0}, Lcom/aide/ui/K;-><init>(Lcom/aide/ui/AIDEEditorPager;)V

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v0, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public rN()V
    .registers 5

    const-wide v2, -0x8c5b452f9c3644L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8c5b452f9c3644L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->aM()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public setIdentifierClickingEnabled(Z)V
    .registers 6

    const-wide v2, -0x13bb8e1a151e0457L    # -3.441376922651391E213

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13bb8e1a151e0457L    # -3.441376922651391E213

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/AIDEEditorPager;->Eq:Z

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/CodeEditText;->setIdentifierClickingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public setSoftKeyboardListener(Lcom/aide/ui/AIDEEditorPager$b;)V
    .registers 6

    const-wide v2, 0x7177af624008368L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7177af624008368L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/AIDEEditorPager;->hz:Lcom/aide/ui/AIDEEditorPager$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()V
    .registers 5

    const-wide v2, 0xedc2772455ca2fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xedc2772455ca2fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->VH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public u7()V
    .registers 5

    const-wide v2, 0x456c22b781a1dc0L    # 9.34130014074252E-288

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x456c22b781a1dc0L    # 9.34130014074252E-288

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public we()V
    .registers 5

    const-wide v2, -0x18c202f58e320448L    # -2.0877148368713202E189

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18c202f58e320448L    # -2.0877148368713202E189

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->SI()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public yS()V
    .registers 5

    const-wide v2, -0x1724817cc0606dc0L    # -1.2845118473008058E197

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1724817cc0606dc0L    # -1.2845118473008058E197

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/Z;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
