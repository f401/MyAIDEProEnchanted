.class public Lcom/aide/ui/browsers/BrowserPager;
.super Landroid/support/v4/view/ViewPager;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/browsers/BrowserPager$a;
    }
.end annotation


# static fields
.field public static CU:I

.field public static Eq:I

.field private static FN:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static Xa:I

.field private static aq:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static et:I

.field public static hz:I


# instance fields
.field private jO:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x26f63dcdec3ca671L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x19acac633ec68105L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x10f89df3066ff260L  # 6.494686894255813E-227

    :try_start_6
    const-class v3, Lcom/aide/ui/browsers/BrowserPager;

    const-wide v4, 0x6380f7758c79d270L  # 2.0490064649026602E171

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/4 v3, 0x0

    sput v3, Lcom/aide/ui/browsers/BrowserPager;->et:I

    const/4 v3, 0x1

    sput v3, Lcom/aide/ui/browsers/BrowserPager;->CU:I

    const/4 v3, 0x2

    sput v3, Lcom/aide/ui/browsers/BrowserPager;->Xa:I

    const/4 v3, 0x3

    sput v3, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    const/4 v3, 0x4

    sput v3, Lcom/aide/ui/browsers/BrowserPager;->hz:I
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/browsers/BrowserPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/browsers/BrowserPager;->VH()V

    return-void
.end method

.method static synthetic DW(Lcom/aide/ui/browsers/BrowserPager;)Lcom/aide/ui/MainActivity;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/browsers/BrowserPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private VH(I)Landroid/view/View;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x21cdaa78ebffcd0bL
    .end annotation

    const-wide v0, -0x17035b2e8b1c6711L  # -5.3528876081510175E197

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method private VH()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x237ffdc653309480L
    .end annotation

    const-wide v0, -0x16986a19f0e626c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v3, Lcom/aide/ui/browsers/FileBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/browsers/FileBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v3, Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/browsers/ErrorBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v3, Lcom/aide/ui/browsers/SearchBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/browsers/SearchBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v3, Lcom/aide/ui/browsers/DebugBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/browsers/DebugBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v3, Lcom/aide/ui/browsers/LogCatBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/browsers/LogCatBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_a2

    :cond_5c
    const/4 v2, 0x1

    :try_start_5d
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
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_73} :catch_74
    .catchall {:try_start_5d .. :try_end_73} :catchall_a2

    goto :goto_75

    :catch_74
    move-exception v3

    :goto_75
    :try_start_75
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030123

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/aide/ui/browsers/BrowserPager$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/browsers/BrowserPager$a;-><init>(Lcom/aide/ui/browsers/BrowserPager;Lcom/aide/ui/browsers/b;)V

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V
    :try_end_a1
    .catchall {:try_start_75 .. :try_end_a1} :catchall_a2

    return-void

    :catchall_a2
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_aa

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_aa
    throw v2
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xa1283226f439fd9L
    .end annotation

    const-wide v0, -0x29429563899b3e9bL  # -6.908578528970926E109

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

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

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/BrowserPager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public DW(IZ)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x96f303015819b18L  # -1.3234561969400098E263

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_28

    :cond_1c
    const/4 v0, 0x0

    if-nez p1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->j6(IZ)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->j6(IZ)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    :goto_28
    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_42

    const-wide v2, -0x96f303015819b18L  # -1.3234561969400098E263

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public Zo()V
    .registers 5

    const-wide v0, 0x251b799a5c67d249L  # 6.193266472917314E-130

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/browsers/BrowserPager;->DW(IZ)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getCurrentBrowser()I
    .registers 5

    const-wide v0, 0x534323b62b871f07L  # 1.2476111007861569E93

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public getDebugBrowser()Lcom/aide/ui/browsers/DebugBrowser;
    .registers 5

    const-wide v0, -0x13af469259c79e9fL  # -5.630223700788317E213

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    sget v2, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    invoke-direct {p0, v2}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/DebugBrowser;

    return-object v2

    :cond_1f
    const-string v2, "getDebugBrowser called in AIDE_WEB. This shouldn\'t happen"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_26

    const/4 v0, 0x0

    return-object v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public getErrorBrowser()Lcom/aide/ui/browsers/ErrorBrowser;
    .registers 5

    const-wide v0, 0x17ba3536724e11c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v2, Lcom/aide/ui/browsers/BrowserPager;->CU:I

    invoke-direct {p0, v2}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/ErrorBrowser;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;
    .registers 5

    const-wide v0, -0xa11aa77ce2a35b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v2, Lcom/aide/ui/browsers/BrowserPager;->et:I

    invoke-direct {p0, v2}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/FileBrowser;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getLogCatBrowser()Lcom/aide/ui/browsers/LogCatBrowser;
    .registers 5

    const-wide v0, -0x102ce65f5fcca670L  # -4.633322187588503E230

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    sget v2, Lcom/aide/ui/browsers/BrowserPager;->hz:I

    invoke-direct {p0, v2}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/LogCatBrowser;

    return-object v2

    :cond_1f
    const-string v2, "getLogCatBrowser called in AIDE_WEB. This shouldn\'t happen"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_26

    const/4 v0, 0x0

    return-object v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public getSearchBrowser()Lcom/aide/ui/browsers/SearchBrowser;
    .registers 5

    const-wide v0, -0x14d1cf7bc1a5757cL  # -1.9384883646703785E208

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v2, Lcom/aide/ui/browsers/BrowserPager;->Xa:I

    invoke-direct {p0, v2}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/SearchBrowser;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v0, -0x3b73f560a1411bc0L  # -1.6552776598384317E22

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v0, 0x16e9c2f6cb1a29e8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method
