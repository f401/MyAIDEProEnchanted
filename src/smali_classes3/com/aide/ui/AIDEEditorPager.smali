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
            "Ljava/util/List<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/AIDEEditorPager;

    const-wide v1, -0x37115a8ad7afe0f1L  # -2.1357367179897575E43

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x204d0c61ba112d38L  # -9.925776017298156E152

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->vy()V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x204510879210ca23L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->vy()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x204510879210ca23L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/AIDEEditorPager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/ui/AIDEEditorPager;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->P8()V

    return-void
.end method

.method static synthetic Hw(Lcom/aide/ui/AIDEEditorPager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z

    return p0
.end method

.method private P8()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa107b0ef73389e1L
    .end annotation

    const-wide v0, -0x5107e5cc2ce906ccL  # -1.985092024822155E-82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/J;

    invoke-direct {v2, p0}, Lcom/aide/ui/J;-><init>(Lcom/aide/ui/AIDEEditorPager;)V

    const-wide/16 v3, 0x32

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method static synthetic Zo(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditor;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object p0

    return-object p0
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2785e126c2f0b17cL
    .end annotation

    const-wide v0, -0x3dd52bc94d3327c3L  # -5.761475210242234E10

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/MainActivity;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method private getCurrentEditor()Lcom/aide/ui/AIDEEditor;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1fcbe451dcbd2d6bL
    .end annotation

    const-wide v0, 0x4cb00581e7f3ef90L  # 2.574557950428871E61

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-gez v2, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    invoke-direct {p0, v2}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private getEditors()Ljava/util/List;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x33e4b9dacc43cadbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/AIDEEditor;",
            ">;"
        }
    .end annotation

    const-wide v0, 0xf6a48c7545ec350L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    invoke-direct {p0, v3}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_24
    return-object v2

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/MainActivity;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private setVisible(Z)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xf893fb4607b699cL
    .end annotation

    const-wide v0, 0x974d96c7c1d9549L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_35

    const v3, 0x7f0800f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_25

    if-eqz p1, :cond_21

    const/4 v6, 0x0

    goto :goto_22

    :cond_21
    const/4 v6, 0x4

    :goto_22
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    const v3, 0x7f0800f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_35

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    :cond_35
    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_43

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method private v5(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x11926b345a576f00L
    .end annotation

    const-wide v0, 0x72c45cd09bb0f19L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    invoke-direct {p0, v2}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_29

    if-eqz v3, :cond_24

    return v2

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_27
    const/4 p1, -0x1

    return p1

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    goto :goto_33

    :goto_32
    throw v2

    :goto_33
    goto :goto_32
.end method

.method private v5(I)Lcom/aide/ui/AIDEEditor;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1c6e28412dcedfa5L
    .end annotation

    const-wide v0, -0x70f5459a7f46508L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    if-ltz p1, :cond_28

    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_28

    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f080060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEEditor;
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2a

    return-object v2

    :cond_28
    const/4 p1, 0x0

    return-object p1

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditorPager$b;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/AIDEEditorPager;->hz:Lcom/aide/ui/AIDEEditorPager$b;

    return-object p0
.end method

.method private vy()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x172f4b5f78e32203L
    .end annotation

    const-wide v0, -0xafbf3b64b71380L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_78

    :cond_c
    const/4 v2, 0x1

    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mTouchSlop"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v4, 0xa

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_24
    .catchall {:try_start_d .. :try_end_23} :catchall_78

    goto :goto_25

    :catch_24
    move-exception v3

    :goto_25
    :try_start_25
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3, p0}, Labcd/Nk;->j6(Labcd/Nk$b;)V

    new-instance v3, Lcom/aide/ui/AIDEEditorPager$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/AIDEEditorPager$a;-><init>(Lcom/aide/ui/AIDEEditorPager;Lcom/aide/ui/I;)V

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/aide/ui/AIDEEditorPager;->setVisible(Z)V

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f030123

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-direct {v2, v3, v4}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    new-instance v2, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const v4, 0x7f0b0003

    invoke-direct {v2, v3, v4}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->jO:Lcom/aide/ui/Z;
    :try_end_77
    .catchall {:try_start_25 .. :try_end_77} :catchall_78

    return-void

    :catchall_78
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_80

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_80
    throw v2
.end method


# virtual methods
.method public BT()V
    .registers 5

    const-wide v0, -0x7f4312982f84b8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->U2()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public DW(II)Lcom/aide/engine/SyntaxError;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x13810d4ede1d3b38L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/AIDEEditor;->VH(II)Lcom/aide/engine/SyntaxError;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_27

    return-object p1

    :cond_25
    const/4 p1, 0x0

    return-object p1

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x13810d4ede1d3b38L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public DW(Landroid/graphics/Rect;)V
    .registers 7

    const-wide v0, 0x3aff6a33dd6a2f24L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->jO:Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/aide/ui/MainActivity;->j6(Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x136ec9cfc444aed0L  # -9.270859940787155E214

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditorPager;->v5(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3b

    invoke-direct {p0, v2}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditor;->vy()V

    iget-object v3, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/o;->DW()V

    iget-object v3, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/aide/ui/AIDEEditorPager;->setVisible(Z)V

    :cond_31
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/MainActivity;->DW(I)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->P8()V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public EQ()V
    .registers 5

    const-wide v0, 0xad3ea80b4eaa3e9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->er()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH(Ljava/lang/String;)Labcd/Nk$a;
    .registers 8

    const-wide v0, -0xb3b13c1a30b7a48L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/AIDEEditor;

    iget-boolean v4, p0, Lcom/aide/ui/AIDEEditorPager;->Eq:Z

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/CodeEditText;->setIdentifierClickingEnabled(Z)V

    invoke-virtual {v3, p1}, Lcom/aide/ui/AIDEEditor;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/aide/ui/AIDEEditorPager;->setVisible(Z)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/aide/ui/MainActivity;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->P8()V

    iget-object v4, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/o;->DW()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v4

    const v5, 0x7f08005f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Labcd/we;->j6(Landroid/view/ViewGroup;)V
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    return-object v3

    :catchall_59
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v2
.end method

.method public Hw(I)V
    .registers 6

    const-wide v0, -0x78081ab385495f4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/AIDEEditor;->v5(I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 8

    const-wide v0, -0xb584829a5c7d24fL  # -8.694538272412631E253

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v4}, Lcom/aide/ui/AIDEEditor;->BT()Z

    move-result p1
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_38

    return p1

    :cond_37
    return v3

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v2

    :goto_42
    goto :goto_41
.end method

.method public J0()V
    .registers 5

    const-wide v0, -0xe17eb4cbb348759L  # -5.017860151925401E240

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    invoke-virtual {v2}, Lcom/aide/ui/Z;->j6()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public J8()V
    .registers 5

    const-wide v0, -0x48157e08f23c6ac1L  # -2.4343455766559887E-39

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->yS()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Mr()V
    .registers 5

    const-wide v0, 0x589bf0c8af1bef20L  # 7.0458509103566584E118

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->P8()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public QX()Z
    .registers 5

    const-wide v0, 0x17034b1f1a8f598bL  # 8.06570997643965E-198

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->J8()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public U2()V
    .registers 5

    const-wide v0, 0xe1525f09c2fe170L  # 7.928973040522479E-241

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->ei()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, 0x1fd5ca469861a5c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getEditors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditor;->lg()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    goto :goto_14

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method public Ws()Z
    .registers 5

    const-wide v0, 0x39bbb7ff9efb02a8L  # 1.3666396034225244E-30

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public XL()Z
    .registers 5

    const-wide v0, -0x54413610305f9b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Zo()V
    .registers 5

    const-wide v0, 0x24b36da39541afd8L  # 6.84283711086646E-132

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getEditors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditor;->a8()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    goto :goto_14

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method public a8()V
    .registers 5

    const-wide v0, 0x2e3eb246c292705fL  # 6.172322136852175E-86

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->nw()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public aM()Z
    .registers 5

    const-wide v0, 0x1c6e3412e4756371L  # 9.769413899949755E-172

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->Ws()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public er()V
    .registers 5

    const-wide v0, -0x9044aa572e06f18L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    invoke-virtual {v2}, Lcom/aide/ui/Z;->DW()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public gW()V
    .registers 5

    const-wide v0, -0x1a98a19e9bcec0c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->ro()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public getBasicEditorCommands()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/Wl;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x3722a48e45a36af3L  # -1.022949263127753E43

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/ui/AIDEEditor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getBasicEditorCommands()Ljava/util/List;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public getCurrentFileLineCount()I
    .registers 5

    const-wide v0, -0x3226abdc26b5d60L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getLineCount()I

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1d

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public getCurrentFileSpan()Labcd/Tl;
    .registers 11

    const-wide v0, 0x3f2bd0e321565b8fL  # 2.1221897683850992E-4

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-nez v2, :cond_1e

    new-instance v2, Labcd/Tl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    return-object v2

    :cond_1e
    new-instance v9, Labcd/Tl;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v5

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v6

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v7

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndColumn()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    return-object v9

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public getFileEditors()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/AIDEEditor;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x15357b083c3dabb8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Lcom/aide/ui/AIDEEditorPager;->Xa:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    invoke-direct {p0, v3}, Lcom/aide/ui/AIDEEditorPager;->v5(I)Lcom/aide/ui/AIDEEditor;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_24
    return-object v2

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method public getQuickKeys()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x131b6bdd0e6ad3bfL  # -3.547022583216961E216

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getQuickKeys()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1d

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public getSelectionContent()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x4968dad0e6c9e185L  # -1.0135438488571354E-45

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getSelectionContent()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    return-object v0

    :cond_1b
    const-string v0, ""

    return-object v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public getTabSize()I
    .registers 5

    const-wide v0, -0x35eb7cd899b17550L  # -7.494697294709565E48

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1d

    return v0

    :cond_1b
    const/4 v0, 0x4

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public getVisibleFile()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x55ce9a6daf3360L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1d

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public gn()V
    .registers 5

    const-wide v0, -0xc7edd132a16eabL  # -6.60283193195876E304

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->v5()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j3()V
    .registers 5

    const-wide v0, 0x297991b456fb0bdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getEditors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditor;->vy()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    goto :goto_14

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method public j6(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x15d1c374db1700L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/ui/AIDEEditor;->j6(IIII)V

    if-ne p1, p3, :cond_31

    if-ne p2, p4, :cond_31

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->tp()V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    :cond_31
    return-void

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x15d1c374db1700L

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

    :cond_55
    throw v0
.end method

.method public j6(IIIILjava/lang/String;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x21ef3a8e5ccaa9a0L

    move-object v3, p0

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/views/CodeEditText;->j6(IIIILjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x21ef3a8e5ccaa9a0L

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

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public j6(Landroid/graphics/Rect;)V
    .registers 7

    const-wide v0, -0x1e62660317968d3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/aide/ui/MainActivity;->j6(Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8

    const-wide v0, -0x140b201ca3161d2fL  # -1.098030384400716E212

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditorPager;->v5(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    new-instance v3, Lcom/aide/ui/I;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/I;-><init>(Lcom/aide/ui/AIDEEditorPager;I)V

    const-wide/16 v4, 0xa

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditorPager;->we()V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/MainActivity;->FH(I)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V
    .registers 31

    move-object/from16 v0, p1

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v1, :cond_5c

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move/from16 v14, p3

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v15, p4

    invoke-direct {v2, v15}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v13, p7

    invoke-direct {v2, v13}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object p8, v1, v2

    const/16 v2, 0x8

    aput-object p9, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move/from16 v12, p10

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v11, p11

    invoke-direct {v2, v11}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-wide v2, 0x259361fbb5a70d01L  # 1.118503055707745E-127

    move-object/from16 v10, p0

    invoke-static {v2, v3, v10, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_68

    :cond_5c
    move-object/from16 v10, p0

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v13, p7

    move/from16 v12, p10

    move/from16 v11, p11

    :goto_68
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Nk;->VH(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/aide/ui/AIDEEditor;

    if-eqz v0, :cond_ac

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    goto :goto_ac

    :cond_94
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v10, v2

    move-object/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    goto :goto_c0

    :cond_ac
    :goto_ac
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    :goto_c0
    invoke-virtual/range {v3 .. v13}, Lcom/aide/ui/AIDEEditor;->j6(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v10, p0

    move/from16 v13, p7

    move/from16 v12, p10

    move/from16 v11, p11

    goto :goto_7a

    :cond_cc
    return-void
.end method

.method public varargs j6(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xf3f720777f320a0L  # -1.315905276389896E235

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, p2, p3}, Lcom/aide/ui/AIDEEditor;->j6(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_33

    goto :goto_18

    :cond_32
    return-void

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_45

    const-wide v2, -0xf3f720777f320a0L  # -1.315905276389896E235

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method

.method public j6(IILjava/lang/String;)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x22a28e5b528cfdf8L  # 7.608487121574287E-142

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/AIDEEditor;->j6(IILjava/lang/String;)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_29

    return p1

    :cond_27
    const/4 p1, 0x0

    return p1

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_43

    const-wide v2, 0x22a28e5b528cfdf8L  # 7.608487121574287E-142

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method public lg()V
    .registers 5

    const-wide v0, -0x13a9b33dfc3cb0d1L  # -7.50721055620024E213

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->XL()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v0, -0x76a479f7892be240L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/g;->j6(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2b

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/CodeEditText;->j6(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v3

    :cond_2b
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return p1

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xcaa1e05517a73f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x15fa5d60cbffcc81L  # -5.299426235808347E202

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->tp(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_61

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/g;->j6(Landroid/content/Context;)F

    move-result v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x42c80000  # 100.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_41

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->we(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    iget-boolean v1, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z

    if-eq v1, v0, :cond_61

    iput-boolean v0, p0, Lcom/aide/ui/AIDEEditorPager;->aq:Z

    iget-object v1, p0, Lcom/aide/ui/AIDEEditorPager;->hz:Lcom/aide/ui/AIDEEditorPager$b;

    if-eqz v1, :cond_61

    invoke-static {}, Lcom/s1243808733/aide/AideMainActivity;->inputMethodChangeValid()Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/aide/ui/AIDEEditorPager;->hz:Lcom/aide/ui/AIDEEditorPager$b;

    invoke-interface {v1, v0}, Lcom/aide/ui/AIDEEditorPager$b;->j6(Z)V

    new-instance v0, Lcom/aide/ui/K;

    invoke-direct {v0, p0}, Lcom/aide/ui/K;-><init>(Lcom/aide/ui/AIDEEditorPager;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_61
    .catchall {:try_start_0 .. :try_end_61} :catchall_62

    :cond_61
    return-void

    :catchall_62
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v1, :cond_7b

    const-wide v2, -0x15fa5d60cbffcc81L  # -5.299426235808347E202

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    throw v0
.end method

.method public rN()V
    .registers 5

    const-wide v0, -0x8c5b452f9c3644L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->aM()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public setIdentifierClickingEnabled(Z)V
    .registers 6

    const-wide v0, -0x13bb8e1a151e0457L  # -3.441376922651391E213

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/AIDEEditorPager;->Eq:Z

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getEditors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3, p1}, Lcom/aide/ui/views/CodeEditText;->setIdentifierClickingEnabled(Z)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_27

    goto :goto_16

    :cond_26
    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    goto :goto_36

    :goto_35
    throw v2

    :goto_36
    goto :goto_35
.end method

.method public setSoftKeyboardListener(Lcom/aide/ui/AIDEEditorPager$b;)V
    .registers 6

    const-wide v0, 0x7177af624008368L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/AIDEEditorPager;->hz:Lcom/aide/ui/AIDEEditorPager$b;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public tp()V
    .registers 5

    const-wide v0, 0xedc2772455ca2fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->VH()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public u7()V
    .registers 5

    const-wide v0, 0x456c22b781a1dc0L  # 9.34130014074252E-288

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->Zo()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public we()V
    .registers 5

    const-wide v0, -0x18c202f58e320448L  # -2.0877148368713202E189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->SI()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public yS()V
    .registers 5

    const-wide v0, -0x1724817cc0606dc0L  # -1.2845118473008058E197

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditorPager;->et:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditorPager;->FN:Lcom/aide/ui/Z;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/Z;->j6(Z)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditorPager;->CU:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method
