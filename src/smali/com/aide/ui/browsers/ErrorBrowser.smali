.class public Lcom/aide/ui/browsers/ErrorBrowser;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/aide/ui/browsers/a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/browsers/ErrorBrowser$a;,
        Lcom/aide/ui/browsers/ErrorBrowser$b;
    }
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


# instance fields
.field private FH:Lcom/aide/common/KeyStrokeDetector$a;
    .annotation runtime Labcd/ru;
        field = -0x68d90254188af27L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x6d99c4661a867e9L
    .end annotation
.end field

.field private v5:Lcom/aide/ui/browsers/ErrorBrowser$a;
    .annotation runtime Labcd/ru;
        field = -0x27e45f620294cc8fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x319804b2924393adL    # -5.1723520868399924E69

    const-class v0, Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, 0x2f86e7d2ec8c2e90L    # 9.658998826442708E-80

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2f86e7d2ec8c2e90L    # 9.658998826442708E-80

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->Hw()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x10c4b5756935bcf9L    # -6.465156000402902E227

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10c4b5756935bcf9L    # -6.465156000402902E227

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->Hw()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/browsers/ErrorBrowser;)Lcom/aide/ui/MainActivity;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a499e8906a83e00L
    .end annotation

    const-wide v2, 0x3f2e20c01bee4904L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3f2e20c01bee4904L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/MainActivity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private getListView()Lcom/aide/ui/views/CustomKeysListView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1250ea8c737cc3d8L
    .end annotation

    const-wide v2, 0x14e3aa2f023f8210L    # 4.78522201923632E-208

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14e3aa2f023f8210L    # 4.78522201923632E-208

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/CustomKeysListView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/ErrorBrowser;)Lcom/aide/common/KeyStrokeDetector$a;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    return-object v0
.end method

.method private v5()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4236503d4ecc093L
    .end annotation

    const-wide v4, -0x16f54aeca8502415L    # -9.982000392272918E197

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16f54aeca8502415L    # -9.982000392272918E197

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0a0003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v0, Lcom/aide/ui/browsers/ErrorBrowser$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/aide/ui/browsers/ErrorBrowser$a;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/browsers/d;)V

    iput-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->v5:Lcom/aide/ui/browsers/ErrorBrowser$a;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/aide/ui/browsers/d;

    invoke-direct {v0, p0}, Lcom/aide/ui/browsers/d;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;)V

    invoke-virtual {v1, v0}, Lcom/aide/ui/views/CustomKeysListView;->setOnKeyEventListener(Lcom/aide/ui/views/CustomKeysListView$a;)V

    new-instance v0, Lcom/aide/ui/browsers/e;

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/browsers/e;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Lcom/aide/ui/browsers/f;

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/browsers/f;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0xdaad8fdc5b260d7L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xdaad8fdc5b260d7L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 11

    const-wide v8, -0x4dd8171a6ae99ac5L    # -4.4343101720847573E-67

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4dd8171a6ae99ac5L    # -4.4343101720847573E-67

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->hasFocus()Z

    move-result v5

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->FH()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->Hw:I

    iget v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->Hw:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d065d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700f9

    move-object v3, v0

    move v4, v1

    :goto_0
    const v0, 0x7f080015

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080014

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x7f080016

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ck;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Lcom/aide/ui/browsers/ErrorBrowser$b;

    invoke-direct {v4, p0, v0}, Lcom/aide/ui/browsers/ErrorBrowser$b;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/SyntaxError;

    new-instance v6, Lcom/aide/ui/browsers/ErrorBrowser$b;

    invoke-direct {v6, p0, v0, v1}, Lcom/aide/ui/browsers/ErrorBrowser$b;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Ljava/lang/String;Lcom/aide/engine/SyntaxError;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->Hw:I

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d065f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const v1, 0x7f0700f5

    move-object v3, v0

    move v4, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/aide/ui/browsers/ErrorBrowser;->Hw:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0d065a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->v5:Lcom/aide/ui/browsers/ErrorBrowser$a;

    invoke-virtual {v0, v2}, Lcom/aide/common/x;->j6(Ljava/util/List;)V

    if-eqz v5, :cond_6

    const-string v0, "Focus error browser after refresh"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->j6()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void
.end method

.method public Hw()V
    .registers 5

    const-wide v2, 0x2c6d7df0bae06d4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c6d7df0bae06d4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->FH()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/aide/ui/browsers/ErrorBrowser;->Hw:I

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x1388cbb04fce523bL    # 1.438562570424834E-214

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1388cbb04fce523bL    # 1.438562570424834E-214

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
