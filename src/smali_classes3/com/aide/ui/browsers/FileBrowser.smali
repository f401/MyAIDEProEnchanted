.class public Lcom/aide/ui/browsers/FileBrowser;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Labcd/mk$a;
.implements Lcom/aide/ui/browsers/a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/browsers/FileBrowser$a;,
        Lcom/aide/ui/browsers/FileBrowser$b;
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
.field private FH:Lcom/aide/ui/Z;
    .annotation runtime Labcd/ru;
        field = 0x1cb5babcc2d21e81L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/Z;
    .annotation runtime Labcd/ru;
        field = -0xefa3cd368b9e928L
    .end annotation
.end field

.field private VH:Lcom/aide/ui/browsers/FileBrowser$a;
    .annotation runtime Labcd/ru;
        field = 0x1bfacbdd4f0b0a50L
    .end annotation
.end field

.field protected Zo:Landroid/view/View;
    .annotation runtime Labcd/ru;
        field = -0x2218036613fff9c7L
    .end annotation
.end field

.field private v5:Lcom/aide/common/KeyStrokeDetector$a;
    .annotation runtime Labcd/ru;
        field = -0x42db5d33d38a3348L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/FileBrowser;

    const-wide v1, 0x4e254192869da105L  # 2.865322281020565E68

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x1ed27cc69376ba1L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const v5, 0x7f0b0004

    invoke-direct {v3, v4, v5}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v3, p0, Lcom/aide/ui/browsers/FileBrowser;->FH:Lcom/aide/ui/Z;

    new-instance v3, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const v5, 0x7f0b0006

    invoke-direct {v3, v4, v5}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v3, p0, Lcom/aide/ui/browsers/FileBrowser;->Hw:Lcom/aide/ui/Z;

    new-instance v3, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->v5()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/aide/ui/browsers/FileBrowser;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->VH()V
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v4, :cond_43

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1d8cb3a206d6a748L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0b0004

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/browsers/FileBrowser;->FH:Lcom/aide/ui/Z;

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/browsers/FileBrowser;->Hw:Lcom/aide/ui/Z;

    new-instance v0, Lcom/aide/ui/M;

    invoke-static {}, Lcom/aide/ui/V;->v5()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/M;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/aide/ui/browsers/FileBrowser;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->VH()V
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x1d8cb3a206d6a748L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/browsers/FileBrowser;)Lcom/aide/ui/MainActivity;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private static DW(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x8b4cb315a5a1c84L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x9c3f420be9e02acL  # -3.449792675516173E261

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "bin"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "obj"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "build"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "gradle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_3a

    if-eqz p0, :cond_36

    goto :goto_38

    :cond_36
    const/4 p0, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p0, 0x1

    :goto_39
    return p0

    :catchall_3a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v4, :cond_42

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v3
.end method

.method static synthetic FH(Lcom/aide/ui/browsers/FileBrowser;)Lcom/aide/ui/views/CustomKeysListView;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object p0

    return-object p0
.end method

.method private FH(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xca4c933a3d66240L
    .end annotation

    const-wide v0, -0x2b26e44348d6c740L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Zk;->XL(Ljava/lang/String;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_3f

    if-eqz v2, :cond_37

    :goto_16
    :try_start_16
    invoke-static {p1}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_34} :catch_36
    .catchall {:try_start_16 .. :try_end_34} :catchall_3f

    move-object p1, v2

    goto :goto_16

    :catch_36
    move-exception v2

    :cond_37
    :try_start_37
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/mk;->j6(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v2

    :goto_49
    goto :goto_48
.end method

.method private VH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xdbb5909836550f0L
    .end annotation

    const-wide v0, -0x1bc093d1fe5e3698L  # -7.771758585117956E174

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

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

    const v3, 0x7f0a001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/mk;->j6(Labcd/mk$a;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/browsers/FileBrowser$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/browsers/FileBrowser$a;-><init>(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/browsers/g;)V

    iput-object v3, p0, Lcom/aide/ui/browsers/FileBrowser;->VH:Lcom/aide/ui/browsers/FileBrowser$a;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/aide/ui/browsers/g;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/browsers/g;-><init>(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v3, Lcom/aide/ui/browsers/h;

    invoke-direct {v3, p0}, Lcom/aide/ui/browsers/h;-><init>(Lcom/aide/ui/browsers/FileBrowser;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/CustomKeysListView;->setOnKeyEventListener(Lcom/aide/ui/views/CustomKeysListView$a;)V

    new-instance v3, Lcom/aide/ui/browsers/i;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/browsers/i;-><init>(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v3, Lcom/aide/ui/browsers/j;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/browsers/j;-><init>(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/views/CustomKeysListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/aide/ui/browsers/FileBrowser;->Zo()V
    :try_end_72
    .catchall {:try_start_5 .. :try_end_72} :catchall_73

    return-void

    :catchall_73
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_7b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7b
    throw v2
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3cbb83f42257e193L
    .end annotation

    const-wide v0, 0xb6b4b48e4fdd86fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

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

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method private getListView()Lcom/aide/ui/views/CustomKeysListView;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xe1cc865be6a7f71L
    .end annotation

    const-wide v0, -0x1d4beb4716ba55bbL  # -2.9603413135233965E167

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800a8

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CustomKeysListView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/FileBrowser;)Lcom/aide/common/KeyStrokeDetector$a;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/browsers/FileBrowser;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    return-object p0
.end method

.method private j6(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb2f4f4bdddae90bL
    .end annotation

    const-wide v0, 0x366e4d12dab8d79L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/FileBrowser;->Hw:Lcom/aide/ui/Z;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method private j6(Landroid/view/View;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6c7a83e5403b90edL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x54bf911c3085b6f9L  # 1.7261146442326416E100

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/browsers/FileBrowser;->FH:Lcom/aide/ui/Z;

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x54bf911c3085b6f9L  # 1.7261146442326416E100

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method private j6(Lcom/aide/ui/browsers/FileBrowser$b;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x26ef308612d11627L
    .end annotation

    const-wide v0, 0x36da2fd0ed9b85cdL  # 1.834774851938137E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_1b

    iget-boolean v2, p1, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-nez v2, :cond_18

    invoke-virtual {p1}, Lcom/aide/ui/browsers/FileBrowser$b;->j6()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_18
    iget-object v2, p1, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/mk;->DW(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/FileBrowser;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/browsers/FileBrowser;->j6(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/browsers/FileBrowser$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/browsers/FileBrowser;->j6(Lcom/aide/ui/browsers/FileBrowser$b;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/FileBrowser;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/browsers/FileBrowser;->FH(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x258c43ebb946f320L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x790834077b36df0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/browsers/l;

    invoke-direct {v2, p0}, Lcom/aide/ui/browsers/l;-><init>(Lcom/aide/ui/browsers/FileBrowser;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method static synthetic j6(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/aide/ui/browsers/FileBrowser;->DW(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x398f5b79eb6d4908L  # 1.932544610624533E-31

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x803738990c3a9efL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/browsers/FileBrowser;->Zo()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x5cf7b50b8e05a5cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/aide/ui/browsers/FileBrowser$b;

    if-eqz v3, :cond_29

    check-cast v2, Lcom/aide/ui/browsers/FileBrowser$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/browsers/FileBrowser;->j6(Lcom/aide/ui/browsers/FileBrowser$b;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/browsers/FileBrowser;->j6(Landroid/view/View;Z)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public Zo()V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Labcd/mk;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v1

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CustomKeysListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CustomKeysListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f07004b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CustomKeysListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :try_start_3b
    const-string v2, "com.aide.ui.browsers.k"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_41} :catch_14b

    invoke-static {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    invoke-virtual {v2, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v7, 0x4

    const-string v8, "com.aide.ui.browsers.FileBrowser$b"

    if-eqz v2, :cond_9a

    :try_start_6a
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6a .. :try_end_6e} :catch_8f

    invoke-static {v9}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p0, v10, v5

    aput-object v2, v10, v6

    const-string v2, ".."

    aput-object v2, v10, v3

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v10, v4

    invoke-virtual {v9, v10}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :catch_8f
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9a
    :goto_9a
    invoke-static {}, Lcom/aide/ui/V;->j6()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a4
    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_119

    :try_start_aa
    invoke-static {v0}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v2, "com.s1243808733.aide.filebrowser.FileBrowserListener"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    const-string v9, "sortList"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object p0, v10, v5

    aput-object v0, v10, v6

    invoke-virtual {v2, v9, v10}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d3

    goto :goto_113

    :cond_d3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_d9
    .catchall {:try_start_aa .. :try_end_d9} :catchall_10f

    :try_start_d9
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_dd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d9 .. :try_end_dd} :catch_104
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_10f

    :try_start_dd
    invoke-static {v9}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v9

    invoke-static {v2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v11

    new-instance v12, Ljava/lang/Boolean;

    invoke-direct {v12, v11}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v11, v7, [Ljava/lang/Object;

    aput-object p0, v11, v5

    aput-object v2, v11, v6

    aput-object v10, v11, v3

    aput-object v12, v11, v4

    invoke-virtual {v9, v11}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    :catch_104
    move-exception v0

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10f
    .catchall {:try_start_dd .. :try_end_10f} :catchall_10f

    :catchall_10f
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :goto_113
    iget-object v0, p0, Lcom/aide/ui/browsers/FileBrowser;->VH:Lcom/aide/ui/browsers/FileBrowser$a;

    invoke-virtual {v0, v1}, Lcom/aide/ui/browsers/FileBrowser$a;->j6(Ljava/util/List;)V

    return-void

    :cond_119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/Jl;

    invoke-interface {v9, v5}, Labcd/Jl;->j6(Z)Z

    move-result v10

    if-eqz v10, :cond_a4

    :try_start_125
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_129
    .catch Ljava/lang/ClassNotFoundException; {:try_start_125 .. :try_end_129} :catch_140

    invoke-static {v10}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object p0, v11, v5

    aput-object v9, v11, v6

    invoke-virtual {v10, v11}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a4

    :catch_140
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_14b
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    goto :goto_157

    :goto_156
    throw v1

    :goto_157
    goto :goto_156
.end method

.method public Zo_()V
    .registers 9

    const-wide v0, -0x1ee9c66c5fc40ef8L  # -4.882224071037607E159

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Labcd/mk;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f080014

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f07004b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Lcom/aide/ui/browsers/k;

    invoke-direct {v4, p0, v3}, Lcom/aide/ui/browsers/k;-><init>(Lcom/aide/ui/browsers/FileBrowser;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_62

    new-instance v6, Lcom/aide/ui/browsers/FileBrowser$b;

    const-string v7, ".."

    invoke-direct {v6, p0, v4, v7, v5}, Lcom/aide/ui/browsers/FileBrowser$b;-><init>(Lcom/aide/ui/browsers/FileBrowser;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    invoke-static {}, Lcom/aide/ui/V;->j6()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6a
    :goto_6a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/Jl;

    invoke-interface {v6, v5}, Labcd/Jl;->j6(Z)Z

    move-result v7

    if-eqz v7, :cond_6a

    new-instance v7, Lcom/aide/ui/browsers/FileBrowser$b;

    invoke-direct {v7, p0, v6}, Lcom/aide/ui/browsers/FileBrowser$b;-><init>(Lcom/aide/ui/browsers/FileBrowser;Labcd/Jl;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catchall {:try_start_5 .. :try_end_84} :catchall_b7

    goto :goto_6a

    :cond_85
    :try_start_85
    invoke-static {v2}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/browsers/FileBrowser;->j6(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_90
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/ui/browsers/FileBrowser$b;

    invoke-static {v4}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v6, p0, v4, v5, v7}, Lcom/aide/ui/browsers/FileBrowser$b;-><init>(Lcom/aide/ui/browsers/FileBrowser;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_ac} :catch_ad
    .catchall {:try_start_85 .. :try_end_ac} :catchall_b7

    goto :goto_90

    :catch_ad
    move-exception v2

    :try_start_ae
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_b1
    iget-object v2, p0, Lcom/aide/ui/browsers/FileBrowser;->VH:Lcom/aide/ui/browsers/FileBrowser$a;

    invoke-virtual {v2, v3}, Lcom/aide/common/x;->j6(Ljava/util/List;)V
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_b7

    return-void

    :catchall_b7
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_bf

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_bf
    goto :goto_c1

    :goto_c0
    throw v2

    :goto_c1
    goto :goto_c0
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x22b14d2399727864L  # -2.924607723481238E141

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/browsers/FileBrowser;->getListView()Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xe6f31e4b1909000L  # 3.742630871794819E-239

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->j3()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/browsers/FileBrowser;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p1, 0x1

    return p1

    :cond_23
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0xe6f31e4b1909000L  # 3.742630871794819E-239

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x90c8eb0626e7f5bL  # -9.7955993564149E264

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->j3()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/browsers/FileBrowser;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/aide/common/KeyStrokeDetector;->DW(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p1, 0x1

    return p1

    :cond_23
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0x90c8eb0626e7f5bL  # -9.7955993564149E264

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0xadf9ca3b164526dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/FileBrowser;->Zo:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/aide/ui/browsers/FileBrowser;->j6(Landroid/view/View;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method
