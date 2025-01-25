.class public Lcom/aide/appwizard/runtime/AppWizardActivity;
.super Landroid/support/v4/app/FragmentActivity;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static QX:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Ws:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private Mr:I
    .annotation runtime Labcd/ru;
        field = 0x3da03a0d37f5ec21L
    .end annotation
.end field

.field private U2:I
    .annotation runtime Labcd/ru;
        field = -0x1dbc9a0133013539L
    .end annotation
.end field

.field private XL:Lcom/aide/appwizard/runtime/i;
    .annotation runtime Labcd/ru;
        field = 0x1d70bea5c6392e8cL
    .end annotation
.end field

.field private a8:I
    .annotation runtime Labcd/ru;
        field = 0x1c5443d003f35ce0L
    .end annotation
.end field

.field private aM:Landroid/support/v4/view/ViewPager;
    .annotation runtime Labcd/ru;
        field = 0x1646b5a849c8fcc5L
    .end annotation
.end field

.field private j3:Landroid/support/v4/app/a;
    .annotation runtime Labcd/ru;
        field = -0x2c548fd2127f1b44L
    .end annotation
.end field

.field private lg:I
    .annotation runtime Labcd/ru;
        field = 0x431c63a2e95db780L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/appwizard/runtime/AppWizardActivity;

    const-wide v1, 0x43daa093d23e6f19L  # 7.6747838898388593E18

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x252b4c9e2274ba64L  # -3.587264810550474E129

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/appwizard/runtime/AppWizardActivity;)I
    .registers 1

    iget p0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->lg:I

    return p0
.end method

.method private DW(Landroid/view/ViewGroup;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1e063905faca1a0L
    .end annotation

    const-wide v0, -0x63ea949873727b87L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->U2:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {v2, p0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40800000  # 4.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    new-instance v3, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v3}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v5, 0x30

    iput v5, v3, Landroid/support/v4/view/ViewPager$LayoutParams;->DW:I

    iget-object v5, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/view/PagerTitleStrip;->setTextColor(I)V

    const v3, -0xcc4a1b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/aide/appwizard/runtime/AppWizardActivity$a;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/aide/appwizard/runtime/AppWizardActivity$a;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;Landroid/support/v4/app/r;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_6e

    return-void

    :catchall_6e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_76
    throw v2
.end method

.method private FH(I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x365a39ae30e25da3L
    .end annotation

    const-wide v0, 0x2b59b90efce40a00L  # 7.350233290316917E-100

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2d

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_2d

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v3

    :cond_2d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    return-object p1

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_45

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v2
.end method

.method static synthetic FH(Lcom/aide/appwizard/runtime/AppWizardActivity;)Landroid/support/v4/view/ViewPager;
    .registers 1

    iget-object p0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private FH(Landroid/view/ViewGroup;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xa688b2bd89bb0d8L
    .end annotation

    const-wide v0, -0x52284f64d8b7e3b1L  # -7.442929504678857E-88

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->U2:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/aide/appwizard/runtime/AppWizardActivity$a;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/aide/appwizard/runtime/AppWizardActivity$a;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;Landroid/support/v4/app/r;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/aide/appwizard/runtime/e;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/runtime/e;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->removeAllTabs()V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->v5()Lcom/aide/appwizard/runtime/i$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$d;->Zo()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_65

    :cond_59
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_65
    const/4 v3, 0x0

    :goto_66
    if-ge v3, v2, :cond_99

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v6, Lcom/aide/appwizard/runtime/f;

    invoke-direct {v6, p0}, Lcom/aide/appwizard/runtime/f;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V

    invoke-virtual {v4, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V
    :try_end_96
    .catchall {:try_start_5 .. :try_end_96} :catchall_9a

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_99
    return-void

    :catchall_9a
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_a2

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a2
    goto :goto_a4

    :goto_a3
    throw v2

    :goto_a4
    goto :goto_a3
.end method

.method private J0()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2faf343ed2ab77dcL
    .end annotation

    const-wide v0, 0x15fe828036b89be1L  # 9.731098060992203E-203

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/appwizard/runtime/g;->j6:[I

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->FH()Lcom/aide/appwizard/runtime/i$e;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_47

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3e

    const/4 v0, 0x4

    if-eq v2, v0, :cond_3a

    const/4 v0, 0x6

    if-eq v2, v0, :cond_36

    const/4 v0, 0x7

    if-eq v2, v0, :cond_32

    const v0, 0x1030128

    return v0

    :cond_32
    const v0, 0x103013f

    return v0

    :cond_36
    const v0, 0x103012b

    return v0

    :cond_3a
    const v0, 0x1030119

    return v0

    :cond_3e
    const-string v2, "style"

    const-string v3, "Theme_Holo_Light_Holo_ActionBar"

    invoke-direct {p0, v2, v3}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_4f

    return v0

    :cond_47
    const v0, 0x103006e

    return v0

    :cond_4b
    const v0, 0x103006b

    return v0

    :catchall_4f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_57
    throw v2
.end method

.method static synthetic j6(Lcom/aide/appwizard/runtime/AppWizardActivity;)I
    .registers 1

    iget p0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->Mr:I

    return p0
.end method

.method static synthetic j6(Lcom/aide/appwizard/runtime/AppWizardActivity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x195dbe03c99eb573L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5d55856ea7f68d0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_3b

    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_38
    .catchall {:try_start_c .. :try_end_37} :catchall_3b

    return p1

    :catch_38
    move-exception p1

    const/4 p1, 0x0

    return p1

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x5d55856ea7f68d0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method private j6(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x5508b27945e1f0cL
    .end annotation

    const-wide v0, -0x3062922ed6080d15L  # -3.327775633857982E75

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    new-instance v2, Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->lg:I

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->a8:I

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x43700000  # 240.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-direct {v6, v7, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    const v5, 0x800003

    iput v5, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x1010054

    invoke-direct {p0, v5}, Lcom/aide/appwizard/runtime/AppWizardActivity;->FH(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/support/v4/app/a;

    const-string v4, "drawable"

    const-string v5, "ic_drawer"

    invoke-direct {p0, v4, v5}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const v8, 0x104000a

    const v9, 0x104000a

    move-object v4, v10

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v10, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->j3:Landroid/support/v4/app/a;

    invoke-virtual {v2, v10}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$c;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/DrawerLayout;->gn(I)V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v5

    iget v6, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->a8:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {p0, v3}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/support/v4/app/D;->DW(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    invoke-virtual {v5}, Landroid/support/v4/app/D;->j6()I
    :try_end_c0
    .catchall {:try_start_5 .. :try_end_c0} :catchall_c1

    :cond_c0
    return-object v2

    :catchall_c1
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_c9

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c9
    throw v2
.end method


# virtual methods
.method protected EQ()Lorg/w3c/dom/Document;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x7a835a8eaa5345fL
    .end annotation

    const-wide v0, -0x204a7ff0e3d73d60L  # -1.1260584445367094E153

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_29

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "app.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_26
    .catchall {:try_start_c .. :try_end_25} :catchall_29

    return-object v3

    :catch_26
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public gn()Lcom/aide/appwizard/runtime/i$b;
    .registers 5

    const-wide v0, -0x366cf3d038bcbf71L  # -2.7185648917764653E46

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i;->FH()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1a9dca10a2f8d20L
    .end annotation

    const-wide v0, 0xf26b6acdbf8471L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/appwizard/runtime/a;

    invoke-direct {v2, p0, p1}, Lcom/aide/appwizard/runtime/a;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;Lcom/aide/appwizard/runtime/i$c;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected j6(Lorg/w3c/dom/Document;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x714380bba9df4e0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4554d4e174efd7L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v1, :cond_27

    const-wide v2, -0x4554d4e174efd7L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const-wide v0, 0x59413627e718c5cL

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->j3:Landroid/support/v4/app/a;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Landroid/support/v4/app/a;->j6(Landroid/content/res/Configuration;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x714da1d06909659L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, 0x863745a29f66eb8L

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    new-instance v0, Lcom/aide/appwizard/runtime/i;

    invoke-direct {v0, p0}, Lcom/aide/appwizard/runtime/i;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V

    iput-object v0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->XL:Lcom/aide/appwizard/runtime/i;

    invoke-direct {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->J0()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->we()V
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v1, :cond_42

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2b683d5c2ae9107L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->j3:Landroid/support/v4/app/a;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p2}, Landroid/support/v4/app/a;->j6(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return p1

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x2b683d5c2ae9107L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1fba4dc1f6636aa5L
    .end annotation

    const-wide v0, -0x16374bacb66f7be4L  # -3.781998518730899E201

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->j3:Landroid/support/v4/app/a;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/support/v4/app/a;->j6()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected tp()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6595a87bab30b27L
    .end annotation

    const-wide v0, -0xe998b91249af9e8L  # -1.8277470800939668E238

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public u7()Lcom/aide/appwizard/runtime/i;
    .registers 5

    const-wide v0, -0x21a5c60457462ac4L  # -3.274901067543361E146

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->XL:Lcom/aide/appwizard/runtime/i;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public we()V
    .registers 10

    const-wide v0, -0xdf3eb967884fc1L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity;->Ws:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->j3:Landroid/support/v4/app/a;

    iput-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->aM:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x3e9

    iput v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->U2:I

    const/16 v2, 0x3ea

    iput v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->a8:I

    const/16 v2, 0x3eb

    iput v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->lg:I

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->tp()I

    move-result v2

    iput v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->Mr:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$b;->tp()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->Zo()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->show()V

    goto :goto_5c

    :cond_55
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    :goto_5c
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->gn()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7c

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/aide/appwizard/runtime/b;

    invoke-direct {v5, p0}, Lcom/aide/appwizard/runtime/b;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_7f

    :cond_7c
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :goto_7f
    sget-object v3, Lcom/aide/appwizard/runtime/g;->DW:[I

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/appwizard/runtime/i$b;->v5()Lcom/aide/appwizard/runtime/i$d;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const v5, 0x1020014

    const v6, 0x1090003

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v3, :pswitch_data_224

    goto/16 :goto_217

    :pswitch_9c  #0x8
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-direct {p0, v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_217

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v2

    iget v3, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->lg:I

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {p0, v4}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/D;->DW(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    :goto_d3
    invoke-virtual {v2}, Landroid/support/v4/app/D;->j6()I

    goto/16 :goto_217

    :pswitch_d8  #0x7
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_217

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v2

    iget v3, p0, Lcom/aide/appwizard/runtime/AppWizardActivity;->Mr:I

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {p0, v4}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/D;->DW(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    goto :goto_d3

    :pswitch_11b  #0x6
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-direct {p0, v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    :goto_126
    invoke-direct {p0, v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->DW(Landroid/view/ViewGroup;)V

    goto/16 :goto_217

    :pswitch_12b  #0x5
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_126

    :pswitch_141  #0x4
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-direct {p0, v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->removeAllTabs()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_163
    add-int/lit8 v7, v3, -0x1

    if-ge v4, v7, :cond_17f

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v7}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_163

    :cond_17f
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v6, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    new-instance v2, Lcom/aide/appwizard/runtime/d;

    invoke-direct {v2, p0}, Lcom/aide/appwizard/runtime/d;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V

    :goto_195
    invoke-virtual {v3, v4, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto/16 :goto_217

    :pswitch_19a  #0x3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->removeAllTabs()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c7

    :cond_1db
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v6, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    new-instance v2, Lcom/aide/appwizard/runtime/c;

    invoke-direct {v2, p0}, Lcom/aide/appwizard/runtime/c;-><init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V

    goto :goto_195

    :pswitch_1f2  #0x2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-direct {p0, v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    :goto_1fd
    invoke-direct {p0, v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->FH(Landroid/view/ViewGroup;)V

    goto :goto_217

    :pswitch_201  #0x1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V
    :try_end_216
    .catchall {:try_start_5 .. :try_end_216} :catchall_218

    goto :goto_1fd

    :cond_217
    :goto_217
    return-void

    :catchall_218
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity;->QX:Z

    if-eqz v3, :cond_220

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_220
    goto :goto_222

    :goto_221
    throw v2

    :goto_222
    goto :goto_221

    nop

    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_201  #00000001
        :pswitch_1f2  #00000002
        :pswitch_19a  #00000003
        :pswitch_141  #00000004
        :pswitch_12b  #00000005
        :pswitch_11b  #00000006
        :pswitch_d8  #00000007
        :pswitch_9c  #00000008
    .end packed-switch
.end method
