.class public Lcom/aide/ui/browsers/SearchBrowser;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/aide/ui/browsers/a;
.implements Labcd/ul$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/browsers/SearchBrowser$a;,
        Lcom/aide/ui/browsers/SearchBrowser$b;
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
        field = 0x2d27c8ea851a8080L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x61ed86d6886fb123L    # 5.313525099372391E163

    const-class v0, Lcom/aide/ui/browsers/SearchBrowser;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, -0x138f4acd83d550fL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x138f4acd83d550fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->VH()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/aide/ui/browsers/SearchBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x34d6ba11261977d8L    # -1.2103446644532394E54

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x34d6ba11261977d8L    # -1.2103446644532394E54

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->VH()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/aide/ui/browsers/SearchBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/browsers/SearchBrowser;)Lcom/aide/ui/MainActivity;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xecae41cd6a70101L
    .end annotation

    const-wide v2, 0x2071d45b67a05001L    # 2.127658131091393E-152

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2071d45b67a05001L    # 2.127658131091393E-152

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

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private getListView()Lcom/aide/ui/views/CustomKeysListView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2046e38fd028b0d1L
    .end annotation

    const-wide v2, -0x84875d8b8a92d35L    # -4.857763522442679E268

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x84875d8b8a92d35L    # -4.857763522442679E268

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/CustomKeysListView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/SearchBrowser;)Lcom/aide/common/KeyStrokeDetector$a;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/browsers/SearchBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    return-object v0
.end method

.method private v5()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1962a7f5490b7760L
    .end annotation

    const-wide v4, 0xaea09d1279e1354L    # 4.33537950897369E-256

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xaea09d1279e1354L    # 4.33537950897369E-256

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

    const v1, 0x7f0a003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0a0003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/ul;->j6(Labcd/ul$a;)V

    invoke-virtual {p0}, Lcom/aide/ui/browsers/SearchBrowser;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x20095abbaadabf3cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20095abbaadabf3cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, 0x4ade32afeb0f3de0L    # 4.519364788782254E52

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4ade32afeb0f3de0L    # 4.519364788782254E52

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/browsers/SearchBrowser;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ul;->FH()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3884f2828d3b4580L    # -2.2474500087155744E36

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ul;->FH()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v5

    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080015

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080014

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080016

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0700ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0d0662

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ul;->j6()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/FindResult;

    if-eqz v1, :cond_4

    iget-object v8, v0, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v3

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/FindResult;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, v0, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    new-instance v3, Lcom/aide/ui/browsers/SearchBrowser$b;

    iget-object v6, v0, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    invoke-direct {v3, p0, v6}, Lcom/aide/ui/browsers/SearchBrowser$b;-><init>(Lcom/aide/ui/browsers/SearchBrowser;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v3, Lcom/aide/ui/browsers/SearchBrowser$b;

    invoke-direct {v3, p0, v0}, Lcom/aide/ui/browsers/SearchBrowser$b;-><init>(Lcom/aide/ui/browsers/SearchBrowser;Lcom/aide/engine/FindResult;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_3

    const-wide v2, -0x3884f2828d3b4580L    # -2.2474500087155744E36

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    iget-object v0, v0, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/aide/ui/browsers/q;

    invoke-direct {v0, p0}, Lcom/aide/ui/browsers/q;-><init>(Lcom/aide/ui/browsers/SearchBrowser;)V

    invoke-virtual {v5, v0}, Lcom/aide/ui/views/CustomKeysListView;->setOnKeyEventListener(Lcom/aide/ui/views/CustomKeysListView$a;)V

    new-instance v0, Lcom/aide/ui/browsers/SearchBrowser$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v7}, Lcom/aide/ui/browsers/SearchBrowser$a;-><init>(Lcom/aide/ui/browsers/SearchBrowser;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/aide/ui/browsers/r;

    invoke-direct {v0, p0, v5}, Lcom/aide/ui/browsers/r;-><init>(Lcom/aide/ui/browsers/SearchBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto :goto_2
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x9744e6c8098f8f0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9744e6c8098f8f0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
