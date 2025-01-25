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
.method static bridge synthetic -$$Nest$fgetmDrawer(Lcom/s1243808733/aide/AideMainActivity;)Landroidj/support/v4/widget/DrawerLayout;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitUserFiles(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->initUserFiles()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestPermission(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->requestPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetActionBarTitle(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->setActionBarTitle()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;-><init>()V

    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mFirstSetActionBarTitle:Z

    .line 1299
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/s1243808733/aide/AideMainActivity;)Lcom/aide/ui/Z;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/s1243808733/aide/AideMainActivity;->rN:Lcom/aide/ui/Z;

    return-object p0
.end method

.method static addMainToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
    .registers 5

    .line 1081
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "图标中心"

    goto :goto_b

    :cond_9
    const-string v0, "Material Icon"

    :goto_b
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$12;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$12;-><init>(Landroid/app/Activity;)V

    .line 1082
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1092
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "代码格式化"

    goto :goto_22

    :cond_20
    const-string v0, "Code formatting"

    :goto_22
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1093
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$13;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$13;-><init>(Landroid/app/Activity;)V

    .line 1094
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1117
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "代码高亮"

    goto :goto_53

    :cond_51
    const-string v0, "Color Scheme"

    :goto_53
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$14;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$14;-><init>(Landroid/app/Activity;)V

    .line 1118
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1128
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "代码转义"

    goto :goto_6a

    :cond_68
    const-string v0, "Code escape"

    :goto_6a
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    .line 1129
    nop

    .line 1130
    const-string v0, "Java"

    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$15;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$15;-><init>(Landroid/app/Activity;)V

    .line 1131
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1140
    nop

    .line 1141
    const-string v0, "XML"

    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$16;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$16;-><init>(Landroid/app/Activity;)V

    .line 1142
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private adjutLayout()V
    .registers 1

    return-void
.end method

.method private checkAppProjectsNomedExistsAndWrite()V
    .registers 4

    .line 733
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

    .line 760
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    .line 761
    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    :cond_b
    return-void
.end method

.method public static getActivity()Lcom/s1243808733/aide/AideMainActivity;
    .registers 1

    .line 654
    sget-object v0, Lcom/s1243808733/aide/AideMainActivity;->sActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method

.method private handleCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    .line 851
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 3

    .line 768
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsHandledIntent:Z

    if-eqz v0, :cond_5

    return-void

    .line 770
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsHandledIntent:Z

    .line 771
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 773
    const-string v0, "action.new.project"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 774
    invoke-static {p0}, Lcom/s1243808733/aide/MainListener;->onShowCreateProjectDialog(Landroid/app/Activity;)V

    goto :goto_2a

    .line 775
    :cond_1a
    const-string v0, "action.git"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 776
    new-instance p1, Labcd/Pf;

    invoke-direct {p1}, Labcd/Pf;-><init>()V

    invoke-virtual {p1}, Labcd/Pf;->run()Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method private handleMenuOpened(ILandroid/view/Menu;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_31

    .line 901
    const v1, 0x7f0800fd

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 904
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 908
    :cond_14
    const v0, 0x7f0801b7

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 909
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SubMenu;->size()I

    move-result v1

    if-nez v1, :cond_31

    .line 910
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    .line 911
    invoke-static {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->addMainToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V

    .line 912
    invoke-virtual {p0, p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->addOthorToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V

    .line 916
    :cond_31
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEvent;->onMenuOpened(ILandroid/view/Menu;)V

    .line 917
    invoke-super {p0, p1, p2}, Lcom/aide/ui/MainActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method private handlePrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7

    .line 926
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 927
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 928
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 929
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 931
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-nez v0, :cond_17

    .line 932
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->setActionBarTitle()V

    .line 934
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->setMenuCode(Landroid/view/Menu;)V

    .line 937
    :cond_17
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 938
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_28

    .line 939
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    goto :goto_2b

    .line 941
    :cond_28
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 945
    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 948
    const-string v1, "red"

    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 949
    const v1, 0x7f0800f9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 951
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 953
    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 954
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 959
    :cond_57
    const v1, 0x7f080104

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 960
    const v2, 0x7f0800f8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v1, :cond_80

    if-eqz v2, :cond_80

    .line 962
    const-string v4, ".java"

    invoke-static {v4}, Lcom/s1243808733/aide/util/AIDEUtils;->checkEditorFileNameSuffix(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, ".class"

    invoke-static {v4}, Lcom/s1243808733/aide/util/AIDEUtils;->checkEditorFileNameSuffix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 963
    :cond_7a
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 964
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 968
    :cond_80
    iget-boolean v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-eqz v1, :cond_9c

    .line 969
    const v1, 0x7f08010e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 970
    const v2, 0x7f08011d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v1, :cond_9c

    if-eqz v2, :cond_9c

    .line 972
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 973
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 977
    :cond_9c
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return v0
.end method

.method private hasTabView()Z
    .registers 7

    .line 1045
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1046
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1e

    return v0

    .line 1051
    :cond_1e
    invoke-direct {p0, v1}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView(Landroid/view/View;)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    xor-int/lit8 v0, v0, 0x1

    goto :goto_26

    :catchall_25
    move-exception v1

    :goto_26
    return v0
.end method

.method private hasTabView(Landroid/view/View;)Z
    .registers 7

    .line 1059
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 1060
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 1061
    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1062
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1063
    const v3, 0x1020002

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1c

    goto :goto_24

    .line 1064
    :cond_1c
    invoke-direct {p0, v2}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1069
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScrollingTabContainerView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private initDrawerToggle()V
    .registers 10

    .line 620
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 621
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 622
    new-instance v2, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-direct {v2, p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    .line 624
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v2

    if-nez v2, :cond_16

    return-void

    .line 626
    :cond_16
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 627
    new-instance v0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    iget-object v6, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const v7, 0x104000a

    const v8, 0x104000a

    move-object v3, v0

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;II)V

    iput-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    .line 628
    invoke-virtual {v0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->syncState()V

    .line 629
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    invoke-virtual {v2, v0}, Landroidj/support/v4/widget/DrawerLayout;->addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 631
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 634
    const/4 v0, 0x0

    :try_start_3a
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 635
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010431

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 637
    nop

    .line 641
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    const v4, 0x1010429

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 642
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v3, :cond_66

    .line 644
    iget-object v4, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v4, v3}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 646
    :cond_66
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_6a

    goto :goto_72

    :catchall_6a
    move-exception v2

    .line 649
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :goto_72
    return-void
.end method

.method private initUserFiles()V
    .registers 7

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "usr"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/io/File;

    const-string v3, "bin"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    new-instance v3, Ljava/io/File;

    const-string v4, "busybox"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    new-instance v4, Ljava/io/File;

    const-string v5, "applets"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 304
    invoke-virtual {v2, v1}, Ljava/io/File;->setExecutable(Z)Z

    goto :goto_36

    .line 308
    :cond_46
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 309
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "%s --install -s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 314
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :cond_82
    return-void
.end method

.method public static inputMethodChangeValid()Z
    .registers 3

    .line 425
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 426
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 431
    :cond_e
    invoke-static {}, Lcom/s1243808733/aide/AideMainActivity;->getActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.widget.SearchView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v1

    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method private requestPermission()V
    .registers 5

    .line 1379
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1380
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$27;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$27;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 1381
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->callback(Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    .line 1444
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->request()V

    :cond_22
    return-void
.end method

.method private setActionBarTitle()V
    .registers 6

    .line 985
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    .line 986
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    .line 989
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 990
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 991
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 993
    :cond_1c
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromProject(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 994
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 995
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 996
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 998
    :cond_35
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_3a
    move-object v0, v3

    goto :goto_3d

    :cond_3c
    move-object v0, v2

    .line 1004
    :goto_3d
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_46

    const-string v3, "当前项目"

    goto :goto_48

    :cond_46
    const-string v3, "Current Project"

    :goto_48
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1009
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView()Z

    move-result v3

    if-eqz v3, :cond_56

    if-nez v0, :cond_5f

    goto :goto_63

    .line 1017
    :cond_56
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isCurrentEditorIsNull()Z

    move-result v3

    if-eqz v3, :cond_62

    if-nez v0, :cond_5f

    goto :goto_63

    :cond_5f
    move-object v2, v0

    move-object v1, v4

    goto :goto_63

    :cond_62
    move-object v1, v2

    .line 1026
    :goto_63
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1027
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz v2, :cond_7b

    .line 1029
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "hideMainActionBarSubTitle"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1030
    const-string v2, "******"

    .line 1033
    :cond_7b
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1035
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mFirstSetActionBarTitle:Z

    if-eqz v0, :cond_8d

    if-eqz v2, :cond_8d

    .line 1036
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->adjutActionBarTitle(Ljava/lang/String;)V

    .line 1037
    iput-boolean v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mFirstSetActionBarTitle:Z

    :cond_8d
    return-void
.end method

.method private setNoOpenFileView()V
    .registers 3

    .line 1466
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1467
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1468
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1469
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f19999a  # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1e
    return-void
.end method

.method private showDrawOverlays()V
    .registers 6

    .line 573
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 577
    :cond_d
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 578
    const/16 v1, 0xa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 579
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 581
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_23

    .line 582
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_27

    .line 584
    :cond_23
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 587
    :goto_27
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 589
    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 591
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 592
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 593
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 594
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 596
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 598
    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 600
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 602
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 603
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 607
    const v3, 0x1030004

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 609
    const/4 v3, 0x1

    :try_start_56
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iput-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawOverlaysView:Landroid/view/View;

    .line 611
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "showDrawOverlays"

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_56 .. :try_end_6f} :catchall_70

    goto :goto_7a

    :catchall_70
    move-exception v0

    .line 613
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "addView error"

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7a
    return-void
.end method

.method private showRequestWritePermissionDialog(Landroid/app/Activity;)V
    .registers 5

    .line 1327
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    const v1, 0x1040009

    const v2, 0x104000a

    if-eqz v0, :cond_37

    .line 1328
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1330
    const-string p1, "请求权限"

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1331
    const-string v0, "请授予读写权限，否则无法正常使用。\n\n另外：你可以到设置里授予其它权限，这有助于稳定后台，避免构建服务不被系统回收。"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$24;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$24;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 1332
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$23;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$23;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 1341
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1350
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1351
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_61

    .line 1353
    :cond_37
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1355
    const-string p1, "Request permission"

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1356
    const-string v0, "Please grant storage permission, otherwise it cannot be used normally\n\nIn addition, you can grant other permissions in the settings to help maintain background stability"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$26;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$26;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 1357
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$25;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$25;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 1366
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1373
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1374
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_61
    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 14

    .line 445
    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    .line 449
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 452
    :cond_12
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 454
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "tab_display_file_icon"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 456
    :try_start_23
    invoke-static {v0}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/AideMainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 457
    invoke-static {v3}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/high16 v4, 0x42000000  # 32.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v6

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-static {v3, v6, v4}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 459
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v4, 0x40a00000  # 5.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v10

    const/4 v11, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 460
    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    :try_end_53
    .catchall {:try_start_23 .. :try_end_53} :catchall_54

    goto :goto_55

    .line 475
    :catchall_54
    move-exception v3

    .line 466
    :cond_55
    :goto_55
    new-instance v3, Lcom/s1243808733/util/ItemText;

    invoke-direct {v3, p1, v0}, Lcom/s1243808733/util/ItemText;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 468
    new-instance v0, Lcom/s1243808733/aide/FileTabListener;

    invoke-direct {v0, p0, v2, p1}, Lcom/s1243808733/aide/FileTabListener;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/ActionBar$Tab;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 469
    invoke-virtual {v1, v2, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 473
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->jJ()V

    .line 475
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/application/AppTheme;->customTabView(Landroid/app/ActionBar;)V

    return-void
.end method

.method public DW(Z)V
    .registers 2

    .line 420
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->DW(Z)V

    return-void
.end method

.method public Qq()V
    .registers 3

    .line 321
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "mTabScrollView"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 323
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "mTabLayout"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 325
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$5;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$5;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 326
    invoke-static {v0, v1}, Lcom/s1243808733/util/ViewUtil;->findView(Landroid/view/ViewGroup;Lcom/s1243808733/util/Filter;)Landroid/view/View;

    move-result-object v0

    .line 341
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->openFileTabMenu(Landroid/view/View;)V

    return-void

    .line 345
    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->openFileTabMenu(Landroid/view/View;)V

    return-void
.end method

.method protected addOthorToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
    .registers 6

    .line 1154
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    .line 1155
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "其他功能..."

    goto :goto_f

    :cond_d
    const-string v1, "Other..."

    :goto_f
    invoke-interface {p2, v1}, Landroid/view/SubMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p2

    .line 1157
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "批量替换"

    goto :goto_1e

    :cond_1c
    const-string v1, "Batch replacement"

    :goto_1e
    invoke-interface {p2, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$17;

    invoke-direct {v2, p0, v0, p1}, Lcom/s1243808733/aide/AideMainActivity$17;-><init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/io/File;Landroid/app/Activity;)V

    .line 1158
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1169
    const-string v1, "Json2Bean"

    invoke-interface {p2, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$18;

    invoke-direct {v2, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$18;-><init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V

    .line 1170
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1180
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1181
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "转换工程"

    goto :goto_49

    :cond_47
    const-string v1, "Conversion project"

    :goto_49
    invoke-interface {p2, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$19;

    invoke-direct {v2, p0, p1, v0}, Lcom/s1243808733/aide/AideMainActivity$19;-><init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;Ljava/io/File;)V

    .line 1182
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1193
    :cond_55
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "查看系统资源"

    goto :goto_60

    :cond_5e
    const-string v0, "View system resources"

    :goto_60
    invoke-interface {p2, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$20;-><init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V

    .line 1194
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1215
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "跳转到目录"

    goto :goto_77

    :cond_75
    const-string v0, "Goto to dir"

    :goto_77
    invoke-interface {p2, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$21;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$21;-><init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V

    .line 1216
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public adjutActionBar()V
    .registers 8

    .line 514
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "action_bar_container_use_elevation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 516
    const/4 v0, 0x1

    :try_start_e
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 517
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 518
    const-string v4, "action_bar_container"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 520
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 521
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10102ce

    invoke-virtual {v4, v5, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 523
    nop

    .line 524
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    const v5, 0x10100d4

    const v6, 0x1010440

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 525
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    const/high16 v4, 0x40800000  # 4.0f

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setElevation(F)V

    .line 527
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5f
    .catchall {:try_start_e .. :try_end_5f} :catchall_60

    goto :goto_68

    :catchall_60
    move-exception v1

    .line 530
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public adjutActionBarTitle(Ljava/lang/String;)V
    .registers 7

    .line 536
    const-string v0, "android"

    const-string v1, "id"

    :try_start_4
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 537
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 538
    const-string v4, "action_bar_container"

    invoke-virtual {v2, v4, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 540
    const-string v4, "action_bar"

    invoke-virtual {v2, v4, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 541
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$9;-><init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/s1243808733/util/ViewUtil;->findView(Landroid/view/ViewGroup;Lcom/s1243808733/util/Filter;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 555
    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$10;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$10;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_3a

    goto :goto_44

    :catchall_3a
    move-exception p1

    .line 566
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :goto_44
    return-void
.end method

.method checkOpenFile()V
    .registers 4

    .line 1073
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1074
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1075
    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setCurrentFiles(Ljava/util/List;)V

    :cond_17
    return-void
.end method

.method public finish()V
    .registers 1

    .line 674
    invoke-static {}, Lcom/s1243808733/util/Toasty;->cancel()V

    .line 675
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->finish()V

    return-void
.end method

.method public getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;
    .registers 2

    .line 289
    invoke-static {}, Lcom/s1243808733/aide/api/ApiManager;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 860
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 863
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_21

    .line 865
    iget-boolean v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-nez v2, :cond_21

    .line 866
    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    if-eqz v2, :cond_21

    .line 867
    invoke-virtual {v2, p1}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return v1

    :cond_21
    const v2, 0x7f080115

    if-ne v0, v2, :cond_37

    .line 874
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from_main"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    .line 878
    :cond_37
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected isDisableDrag()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6(Z)V
    .registers 2

    .line 415
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->j6(Z)V

    return-void
.end method

.method public jJ()V
    .registers 1

    .line 495
    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 817
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 821
    :try_start_3
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_44

    .line 822
    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 824
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v2, :cond_27

    .line 825
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 826
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 827
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_44

    .line 829
    :cond_27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 830
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_43

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L  # 1.2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 835
    :try_start_3d
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 836
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    goto :goto_44

    :catchall_43
    move-exception p1

    :cond_44
    :goto_44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    .line 124
    sput-object p0, Lcom/s1243808733/aide/AideMainActivity;->sActivity:Lcom/s1243808733/aide/AideMainActivity;

    .line 125
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->setMainActivity(Lcom/aide/ui/MainActivity;)V

    .line 126
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->init()V

    .line 128
    :try_start_8
    const-class v0, Lcom/aide/ui/views/editor/OConsole;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "j6"

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getEditorTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    goto :goto_19

    :catchall_18
    move-exception v0

    .line 132
    :goto_19
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->checkAppProjectsNomedExistsAndWrite()V

    .line 134
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    .line 136
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 137
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v2, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_63

    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 140
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOpenFileService()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "CurrentFiles_"

    const-string v7, "CurrentFiles"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    :cond_63
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 148
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setElevation(F)V

    .line 150
    iget-boolean v6, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-eqz v6, :cond_79

    .line 151
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 152
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_7f

    .line 154
    :cond_79
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 155
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 158
    :goto_7f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_aa

    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 159
    invoke-static {v4}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a7

    .line 161
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 162
    invoke-virtual {p0, v4}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    goto :goto_a7

    .line 164
    :cond_a4
    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 168
    :cond_a7
    :goto_a7
    invoke-direct {p0, p0}, Lcom/s1243808733/aide/AideMainActivity;->showRequestWritePermissionDialog(Landroid/app/Activity;)V

    .line 172
    :cond_aa
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v0, 0x0

    :goto_b3
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 173
    iget-boolean v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mIsTrainerMode:Z

    if-nez v0, :cond_bd

    .line 174
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->checkOpenFile()V

    .line 178
    :cond_bd
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "er"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "DW"

    invoke-virtual {v0, v2, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 180
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_12f

    .line 183
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->setScrimColor(I)V

    .line 184
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$1;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 206
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->setNoOpenFileView()V

    .line 207
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableMainMasterButton"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setFABVisible(Z)V

    .line 209
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->initDrawerToggle()V

    .line 210
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableDrawerToggle"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setDrawerToggleVisible(Z)V

    .line 212
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "split_view_open"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_125

    .line 213
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1, v4}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 214
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    goto :goto_12f

    .line 216
    :cond_125
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1, v4}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 217
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, v5}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 221
    :cond_12f
    :goto_12f
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    const-string v1, "SwipeRefreshLayout"

    invoke-static {v0, v1}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_145

    .line 223
    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/aide/AideMainActivity$2;-><init>(Lcom/s1243808733/aide/AideMainActivity;Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;->setOnRefreshListener(Landroidj/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 239
    :cond_145
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 241
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->showDrawOverlays()V

    .line 243
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->adjutActionBar()V

    .line 245
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->adjutLayout()V

    .line 247
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v0

    if-nez v0, :cond_17d

    const-string v0, "red"

    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 248
    sget v0, Laidepro/top/R$id;->no_open_file_layout1:I

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17d

    .line 250
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    sget v0, Laidepro/top/R$id;->no_open_file_layout2:I

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_17d
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$3;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 256
    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 266
    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$4;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$4;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/app/Activity;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    .line 284
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .line 846
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 847
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->handleCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .registers 3

    .line 664
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->unregisterSoftInputChangedListener(Landroid/view/Window;)V

    .line 665
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AIDEUtils;->appendOpenFile(Ljava/io/File;I)V

    .line 666
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawOverlaysView:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 667
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawOverlaysView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 669
    :cond_1c
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_45

    .line 783
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_45

    .line 784
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 786
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 787
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    return v1

    .line 792
    :cond_1b
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f080113

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 794
    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 795
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    return v1

    .line 800
    :cond_30
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f080101

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 802
    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 803
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    return v1

    :cond_45
    const/16 v0, 0x52

    if-ne p1, v0, :cond_57

    .line 808
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mDrawer:Landroidj/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_57

    .line 809
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->toggleSplit()V

    return v1

    .line 812
    :cond_57
    invoke-super {p0, p1, p2}, Lcom/aide/ui/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    .line 892
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/AideMainActivity;->handleMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    .line 856
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->handleOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    .line 922
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->handlePrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 4

    .line 681
    :try_start_0
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->onResume()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_31

    :catchall_4
    move-exception v0

    .line 683
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 684
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "onResume Exception"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.List.iterator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 687
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "找不到当前工程，可能已被删除。"

    goto :goto_2a

    :cond_28
    const-string v0, "The current project cannot be found and may have been deleted."

    :goto_2a
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/s1243808733/util/Utils;->showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->closeProjects()V

    :cond_31
    :goto_31
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    .line 700
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/aide/ui/MainActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_54

    :catchall_4
    move-exception p1

    .line 702
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 703
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 704
    instance-of p1, p1, Ljava/lang/NullPointerException;

    if-eqz p1, :cond_54

    .line 705
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 707
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 708
    const-string v0, "出了点问题"

    const-string v1, "Fatal error"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 709
    const-string v0, "请重新启动"

    const-string v1, "Please restart"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/AideMainActivity$11;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AideMainActivity$11;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 710
    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 719
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 720
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 721
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 727
    :cond_54
    :goto_54
    const-string p1, "project_home"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 728
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->checkAppProjectsNomedExistsAndWrite()V

    :cond_5f
    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 501
    :try_start_0
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->onStart()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_e

    :catchall_4
    move-exception v0

    .line 503
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :goto_e
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 659
    invoke-super {p0}, Lcom/aide/ui/MainActivity;->onStop()V

    return-void
.end method

.method public openFileTabMenu(Landroid/view/View;)V
    .registers 8

    if-nez p1, :cond_10

    .line 350
    const p1, 0x7f0800ee

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 354
    :cond_10
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 356
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 359
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f08008e

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    const v3, 0x7f080086

    const v4, 0x7f0b0005

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 360
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_43

    .line 394
    :cond_3b
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_87

    .line 362
    :cond_43
    :goto_43
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v5, 0x7f0d0007

    invoke-interface {p1, v5}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 364
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 365
    const v1, 0x7f0d005d

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$6;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/AideMainActivity$6;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 366
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 378
    :cond_6c
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 380
    const v1, 0x7f0d072c

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$7;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/AideMainActivity$7;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 381
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 398
    :cond_87
    :goto_87
    new-instance p1, Lcom/s1243808733/aide/AideMainActivity$8;

    invoke-direct {p1, p0}, Lcom/s1243808733/aide/AideMainActivity$8;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 408
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public setDrawerToggleVisible(Z)V
    .registers 3

    .line 1476
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1477
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public setEditorBackground()V
    .registers 6

    .line 738
    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 740
    :try_start_9
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "advanced_setting_editor_bg"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 742
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 744
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 745
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v1

    goto :goto_37

    .line 747
    :cond_33
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 749
    :goto_37
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 750
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v1

    .line 754
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 756
    :cond_4a
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    new-instance v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v2}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    iget-object v2, v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;->BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFABVisible(Z)V
    .registers 6

    .line 1302
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    .line 1306
    :cond_16
    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    .line 1308
    :cond_20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1309
    iget v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    if-gtz v3, :cond_2e

    .line 1310
    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->getMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    .line 1312
    :cond_2e
    iget v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    if-gtz v3, :cond_3a

    .line 1313
    const/high16 v3, 0x42480000  # 50.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    iput v3, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    :cond_3a
    if-eqz p1, :cond_45

    .line 1316
    iget p1, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1317
    iget p1, p0, Lcom/s1243808733/aide/AideMainActivity;->mFabBtnSourceSize:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_49

    .line 1319
    :cond_45
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1320
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1323
    :goto_49
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setFileTabVisible()V
    .registers 2

    .line 1449
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    return-void
.end method

.method public setFileTabVisible(Z)V
    .registers 3

    .line 1453
    invoke-direct {p0}, Lcom/s1243808733/aide/AideMainActivity;->hasTabView()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1454
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz p1, :cond_11

    .line 1457
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_15

    .line 1460
    :cond_11
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method setMenuCode(Landroid/view/Menu;)V
    .registers 6

    .line 1248
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    .line 1249
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableMenuCode()Z

    move-result v1

    if-eqz v1, :cond_91

    if-eqz v0, :cond_91

    const-string v1, ".class"

    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->checkEditorFileNameSuffix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 1255
    const/4 v1, 0x0

    :try_start_15
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "menucode_file"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1257
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_37

    move-object v1, v3

    goto :goto_38

    :catchall_37
    move-exception v2

    :cond_38
    :goto_38
    if-nez v1, :cond_83

    .line 1263
    :try_start_3a
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "menucode/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1266
    const-string v2, "menu_code_zh.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 1268
    :cond_4d
    const-string v2, "menu_code.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1270
    :goto_52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getSdDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1271
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1272
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_83

    .line 1274
    :cond_6c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1275
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1276
    invoke-virtual {p0}, Lcom/s1243808733/aide/AideMainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1283
    :cond_83
    :goto_83
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$22;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/AideMainActivity$22;-><init>(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 1280
    invoke-static {p1, v1, v0, v2}, Lcom/s1243808733/aide/util/MenuCode;->add(Landroid/view/Menu;Ljava/io/InputStream;Ljava/lang/String;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)[Lcom/s1243808733/aide/util/MenuCode;
    :try_end_8f
    .catchall {:try_start_3a .. :try_end_8f} :catchall_90

    goto :goto_91

    :catchall_90
    move-exception p1

    :cond_91
    :goto_91
    return-void
.end method

.method public superOnOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    .line 883
    :try_start_0
    invoke-super {p0, p1}, Lcom/aide/ui/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p1

    :catchall_5
    move-exception p1

    .line 885
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1
.end method

.method public superRebuildItemSelected()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f08010d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
