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
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/ErrorBrowser;

    const-wide v1, -0x319804b2924393adL  # -5.1723520868399924E69

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x2f86e7d2ec8c2e90L  # 9.658998826442708E-80

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->Hw()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/aide/ui/browsers/ErrorBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->v5()V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x10c4b5756935bcf9L  # -6.465156000402902E227

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->Hw()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->v5()V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x10c4b5756935bcf9L  # -6.465156000402902E227

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/browsers/ErrorBrowser;)Lcom/aide/ui/MainActivity;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a499e8906a83e00L
    .end annotation

    const-wide v0, 0x3f2e20c01bee4904L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/MainActivity;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method private getListView()Lcom/aide/ui/views/CustomKeysListView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1250ea8c737cc3d8L
    .end annotation

    const-wide v0, 0x14e3aa2f023f8210L  # 4.78522201923632E-208

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800a0

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CustomKeysListView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/ErrorBrowser;)Lcom/aide/common/KeyStrokeDetector$a;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/browsers/ErrorBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    return-object p0
.end method

.method private v5()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4236503d4ecc093L
    .end annotation

    const-wide v0, -0x16f54aeca8502415L  # -9.982000392272918E197

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v2, Lcom/aide/ui/browsers/ErrorBrowser$a;

    invoke-direct {v2, p0, v4}, Lcom/aide/ui/browsers/ErrorBrowser$a;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/browsers/d;)V

    iput-object v2, p0, Lcom/aide/ui/browsers/ErrorBrowser;->v5:Lcom/aide/ui/browsers/ErrorBrowser$a;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/aide/ui/browsers/d;

    invoke-direct {v2, p0}, Lcom/aide/ui/browsers/d;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;)V

    invoke-virtual {v3, v2}, Lcom/aide/ui/views/CustomKeysListView;->setOnKeyEventListener(Lcom/aide/ui/views/CustomKeysListView$a;)V

    new-instance v2, Lcom/aide/ui/browsers/e;

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/browsers/e;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v2, Lcom/aide/ui/browsers/f;

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/browsers/f;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->FH()V
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_60

    return-void

    :catchall_60
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v3, :cond_68

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_68
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0xdaad8fdc5b260d7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()V
    .registers 10

    const-wide v0, -0x4dd8171a6ae99ac5L  # -4.4343101720847573E-67

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v4

    invoke-virtual {v4}, Labcd/ck;->FH()I

    move-result v4

    iput v4, p0, Lcom/aide/ui/browsers/ErrorBrowser;->Hw:I

    if-nez v4, :cond_33

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d065d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0700f9

    goto :goto_70

    :cond_33
    const/4 v5, 0x1

    if-ne v4, v5, :cond_46

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d065f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6d

    :cond_46
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/aide/ui/browsers/ErrorBrowser;->Hw:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0d065a

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_6d
    const v5, 0x7f0700f5

    :goto_70
    const v6, 0x7f080015

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f080014

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f080016

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v4

    invoke-virtual {v4}, Labcd/ck;->Hw()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v6

    invoke-virtual {v6, v5}, Labcd/ck;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a7

    new-instance v7, Lcom/aide/ui/browsers/ErrorBrowser$b;

    invoke-direct {v7, p0, v5}, Lcom/aide/ui/browsers/ErrorBrowser$b;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_cd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aide/engine/SyntaxError;

    new-instance v8, Lcom/aide/ui/browsers/ErrorBrowser$b;

    invoke-direct {v8, p0, v5, v7}, Lcom/aide/ui/browsers/ErrorBrowser$b;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;Ljava/lang/String;Lcom/aide/engine/SyntaxError;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    :cond_e2
    iget-object v4, p0, Lcom/aide/ui/browsers/ErrorBrowser;->v5:Lcom/aide/ui/browsers/ErrorBrowser$a;

    invoke-virtual {v4, v2}, Lcom/aide/common/x;->j6(Ljava/util/List;)V

    if-eqz v3, :cond_f1

    const-string v2, "Focus error browser after refresh"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->j6()V
    :try_end_f1
    .catchall {:try_start_5 .. :try_end_f1} :catchall_f2

    :cond_f1
    return-void

    :catchall_f2
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v3, :cond_fa

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_fa
    goto :goto_fc

    :goto_fb
    throw v2

    :goto_fc
    goto :goto_fb
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x2c6d7df0bae06d4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->FH()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1f

    iget v3, p0, Lcom/aide/ui/browsers/ErrorBrowser;->Hw:I

    if-eq v3, v2, :cond_1f

    invoke-virtual {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->FH()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x1388cbb04fce523bL  # 1.438562570424834E-214

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/ErrorBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/browsers/ErrorBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
