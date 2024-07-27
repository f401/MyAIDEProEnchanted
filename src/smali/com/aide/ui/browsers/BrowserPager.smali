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
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x19acac633ec68105L
    .end annotation

    const-wide v8, 0x10f89df3066ff260L    # 6.494686894255813E-227

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/ui/browsers/BrowserPager;

    const-wide v2, 0x6380f7758c79d270L    # 2.0490064649026602E171

    const-wide v4, 0x6380f7758c79d270L    # 2.0490064649026602E171

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10f89df3066ff260L    # 6.494686894255813E-227

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/aide/ui/browsers/BrowserPager;->et:I

    const/4 v0, 0x1

    sput v0, Lcom/aide/ui/browsers/BrowserPager;->CU:I

    const/4 v0, 0x2

    sput v0, Lcom/aide/ui/browsers/BrowserPager;->Xa:I

    const/4 v0, 0x3

    sput v0, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    const/4 v0, 0x4

    sput v0, Lcom/aide/ui/browsers/BrowserPager;->hz:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/browsers/BrowserPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/browsers/BrowserPager;->VH()V

    return-void
.end method

.method static synthetic DW(Lcom/aide/ui/browsers/BrowserPager;)Lcom/aide/ui/MainActivity;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/browsers/BrowserPager;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private VH(I)Landroid/view/View;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x21cdaa78ebffcd0bL
    .end annotation

    const-wide v2, -0x17035b2e8b1c6711L    # -5.3528876081510175E197

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17035b2e8b1c6711L    # -5.3528876081510175E197

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private VH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x237ffdc653309480L
    .end annotation

    const-wide v4, -0x16986a19f0e626c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16986a19f0e626c0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v1, Lcom/aide/ui/browsers/FileBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aide/ui/browsers/FileBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v1, Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aide/ui/browsers/ErrorBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v1, Lcom/aide/ui/browsers/SearchBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aide/ui/browsers/SearchBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v1, Lcom/aide/ui/browsers/DebugBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aide/ui/browsers/DebugBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    new-instance v1, Lcom/aide/ui/browsers/LogCatBrowser;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aide/ui/browsers/LogCatBrowser;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
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
    const/4 v0, 0x1

    :try_start_2
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

    new-instance v0, Lcom/aide/ui/browsers/BrowserPager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/browsers/BrowserPager$a;-><init>(Lcom/aide/ui/browsers/BrowserPager;Lcom/aide/ui/browsers/b;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xa1283226f439fd9L
    .end annotation

    const-wide v2, -0x29429563899b3e9bL    # -6.908578528970926E109

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29429563899b3e9bL    # -6.908578528970926E109

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

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/BrowserPager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/browsers/BrowserPager;->jO:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public DW(IZ)V
    .registers 11

    const-wide v2, -0x96f303015819b18L    # -1.3234561969400098E263

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, -0x96f303015819b18L    # -1.3234561969400098E263

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->j6(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->j6(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public Zo()V
    .registers 5

    const-wide v2, 0x251b799a5c67d249L    # 6.193266472917314E-130

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x251b799a5c67d249L    # 6.193266472917314E-130

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aide/ui/browsers/BrowserPager;->DW(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getCurrentBrowser()I
    .registers 5

    const-wide v2, 0x534323b62b871f07L    # 1.2476111007861569E93

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x534323b62b871f07L    # 1.2476111007861569E93

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getDebugBrowser()Lcom/aide/ui/browsers/DebugBrowser;
    .registers 5

    const-wide v2, -0x13af469259c79e9fL    # -5.630223700788317E213

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13af469259c79e9fL    # -5.630223700788317E213

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    invoke-direct {p0, v0}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/DebugBrowser;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "getDebugBrowser called in AIDE_WEB. This shouldn\'t happen"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getErrorBrowser()Lcom/aide/ui/browsers/ErrorBrowser;
    .registers 5

    const-wide v2, 0x17ba3536724e11c8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17ba3536724e11c8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/browsers/BrowserPager;->CU:I

    invoke-direct {p0, v0}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/ErrorBrowser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;
    .registers 5

    const-wide v2, -0xa11aa77ce2a35b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa11aa77ce2a35b0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/browsers/BrowserPager;->et:I

    invoke-direct {p0, v0}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/FileBrowser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getLogCatBrowser()Lcom/aide/ui/browsers/LogCatBrowser;
    .registers 5

    const-wide v2, -0x102ce65f5fcca670L    # -4.633322187588503E230

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x102ce65f5fcca670L    # -4.633322187588503E230

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/aide/ui/browsers/BrowserPager;->hz:I

    invoke-direct {p0, v0}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/LogCatBrowser;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "getLogCatBrowser called in AIDE_WEB. This shouldn\'t happen"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getSearchBrowser()Lcom/aide/ui/browsers/SearchBrowser;
    .registers 5

    const-wide v2, -0x14d1cf7bc1a5757cL    # -1.9384883646703785E208

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14d1cf7bc1a5757cL    # -1.9384883646703785E208

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/browsers/BrowserPager;->Xa:I

    invoke-direct {p0, v0}, Lcom/aide/ui/browsers/BrowserPager;->VH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/SearchBrowser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v2, -0x3b73f560a1411bc0L    # -1.6552776598384317E22

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3b73f560a1411bc0L    # -1.6552776598384317E22

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v2, 0x16e9c2f6cb1a29e8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/BrowserPager;->aq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16e9c2f6cb1a29e8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/BrowserPager;->FN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
