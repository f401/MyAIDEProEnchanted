.class public Lcom/aide/uidesigner/XmlLayoutDesignActivity;
.super Landroid/app/Activity;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;,
        Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;
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
.field private EQ:Z
    .annotation runtime Labcd/ru;
        field = 0x432c1b15db1101d8L
    .end annotation
.end field

.field private FH:Landroid/widget/LinearLayout;
    .annotation runtime Labcd/ru;
        field = 0x44ed57619900ae33L
    .end annotation
.end field

.field private Hw:Landroid/widget/LinearLayout;
    .annotation runtime Labcd/ru;
        field = 0x19e325c8e496c843L
    .end annotation
.end field

.field private J0:Z
    .annotation runtime Labcd/ru;
        field = 0x3cb95f280897dd05L
    .end annotation
.end field

.field private J8:Lcom/aide/common/TextToSpeechHelper;
    .annotation runtime Labcd/ru;
        field = 0x10dfe967dacc1800L
    .end annotation
.end field

.field private QX:I
    .annotation runtime Labcd/ru;
        field = -0x29e4973cabc40753L
    .end annotation
.end field

.field private VH:Lcom/aide/uidesigner/Pa;
    .annotation runtime Labcd/ru;
        field = 0x103029e9faceca80L
    .end annotation
.end field

.field private Ws:Landroid/media/SoundPool;
    .annotation runtime Labcd/ru;
        field = 0x26140b4684e045e0L
    .end annotation
.end field

.field private Zo:Landroid/support/v4/app/a;
    .annotation runtime Labcd/ru;
        field = -0x452f247227f90538L
    .end annotation
.end field

.field private gn:Lcom/aide/common/UndoManager;
    .annotation runtime Labcd/ru;
        field = 0x217fc72f4ade5634L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xfeef8d23485dbe3L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1d25b2bfd753f7ddL
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = -0xc207f324bc5588fL
    .end annotation
.end field

.field private we:Z
    .annotation runtime Labcd/ru;
        field = -0x3f6b86a29b3414cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x26532fe3199dbf1fL    # -9.523483305966733E123

    const-class v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x4685a75de510249L    # 1.999185331610612E-287

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4685a75de510249L    # 1.999185331610612E-287

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)I
    .registers 2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH()I

    move-result v0

    return v0
.end method

.method private DW()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x6bda09ce0840f7f1L
    .end annotation

    const-wide v8, 0x3928ab717adf0030L    # 2.3756057279642398E-33

    const-wide v6, 0x3fe999999999999aL    # 0.8

    const/4 v2, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3928ab717adf0030L    # 2.3756057279642398E-33

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->FH(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x43960000    # 300.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v4, v6

    double-to-int v1, v4

    :try_start_1
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v4, v6

    double-to-int v0, v4

    :try_start_2
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->FH(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic DW(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH(Ljava/lang/String;)V

    return-void
.end method

.method private DW(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xff12abdf5503348L
    .end annotation

    const-wide v2, -0x1b98a950932807dbL    # -4.6178790709022775E175

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b98a950932807dbL    # -4.6178790709022775E175

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_XMLDESIGNER_EDITMODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0, p1}, Lcom/aide/uidesigner/Pa;->DW(Z)V

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW()V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW(Landroid/content/Intent;)Z
    .registers 9

    const-wide v6, 0xda425cea078d4adL

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xda425cea078d4adL

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "EXTRA_TRAINER_ACTION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic EQ(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private EQ()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4a3af82a2a655a60L
    .end annotation

    const-wide v4, -0x3bb0eee52b277865L    # -1.1461631955189769E21

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3bb0eee52b277865L    # -1.1461631955189769E21

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/e;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    invoke-direct {v3, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;-><init>(Z)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->VH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/s;

    new-instance v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    invoke-direct {v3, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;-><init>(Lcom/aide/uidesigner/s;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget v0, Lcom/aide/ui/Na;->designerViewList:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;

    if-nez v1, :cond_6

    new-instance v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;

    invoke-direct {v1, p0, p0, v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static synthetic FH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    return-object p1
.end method

.method private FH()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3ffe5d6770449379L
    .end annotation

    const-wide v6, -0x237d68b2b89d79b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x237d68b2b89d79b0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/common/UndoManager;

    invoke-direct {v0}, Lcom/aide/common/UndoManager;-><init>()V

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    new-instance v0, Lcom/aide/uidesigner/p;

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/aide/uidesigner/p;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->EQ()V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->DW(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private FH(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x859d242fdedb6f5L
    .end annotation

    const-wide v4, -0xa22458fc1451a00L    # -5.713549479189839E259

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa22458fc1451a00L    # -5.713549479189839E259

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5220\u9664\u5e03\u5c40 "

    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u771f\u7684\u5220\u9664\u8fd9\u4e2a\u5e03\u5c40\uff1f"

    :goto_1
    :try_start_2
    new-instance v2, Lcom/aide/uidesigner/q;

    invoke-direct {v2, p0, p1}, Lcom/aide/uidesigner/q;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Delete Layout "

    goto :goto_0

    :cond_2
    const-string v0, "Really delete this layout?"

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private Hw()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3a145b84da24a570L
    .end annotation

    const-wide v4, -0x1dc2cf917cb7c751L    # -1.6808913006049705E165

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1dc2cf917cb7c751L    # -1.6808913006049705E165

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/aide/uidesigner/g;

    invoke-direct {v1, p0}, Lcom/aide/uidesigner/g;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    const-string v2, "New Layout"

    const-string v3, "File name:"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1ec64e0be58c1c09L
    .end annotation

    const-wide v2, 0x344cec11e0fd9e40L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x344cec11e0fd9e40L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_XMLDESIGNER_FILE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic Hw(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    return v0
.end method

.method private VH()I
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2f703d2b816bb193L
    .end annotation

    const-wide v4, 0xd12375af4557a00L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd12375af4557a00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "XMLDESIGNER_VIEW"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic VH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw()V

    return-void
.end method

.method private Zo()Landroid/content/SharedPreferences;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x44d90170ecfa8f20L
    .end annotation

    const-wide v2, -0x40959df60b7ddb8bL    # -0.003220576709342777

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x40959df60b7ddb8bL    # -0.003220576709342777

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "UIDesigner"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic Zo(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    return v0
.end method

.method static synthetic gn(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Lcom/aide/uidesigner/Pa;
    .registers 2

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    return-object v0
.end method

.method private gn()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x167c00bc8a6629e1L
    .end annotation

    const-wide v4, -0x1cf4f99ebc752e08L    # -1.2748879844902796E169

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1cf4f99ebc752e08L    # -1.2748879844902796E169

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_XMLDESIGNER_EDITMODE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2605c7f4fca249ecL
    .end annotation

    const-wide v2, 0x478be9e0efb4663L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x478be9e0efb4663L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "XMLDESIGNER_VIEW"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 20

    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x5ca137d0c9eb9c35L    # 1.6018855269339977E138

    const/4 v4, 0x0

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    aput-object p5, v5, v6

    const/4 v6, 0x6

    aput-object p6, v5, v6

    const/4 v6, 0x7

    aput-object p7, v5, v6

    const/16 v6, 0x8

    aput-object p8, v5, v6

    const/16 v6, 0x9

    aput-object p9, v5, v6

    const/16 v6, 0xa

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/16 v6, 0xb

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p11

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "EXTRA_FILE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_LANGUAGE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_LICENSED"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_STANDALONE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_TRAINER"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_TRAINER_SOUND"

    move/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_TRAINER_TASK"

    invoke-virtual {v2, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_TRAINER_TITILE"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_TRAINER_BUTTON"

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_HEADER"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_TRAINER_SPEAK"

    move/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_TRAINER_RUN_BUTTON"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x409d2da51d16d59fL    # -0.002297570717279471

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_FILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_LANGUAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_LICENSED"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_STANDALONE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x409d2da51d16d59fL    # -0.002297570717279471

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(I)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Lcom/aide/uidesigner/s;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/s;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Z)V

    return-void
.end method

.method private j6(Lcom/aide/uidesigner/s;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x14d2a7bf5251a1d0L
    .end annotation

    const-wide v2, -0x2973a29c79d723afL    # -8.32699254233657E108

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2973a29c79d723afL    # -8.32699254233657E108

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/uidesigner/L;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x16411941eb6b1cc5L
    .end annotation

    const-wide v6, 0x41e3426dfcc780a0L    # 2.5849650942344513E9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x41e3426dfcc780a0L    # 2.5849650942344513E9

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v2, "EXTRA_LICENSED"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we:Z

    if-eqz v4, :cond_1

    const-string v2, "EXTRA_STANDALONE"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v0, :cond_b

    if-eqz v4, :cond_6

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/net/Uri;

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {}, Lcom/aide/uidesigner/e;->j6()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/aide/uidesigner/e;->j6(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aide/uidesigner/e;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    sget v0, Lcom/aide/ui/Na;->designerDrawer:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->gn(I)V

    :cond_4
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH()V

    return-void

    :cond_5
    move v2, v0

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_8

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/aide/uidesigner/e;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    invoke-static {v1}, Lcom/aide/uidesigner/e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v0

    :cond_8
    :try_start_3
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/aide/uidesigner/e;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_a
    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "EXTRA_FILE"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public static j6(Landroid/content/Intent;)Z
    .registers 9

    const-wide v6, -0x1b6badee7e9d15L

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x1b6badee7e9d15L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v2, "EXTRA_TRAINER_ACTION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5:Z

    return v0
.end method

.method static synthetic tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    return-object v0
.end method

.method private tp()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x34e5dce085f5550fL
    .end annotation

    const-wide v4, -0x1e968c8c315a8170L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e968c8c315a8170L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TRAINER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private u7()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x11fa55d51e9cad4cL
    .end annotation

    const-wide v2, 0x83fd658bbe33b59L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x83fd658bbe33b59L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic u7(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we:Z

    return v0
.end method

.method private v5()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x168e6ee5720b1607L
    .end annotation

    const-wide v4, 0x2fd23b4365294e48L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2fd23b4365294e48L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_XMLDESIGNER_FILE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic v5(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH()V

    return-void
.end method

.method static synthetic we(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0xf805ae73de5f983L    # 5.143826859186752E-234

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf805ae73de5f983L    # 5.143826859186752E-234

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://developer.android.google.cn/reference/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/aide/common/b;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected j6()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x6a6828d0bfe8580L
    .end annotation

    const-wide v8, 0x1f63994e3d8e554bL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f63994e3d8e554bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TRAINER_SPEAK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {v0, p0}, Lcom/aide/common/TextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J8:Lcom/aide/common/TextToSpeechHelper;

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J8:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_TASK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TRAINER_SOUND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Ws:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Ws:Landroid/media/SoundPool;

    sget v1, Lcom/aide/ui/Qa;->task:I

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->QX:I

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Ws:Landroid/media/SoundPool;

    iget v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->QX:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x59bf16082d9047e5L
    .end annotation

    const-wide v2, -0x40ccb0415a13f210L    # -2.9467014785230974E-4

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x40ccb0415a13f210L    # -2.9467014785230974E-4

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "application/xml"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/aide/common/a;->j6(Landroid/app/Activity;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2b06526d27a26ec0L
    .end annotation

    const-wide v2, -0x3df287d68a6d245L    # -8.206449218979094E289

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3df287d68a6d245L    # -8.206449218979094E289

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x32601cdc092f9efdL
    .end annotation

    const-wide v8, -0x37248b6c60bfcd58L    # -9.566802792452096E42

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x37248b6c60bfcd58L    # -9.566802792452096E42

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const v0, 0x344059

    if-ne p1, v0, :cond_1

    invoke-static {p0, p3}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const-wide v2, -0x6fe78d9b856a9e0L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6fe78d9b856a9e0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->j6(Landroid/content/res/Configuration;)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x43066c860cbf547L
    .end annotation

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide v4, 0x16db5858385L

    :try_start_0
    const-string v6, "androidRelease"

    const-string v7, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v8, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v9, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x4c5a62555188130L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5:Z

    invoke-static {}, Labcd/F;->DW()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/aide/uidesigner/h;

    invoke-direct {v2, p0}, Lcom/aide/uidesigner/h;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_LANGUAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH()I

    move-result v2

    if-eqz v2, :cond_8

    if-eq v2, v10, :cond_6

    if-eq v2, v12, :cond_8

    if-eq v2, v13, :cond_6

    :goto_0
    invoke-static {p0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v2, Lcom/aide/ui/Oa;->designer:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/aide/ui/Na;->designerFrame:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    sget v3, Lcom/aide/ui/R$drawable;->ic_launcher:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_HEADER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/aide/common/Za;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/aide/ui/Na;->designerHeaderLearnTask:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/aide/ui/Na;->designerHeaderLearnTaskText:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/aide/ui/Na;->designerHeaderLearnTaskTitle:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/aide/ui/Na;->designerHeaderLearnButton:I

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v9, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_TRAINER_TITILE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_TRAINER_TASK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_TRAINER_BUTTON"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/aide/common/g;->VH(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->v5(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Lcom/aide/uidesigner/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v3, v6

    neg-float v6, v3

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/aide/uidesigner/j;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;FFFFLandroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/aide/ui/Na;->designerHeaderLearnTaskInner:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/uidesigner/k;

    invoke-direct {v4, p0}, Lcom/aide/uidesigner/k;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lcom/aide/ui/Na;->designerHeaderLearnTaskInner:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/uidesigner/l;

    invoke-direct {v4, p0, v9}, Lcom/aide/uidesigner/l;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sget v4, Lcom/aide/ui/Na;->designerHeaderLearnTaskInner:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/high16 v6, 0x41d80000    # 27.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    sget v4, Lcom/aide/ui/Na;->designerContent:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    new-instance v3, Lcom/aide/uidesigner/m;

    invoke-direct {v3, p0, v8, v2}, Lcom/aide/uidesigner/m;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v8, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    sget v2, Lcom/aide/ui/Na;->designerContent:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v2, Lcom/aide/ui/Na;->designerViewList:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    new-instance v3, Lcom/aide/uidesigner/n;

    invoke-direct {v3, p0}, Lcom/aide/uidesigner/n;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-nez p1, :cond_b

    move v2, v10

    :goto_3
    invoke-direct {p0, v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Z)V

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v2, p1}, Lcom/aide/common/UndoManager;->j6(Landroid/os/Bundle;)V

    :cond_5
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5:Z

    return-void

    :cond_6
    sget v2, Lcom/aide/ui/Sa;->ActivityThemeDesignerDark:I

    invoke-static {p0, v2}, Lcom/b;->dark(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_7

    const-wide v4, 0x4c5a62555188130L

    invoke-static {v2, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v2

    :cond_8
    :try_start_1
    sget v2, Lcom/aide/ui/Sa;->ActivityThemeDesignerLight:I

    invoke-static {p0, v2}, Lcom/b;->light(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const v7, 0x7f0d06be

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f0d06bf

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const v7, 0x7f0d06c0

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const v7, 0x7f0d06c1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v4, Lcom/aide/uidesigner/i;

    invoke-direct {v4, p0}, Lcom/aide/uidesigner/i;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    sget v2, Lcom/aide/ui/Na;->designerDrawer:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout;

    new-instance v2, Landroid/support/v4/app/a;

    sget v5, Lcom/aide/ui/R$drawable;->ic_drawer:I

    const v6, 0x104000a

    const v7, 0x104000a

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    invoke-virtual {v4, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$c;)V

    goto/16 :goto_1

    :cond_a
    sget v2, Lcom/aide/ui/Na;->designerHeaderLearnTask:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_b
    move v2, v11

    goto/16 :goto_3
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x15bd7a5cc96cd3ecL
    .end annotation

    const-wide v2, 0xf0a404babd1c833L    # 3.225089883366424E-236

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xf0a404babd1c833L    # 3.225089883366424E-236

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const-wide v2, 0x159f25fcd9d94df4L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x159f25fcd9d94df4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/aide/ui/Pa;->designer_options_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onDestroy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2496b042e8a2354fL
    .end annotation

    const-wide v2, 0x36b2a9abb82ed7a8L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36b2a9abb82ed7a8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0, v1}, Lcom/aide/common/UndoManager;->DW(Lcom/aide/common/UndoManager$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 11

    const-wide v2, 0x80b95ec9f2c54d1L

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x80b95ec9f2c54d1L

    invoke-static {v6, v7, p0, v4, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    invoke-virtual {v4, p2}, Landroid/support/v4/app/a;->j6(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v4, 0x102002c

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v4, Lcom/aide/ui/Na;->designerMenuRun:I

    if-ne v0, v4, :cond_5

    const-string v0, "UI Designer Menu: Run"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "EXTRA_TRAINER_ACTION"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v4, Lcom/aide/ui/Na;->designerMenuShowBorders:I

    if-ne v0, v4, :cond_6

    const-string v0, "UI Designer Menu: Edit mode"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Z)V

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v4, Lcom/aide/ui/Na;->designerMenuHideBorders:I

    if-ne v0, v4, :cond_7

    const-string v0, "UI Designer Menu: Preview mode"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Z)V

    goto :goto_1

    :cond_7
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v4, Lcom/aide/ui/Na;->designerMenuUndo:I

    if-ne v0, v4, :cond_8

    const-string v0, "UI Designer Menu: Undo"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v0}, Lcom/aide/common/UndoManager;->Hw()V

    goto :goto_1

    :cond_8
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v4, Lcom/aide/ui/Na;->designerMenuRedo:I

    if-ne v0, v4, :cond_9

    const-string v0, "UI Designer Menu: Redo"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v0}, Lcom/aide/common/UndoManager;->FH()V

    goto :goto_1

    :cond_9
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v4, Lcom/aide/ui/Na;->designerMenuPaste:I

    if-ne v0, v4, :cond_a

    const-string v0, "UI Designer Menu: Paste"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->J8()V

    goto/16 :goto_1

    :cond_a
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v4, Lcom/aide/ui/Na;->designerMenuCopy:I

    if-ne v0, v4, :cond_2

    const-string v0, "UI Designer Menu: Copy"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->FH()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const-wide v2, -0x24bb17b56bf74398L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24bb17b56bf74398L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1263f4d9c6dd46c7L
    .end annotation

    const-wide v2, -0x2b3c118df3473a48L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b3c118df3473a48L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10

    const-wide v6, 0xaa1df8f4bec2b9fL

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0xaa1df8f4bec2b9fL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    sget v2, Lcom/aide/ui/Na;->designerMenuRun:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuRun:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_TRAINER_RUN_BUTTON"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuHideBorders:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuShowBorders:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuUndo:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v3}, Lcom/aide/common/UndoManager;->DW()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuRedo:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v3}, Lcom/aide/common/UndoManager;->j6()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuPaste:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v3}, Lcom/aide/uidesigner/Pa;->j6()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuPaste:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :goto_2
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuCopy:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v1

    :goto_3
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuCopy:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    move v2, v0

    goto/16 :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3730a9630e5df08L
    .end annotation

    const-wide v2, 0x19d2cce6d9573979L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19d2cce6d9573979L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v0, p1}, Lcom/aide/common/UndoManager;->DW(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1a1464d0b8e1ac15L
    .end annotation

    const-wide v2, 0x2edc60e11c801408L    # 5.843185123281876E-83

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2edc60e11c801408L    # 5.843185123281876E-83

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "Android UI Designer"

    invoke-static {p0, v0}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x188cc9c1207d6761L
    .end annotation

    const-wide v2, 0x17e3c16ed509344cL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17e3c16ed509344cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "Android UI Designer"

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
