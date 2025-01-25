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
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/SearchBrowser;

    const-wide v1, 0x61ed86d6886fb123L  # 5.313525099372391E163

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x138f4acd83d550fL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->VH()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/aide/ui/browsers/SearchBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->v5()V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x34d6ba11261977d8L  # -1.2103446644532394E54

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->VH()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/aide/ui/browsers/SearchBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->v5()V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x34d6ba11261977d8L  # -1.2103446644532394E54

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/browsers/SearchBrowser;)Lcom/aide/ui/MainActivity;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xecae41cd6a70101L
    .end annotation

    const-wide v0, 0x2071d45b67a05001L  # 2.127658131091393E-152

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

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

    sget-boolean v3, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method private getListView()Lcom/aide/ui/views/CustomKeysListView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2046e38fd028b0d1L
    .end annotation

    const-wide v0, -0x84875d8b8a92d35L  # -4.857763522442679E268

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f080150

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CustomKeysListView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/SearchBrowser;)Lcom/aide/common/KeyStrokeDetector$a;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/browsers/SearchBrowser;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    return-object p0
.end method

.method private v5()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1962a7f5490b7760L
    .end annotation

    const-wide v0, 0xaea09d1279e1354L  # 4.33537950897369E-256

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

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

    const v3, 0x7f0a003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/ul;->j6(Labcd/ul$a;)V

    invoke-virtual {p0}, Lcom/aide/ui/browsers/SearchBrowser;->Hw()V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x20095abbaadabf3cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x4ade32afeb0f3de0L  # 4.519364788782254E52

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/browsers/SearchBrowser;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ul;->FH()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Hw()V
    .registers 12

    const-wide v0, -0x3884f2828d3b4580L  # -2.2474500087155744E36

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ul;->FH()Z

    move-result v2

    const v3, 0x7f080152

    const v4, 0x7f080151

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v2, :cond_2f

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e4

    :cond_2f
    invoke-direct {p0}, Lcom/aide/ui/browsers/SearchBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v2

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080014

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v7, 0x7f080016

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v5, 0x7f0700ff

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0d0662

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v3

    invoke-virtual {v3}, Labcd/ul;->j6()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    move-object v8, v7

    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/aide/engine/FindResult;

    if-eqz v8, :cond_96

    iget-object v10, v9, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_96

    const/4 v6, 0x1

    goto :goto_99

    :cond_96
    iget-object v8, v9, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    goto :goto_7e

    :cond_99
    :goto_99
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/engine/FindResult;

    if-eqz v6, :cond_bf

    iget-object v8, v5, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_bf

    iget-object v7, v5, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    new-instance v8, Lcom/aide/ui/browsers/SearchBrowser$b;

    iget-object v9, v5, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    invoke-direct {v8, p0, v9}, Lcom/aide/ui/browsers/SearchBrowser$b;-><init>(Lcom/aide/ui/browsers/SearchBrowser;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bf
    new-instance v8, Lcom/aide/ui/browsers/SearchBrowser$b;

    invoke-direct {v8, p0, v5}, Lcom/aide/ui/browsers/SearchBrowser$b;-><init>(Lcom/aide/ui/browsers/SearchBrowser;Lcom/aide/engine/FindResult;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    :cond_c8
    new-instance v3, Lcom/aide/ui/browsers/q;

    invoke-direct {v3, p0}, Lcom/aide/ui/browsers/q;-><init>(Lcom/aide/ui/browsers/SearchBrowser;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/CustomKeysListView;->setOnKeyEventListener(Lcom/aide/ui/views/CustomKeysListView$a;)V

    new-instance v3, Lcom/aide/ui/browsers/SearchBrowser$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5, v4}, Lcom/aide/ui/browsers/SearchBrowser$a;-><init>(Lcom/aide/ui/browsers/SearchBrowser;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/aide/ui/browsers/r;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/browsers/r;-><init>(Lcom/aide/ui/browsers/SearchBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_e4
    .catchall {:try_start_5 .. :try_end_e4} :catchall_e5

    :goto_e4
    return-void

    :catchall_e5
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v3, :cond_ed

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_ed
    goto :goto_ef

    :goto_ee
    throw v2

    :goto_ef
    goto :goto_ee
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x9744e6c8098f8f0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/SearchBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/SearchBrowser;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method
