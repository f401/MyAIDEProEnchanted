.class public Lcom/s1243808733/aide/AideMainActivity;
.super Lcom/aide/ui/MainActivity;
.source "AideMainActivity.java"


# static fields
.field protected static sActivity:Lcom/s1243808733/aide/AideMainActivity;


# instance fields
.field private mDrawOverlaysView:Landroid/view/View;

.field private mDrawer:Landroidj/support/v4/widget/DrawerLayout;

.field private mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

.field private mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

.field private mFabBtnSourceSize:I

.field private mFirstSetActionBarTitle:Z

.field private mIsHandledIntent:Z

.field private mIsTrainerMode:Z

.field private mOptionsMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1476
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mFirstSetActionBarTitle:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    return-void
.end method

.method static synthetic access$1000012(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->initUserFiles()V

    return-void
.end method

.method static synthetic access$1000033(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->setActionBarTitle()V

    return-void
.end method

.method static synthetic access$1000057(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->requestPermission()V

    return-void
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/aide/AideMainActivity;)Landroidj/support/v4/widget/DrawerLayout;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$Lcom$aide$ui$MainActivity$19(Lcom/s1243808733/aide/AideMainActivity;)Lcom/aide/ui/Z;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->rN:Lcom/aide/ui/Z;

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/s1243808733/aide/AideMainActivity;Landroidj/support/v4/widget/DrawerLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    return-void
.end method

.method static synthetic access$Scom$aide$ui$MainActivity$19(Lcom/s1243808733/aide/AideMainActivity;Lcom/aide/ui/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/MainActivity;->rN:Lcom/aide/ui/Z;

    return-void
.end method

.method static addMainToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/SubMenu;",
            ")V"
        }
    .end annotation

    .line 1079
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u56fe\u6807\u4e2d\u5fc3"

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000011;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000011;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1090
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4ee3\u7801\u683c\u5f0f\u5316"

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".java"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000012;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000012;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1115
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u4ee3\u7801\u9ad8\u4eae"

    :goto_3
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000013;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000013;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1126
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u4ee3\u7801\u8f6c\u4e49"

    :goto_4
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 1127
    const-string v1, "Java"

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$100000014;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/AideMainActivity$100000014;-><init>(Landroid/app/Activity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1138
    const-string v1, "XML"

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000015;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000015;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void

    .line 1079
    :cond_0
    const-string v0, "Material Icon"

    goto :goto_0

    .line 1090
    :cond_1
    const-string v0, "Code formatting"

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1115
    :cond_3
    const-string v0, "Color Scheme"

    goto :goto_3

    .line 1126
    :cond_4
    const-string v0, "Code escape"

    goto :goto_4
.end method

.method private adjutLayout()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method private checkAppProjectsNomedExistsAndWrite()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 732
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppProjects()Ljava/io/File;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->checkNomedExistsAndWrite(Ljava/io/File;)V

    return-void
.end method

.method private checkNomedExistsAndWrite(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 759
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static getActivity()Lcom/s1243808733/aide/AideMainActivity;
    .registers 1

    .line 653
    sget-object v0, Lcom/s1243808733/aide/AideMainActivity;->sActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method

.method private handleCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .line 850
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 767
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsHandledIntent:Z

    if-eqz v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsHandledIntent:Z

    .line 770
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_0

    .line 772
    const-string v1, "action.new.project"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 773
    invoke-static {p0}, Lcom/s1243808733/aide/MainListener;->onShowCreateProjectDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 774
    :cond_2
    const-string v1, "action.git"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    new-instance v0, Labcd/Pf;

    invoke-direct {v0}, Labcd/Pf;-><init>()V

    invoke-virtual {v0}, Labcd/Pf;->run()Z

    goto :goto_0
.end method

.method private handleMenuOpened(ILandroid/view/Menu;)Z
    .registers 5

    const/4 v0, 0x0

    .line 895
    if-nez p2, :cond_0

    .line 916
    :goto_0
    return v0

    .line 897
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 900
    const v1, 0x7f0800fd

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 901
    if-eqz v1, :cond_1

    .line 903
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 907
    :cond_1
    const v0, 0x7f0801b7

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SubMenu;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 909
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    .line 910
    invoke-static {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->addMainToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V

    .line 911
    invoke-virtual {p0, p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->addOthorToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V

    .line 915
    :cond_2
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEvent;->onMenuOpened(ILandroid/view/Menu;)V

    .line 916
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method private handlePrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v4, 0x2

    .line 925
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 926
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 927
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 928
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 930
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-nez v0, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->setActionBarTitle()V

    .line 933
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->setMenuCode(Landroid/view/Menu;)V

    .line 936
    :cond_0
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_6

    .line 938
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 944
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 946
    const-string v0, "red"

    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    const v0, 0x7f0800f9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_2

    .line 949
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_2

    .line 951
    const v2, 0x7f0800a2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 952
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 957
    :cond_2
    const v0, 0x7f080104

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 958
    const v2, 0x7f0800f8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 959
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 960
    const-string v3, ".java"

    invoke-static {v3}, Lcom/s1243808733/aide/util/AIDEUtils;->checkEditorFileNameSuffix(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".class"

    invoke-static {v3}, Lcom/s1243808733/aide/util/AIDEUtils;->checkEditorFileNameSuffix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 961
    :cond_3
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 962
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 966
    :cond_4
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-eqz v0, :cond_5

    .line 967
    const v0, 0x7f08010e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 968
    const v2, 0x7f08011d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 969
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 970
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 971
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 975
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 976
    return v1

    .line 940
    :cond_6
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    goto :goto_0
.end method

.method private hasTabView()Z
    .registers 7

    const/4 v1, 0x0

    .line 1043
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1044
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1045
    if-nez v0, :cond_0

    .line 1053
    :goto_0
    return v1

    .line 1049
    :cond_0
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1050
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private hasTabView(Landroid/view/View;)Z
    .registers 7

    .line 1057
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1058
    check-cast v0, Landroid/view/ViewGroup;

    .line 1059
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1067
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollingTabContainerView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    .line 1060
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1061
    const v3, 0x1020002

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1059
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    :cond_3
    invoke-direct {p0, v2}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1063
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private initDrawerToggle()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const v4, 0x104000a

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 619
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 620
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 621
    new-instance v1, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-direct {v1, p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    .line 623
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v2

    .line 624
    if-nez v2, :cond_0

    .line 648
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 626
    new-instance v0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    iget-object v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;II)V

    iput-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    .line 627
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    invoke-virtual {v0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->syncState()V

    .line 628
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    invoke-virtual {v2, v0}, Landroidj/support/v4/widget/DrawerLayout;->addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 630
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 633
    :try_start_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 634
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010431

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 636
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x1010429

    aput v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 641
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 642
    if-eqz v1, :cond_1

    .line 643
    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v2, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 645
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 648
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initUserFiles()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "usr"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/io/File;

    const-string v2, "bin"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    new-instance v2, Ljava/io/File;

    const-string v3, "busybox"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    new-instance v3, Ljava/io/File;

    const-string v4, "applets"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    const-string v1, "usr"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    invoke-static {v0, v5}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    const-string v1, "%s --install -s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 313
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 302
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 303
    invoke-virtual {v0, v5}, Ljava/io/File;->setExecutable(Z)Z

    goto :goto_0
.end method

.method public static inputMethodChangeValid()Z
    .registers 3

    const/4 v0, 0x0

    .line 424
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 425
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isDrawerOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    invoke-static {}, Lcom/s1243808733/aide/AideMainActivity;->getActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.widget.SearchView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestPermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1377
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000028;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000028;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->callback(Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->request()V

    :cond_0
    return-void
.end method

.method private setActionBarTitle()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 983
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v2

    .line 984
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    .line 986
    check-cast v0, Ljava/lang/String;

    .line 987
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 988
    invoke-static {v2}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 989
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1002
    :goto_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5f53\u524d\u9879\u76ee"

    :goto_1
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1004
    check-cast v0, Ljava/lang/CharSequence;

    .line 1005
    check-cast v1, Ljava/lang/CharSequence;

    .line 1007
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1008
    if-nez v2, :cond_6

    move-object v0, v3

    .line 1024
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 1025
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1027
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "hideMainActionBarSubTitle"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    const-string v1, "******"

    .line 1031
    :cond_1
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1033
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mFirstSetActionBarTitle:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1034
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->adjutActionBarTitle(Ljava/lang/String;)V

    .line 1035
    iput-boolean v6, p0, Lcom/s1243808733/aide/AideMainActivity;->mFirstSetActionBarTitle:Z

    :cond_2
    return-void

    .line 991
    :cond_3
    invoke-static {v2}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromProject(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 993
    invoke-static {v2}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 994
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 996
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 1002
    :cond_5
    const-string v0, "Current Project"

    goto :goto_1

    :cond_6
    move-object v1, v2

    move-object v0, v4

    .line 1012
    goto :goto_2

    .line 1015
    :cond_7
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isCurrentEditorIsNull()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1016
    if-nez v2, :cond_8

    move-object v0, v3

    .line 1017
    goto :goto_2

    :cond_8
    move-object v1, v2

    move-object v0, v4

    .line 1020
    goto :goto_2

    :cond_9
    move-object v2, v0

    goto :goto_0
.end method

.method private setNoOpenFileView()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1464
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1465
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1466
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1467
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private showDrawOverlays()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v2, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 572
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 576
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 577
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 578
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 580
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 581
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 586
    :goto_1
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 588
    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 590
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 591
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 592
    int-to-float v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 593
    int-to-float v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 595
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 597
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 599
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 600
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 601
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 602
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 606
    const v2, 0x1030004

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    iput-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawOverlaysView:Landroid/view/View;

    .line 610
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "showDrawOverlays"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 612
    const-string v1, "addView error"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 583
    :cond_1
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1
.end method

.method private showRequestWritePermissionDialog(Landroid/app/Activity;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const v3, 0x104000a

    const v2, 0x1040009

    .line 1325
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u8bf7\u6c42\u6743\u9650"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u8bf7\u6388\u4e88\u8bfb\u5199\u6743\u9650\uff0c\u5426\u5219\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528\u3002\n\n\u53e6\u5916\uff1a\u4f60\u53ef\u4ee5\u5230\u8bbe\u7f6e\u91cc\u6388\u4e88\u5176\u5b83\u6743\u9650\uff0c\u8fd9\u6709\u52a9\u4e8e\u7a33\u5b9a\u540e\u53f0\uff0c\u907f\u514d\u6784\u5efa\u670d\u52a1\u4e0d\u88ab\u7cfb\u7edf\u56de\u6536\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000023;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000023;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000024;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000024;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1349
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1372
    :goto_0
    return-void

    .line 1351
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Request permission"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Please grant storage permission, otherwise it cannot be used normally\n\nIn addition, you can grant other permissions in the settings to help maintain background stability"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000025;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000025;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000026;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000026;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1372
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v2, 0x20

    const/4 v1, 0x2

    const/4 v9, 0x0

    .line 444
    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 446
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 447
    invoke-virtual {v7}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 448
    invoke-virtual {v7, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 451
    :cond_0
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    .line 453
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tab_display_file_icon"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :try_start_0
    invoke-static {v6}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v2

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 458
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    int-to-float v4, v4

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 459
    invoke-virtual {v8, v0}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_1
    :goto_0
    new-instance v0, Lcom/s1243808733/util/ItemText;

    invoke-direct {v0, p1, v6}, Lcom/s1243808733/util/ItemText;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 467
    new-instance v0, Lcom/s1243808733/aide/FileTabListener;

    invoke-direct {v0, p0, v8, p1}, Lcom/s1243808733/aide/FileTabListener;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/ActionBar$Tab;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 468
    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 472
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->jJ()V

    .line 474
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->customTabView(Landroid/app/ActionBar;)V

    return-void

    .line 459
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public DW(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 419
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->DW(Z)V

    return-void
.end method

.method public Qq()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "mTabScrollView"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "mTabLayout"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 324
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000004;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000004;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-static {v0, v1}, Lcom/s1243808733/util/ViewUtil;->findView(Landroid/view/ViewGroup;Lcom/s1243808733/util/Filter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 340
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->openFileTabMenu(Landroid/view/View;)V

    .line 344
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->openFileTabMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected addOthorToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/SubMenu;",
            ")V"
        }
    .end annotation

    .line 1152
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    .line 1153
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5176\u4ed6\u529f\u80fd..."

    :goto_0
    invoke-interface {p2, v0}, Landroid/view/SubMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 1155
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6279\u91cf\u66ff\u6362"

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/AideMainActivity$100000016;

    invoke-direct {v3, p0, v1, p1}, Lcom/s1243808733/aide/AideMainActivity$100000016;-><init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/io/File;Landroid/app/Activity;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1167
    const-string v0, "Json2Bean"

    invoke-interface {v2, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/AideMainActivity$100000017;

    invoke-direct {v3, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$100000017;-><init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1178
    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u8f6c\u6362\u5de5\u7a0b"

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/AideMainActivity$100000018;

    invoke-direct {v3, p0, p1, v1}, Lcom/s1243808733/aide/AideMainActivity$100000018;-><init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;Ljava/io/File;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1191
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u67e5\u770b\u7cfb\u7edf\u8d44\u6e90"

    :goto_3
    invoke-interface {v2, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000019;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$100000019;-><init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1213
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u8df3\u8f6c\u5230\u76ee\u5f55"

    :goto_4
    invoke-interface {v2, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000021;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$100000021;-><init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void

    .line 1153
    :cond_1
    const-string v0, "Other..."

    goto :goto_0

    .line 1155
    :cond_2
    const-string v0, "Batch replacement"

    goto :goto_1

    .line 1179
    :cond_3
    const-string v0, "Conversion project"

    goto :goto_2

    .line 1191
    :cond_4
    const-string v0, "View system resources"

    goto :goto_3

    .line 1213
    :cond_5
    const-string v0, "Goto to dir"

    goto :goto_4
.end method

.method public adjutActionBar()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 513
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "action_bar_container_use_elevation"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 516
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 517
    const-string v2, "action_bar_container"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 519
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 520
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102ce

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 522
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 524
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    const/4 v2, 0x1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 526
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 529
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_0

    .line 522
    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010440
    .end array-data
.end method

.method public adjutActionBarTitle(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 536
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 537
    const-string v2, "action_bar_container"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 539
    const-string v2, "action_bar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 540
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000008;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$100000008;-><init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/s1243808733/util/ViewUtil;->findView(Landroid/view/ViewGroup;Lcom/s1243808733/util/Filter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 554
    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000009;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000009;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 565
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method checkOpenFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1071
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setCurrentFiles(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 673
    invoke-static {}, Lcom/s1243808733/util/Toasty;->cancel()V

    .line 674
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;
    .registers 2

    .line 288
    invoke-static {}, Lcom/s1243808733/aide/api/ApiManager;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v0, 0x1

    .line 859
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    :goto_0
    return v0

    .line 862
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 863
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 864
    iget-boolean v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-nez v2, :cond_1

    .line 865
    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    if-eqz v2, :cond_1

    .line 866
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 872
    :cond_1
    const v2, 0x7f080115

    if-ne v1, v2, :cond_2

    .line 873
    :try_start_0
    const-string v1, "com.s1243808733.aide.application.activity.AidePreferencesActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from_main"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 877
    :cond_2
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isDisableDrag()Z
    .registers 2

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public j6(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 414
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->j6(Z)V

    return-void
.end method

.method public jJ()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 494
    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 816
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_0

    .line 823
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 824
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 825
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 826
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 829
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    div-double/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 830
    const/16 v3, 0x5dc

    if-le v2, v3, :cond_2

    .line 834
    :cond_2
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 835
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v9, 0x0

    const/16 v8, 0x17

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    sput-object p0, Lcom/s1243808733/aide/AideMainActivity;->sActivity:Lcom/s1243808733/aide/AideMainActivity;

    .line 123
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->setMainActivity(Lcom/aide/ui/MainActivity;)V

    .line 124
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->init()V

    .line 126
    :try_start_0
    const-string v0, "com.aide.ui.views.editor.OConsole"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v3, "j6"

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getEditorTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->checkAppProjectsNomedExistsAndWrite()V

    .line 132
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    .line 134
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 135
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOpenFileService()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CurrentFiles_"

    const-string v5, "CurrentFiles"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "CurrentFiles"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    :cond_0
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setElevation(F)V

    .line 148
    iget-boolean v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-eqz v3, :cond_7

    .line 149
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 150
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 159
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 166
    :cond_1
    :goto_2
    invoke-direct {p0, p0}, Lcom/s1243808733/aide/AideMainActivity;->showRequestWritePermissionDialog(Landroid/app/Activity;)V

    .line 169
    :cond_2
    new-instance v0, Lcom/s1243808733/aide/AppUpdater;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/aide/AppUpdater;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0}, Lcom/s1243808733/aide/AppUpdater;->checkUpdate()V

    .line 171
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 172
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-nez v0, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->checkOpenFile()V

    .line 177
    :cond_3
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v3, "er"

    invoke-virtual {v0, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v3, "DW"

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 179
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    .line 181
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroidj/support/v4/widget/DrawerLayout;->setScrimColor(I)V

    .line 183
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    new-instance v3, Lcom/s1243808733/aide/AideMainActivity$100000000;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/AideMainActivity$100000000;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v3}, Landroidj/support/v4/widget/DrawerLayout;->addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 205
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->setNoOpenFileView()V

    .line 206
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "enableMainMasterButton"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setFABVisible(Z)V

    .line 208
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->initDrawerToggle()V

    .line 209
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "enableDrawerToggle"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setDrawerToggleVisible(Z)V

    .line 211
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "split_view_open"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 212
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v7, v1}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 213
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 220
    :cond_4
    :goto_4
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    const-string v2, "SwipeRefreshLayout"

    invoke-static {v0, v2}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;

    .line 221
    if-eqz v0, :cond_5

    .line 222
    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$100000001;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/AideMainActivity$100000001;-><init>(Lcom/s1243808733/aide/AideMainActivity;Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;)V

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;->setOnRefreshListener(Landroidj/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 238
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 240
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->showDrawOverlays()V

    .line 242
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->adjutActionBar()V

    .line 244
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->adjutLayout()V

    .line 246
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "red"

    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 247
    const-string v0, "no_open_file_layout1"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 248
    if-eqz v0, :cond_6

    .line 249
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    const-string v0, "no_open_file_layout2"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_6
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000002;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 265
    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$100000003;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$100000003;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/app/Activity;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 284
    sget-object v0, Lcom/s1243808733/aide/CloudFunction;->INSTANCE:Lcom/s1243808733/aide/CloudFunction;

    invoke-virtual {v0}, Lcom/s1243808733/aide/CloudFunction;->run()V

    return-void

    .line 126
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 152
    :cond_7
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_1

    .line 162
    :cond_8
    invoke-virtual {p0, v2}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 171
    goto/16 :goto_3

    .line 215
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v7, v1}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 216
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, v9}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 845
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 846
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->handleCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 663
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->unregisterSoftInputChangedListener(Landroid/view/Window;)V

    .line 664
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AIDEUtils;->appendOpenFile(Ljava/io/File;I)V

    .line 665
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawOverlaysView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawOverlaysView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 668
    :cond_0
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    .line 782
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 783
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v1

    .line 784
    if-eqz v1, :cond_0

    .line 785
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isDrawerOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    .line 811
    :goto_0
    return v0

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f080113

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 792
    if-eqz v1, :cond_1

    .line 793
    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f080101

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_3

    .line 801
    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 802
    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0

    .line 807
    :cond_2
    const/16 v1, 0x52

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_3

    .line 808
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->toggleSplit()V

    goto :goto_0

    .line 811
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/aide/ui/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 891
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/AideMainActivity;->handleMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 855
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->handleOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 921
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->handlePrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 680
    :try_start_0
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 682
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 683
    const-string v1, "onResume Exception"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.List.iterator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u627e\u4e0d\u5230\u5f53\u524d\u5de5\u7a0b\uff0c\u53ef\u80fd\u5df2\u88ab\u5220\u9664\u3002"

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Utils;->showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->closeProjects()V

    goto :goto_0

    .line 686
    :cond_1
    const-string v1, "The current project cannot be found and may have been deleted."

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 699
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/aide/ui/MainActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :cond_0
    :goto_0
    const-string v0, "project_home"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->checkAppProjectsNomedExistsAndWrite()V

    :cond_1
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 701
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 702
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 703
    instance-of v0, v0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_0

    .line 704
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v0, "\u51fa\u4e86\u70b9\u95ee\u9898"

    const-string v2, "Fatal error"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v0, "\u8bf7\u91cd\u65b0\u542f\u52a8"

    const-string v2, "Please restart"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$100000010;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/AideMainActivity$100000010;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onStart()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 500
    :try_start_0
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->onStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 502
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onStop()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 658
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->onStop()V

    return-void
.end method

.method public openFileTabMenu(Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const v6, 0x7f0b0005

    const v5, 0x7f08008e

    const v4, 0x7f080086

    .line 348
    if-nez p1, :cond_0

    .line 349
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 353
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 355
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-interface {v1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 363
    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    const v2, 0x7f0d005d

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/AideMainActivity$100000005;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/AideMainActivity$100000005;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    const v2, 0x7f0d072c

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$100000006;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/AideMainActivity$100000006;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 397
    :cond_3
    :goto_0
    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$100000007;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$100000007;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 407
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 393
    :cond_4
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public setDrawerToggleVisible(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1474
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1475
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public setEditorBackground()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 737
    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 739
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "advanced_setting_editor_bg"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 741
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 742
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v1

    .line 748
    :goto_0
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 749
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 755
    :goto_1
    return-void

    .line 746
    :cond_0
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 750
    :catch_0
    move-exception v1

    .line 753
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 755
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    new-instance v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v2}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    iget-object v2, v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;->BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setFABVisible(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1300
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    .line 1304
    :cond_0
    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1305
    if-nez v0, :cond_1

    .line 1321
    :goto_0
    return-void

    .line 1306
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1307
    iget v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    if-gtz v3, :cond_2

    .line 1308
    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->getMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    .line 1310
    :cond_2
    iget v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    if-gtz v3, :cond_3

    .line 1311
    const/16 v3, 0x32

    int-to-float v3, v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    iput v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    .line 1313
    :cond_3
    if-eqz p1, :cond_4

    .line 1314
    iget v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1315
    iget v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1321
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1317
    :cond_4
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1318
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method public setFileTabVisible()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1447
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFileTabVisible(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1451
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1454
    if-eqz p1, :cond_1

    .line 1455
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1458
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_0
.end method

.method setMenuCode(Landroid/view/Menu;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1246
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v2

    .line 1247
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableMenuCode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const-string v1, ".class"

    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->checkEditorFileNameSuffix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1249
    check-cast v0, Ljava/io/InputStream;

    .line 1253
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "menucode_file"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1260
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1261
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "menucode/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1263
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1264
    const-string v1, "menu_code_zh.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1268
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getSdDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1269
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1270
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1278
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$100000022;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/AideMainActivity$100000022;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/aide/util/MenuCode;->add(Landroid/view/Menu;Ljava/io/InputStream;Ljava/lang/String;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)[Lcom/s1243808733/aide/util/MenuCode;

    :cond_2
    :goto_3
    return-void

    .line 1266
    :cond_3
    const-string v1, "menu_code.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1278
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1272
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1274
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 1278
    :catchall_0
    move-exception v0

    throw v0

    .line 1255
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public superOnOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 882
    :try_start_0
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 886
    :goto_0
    return v0

    .line 882
    :catch_0
    move-exception v0

    .line 884
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 886
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public superRebuildItemSelected()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f08010d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
