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
    .registers 3

    const-class v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    const-wide v1, -0x26532fe3199dbf1fL  # -9.523483305966733E123

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x4685a75de510249L  # 1.999185331610612E-287

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)I
    .registers 1

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH()I

    move-result p0

    return p0
.end method

.method private DW()V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x6bda09ce0840f7f1L
    .end annotation

    const-wide v0, 0x3928ab717adf0030L  # 2.3756057279642398E-33

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    if-eq v2, v3, :cond_27

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->FH(Z)V

    goto :goto_7f

    :cond_27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_80

    const/high16 v6, 0x43960000  # 300.0f

    mul-float v6, v6, v5

    float-to-int v6, v6

    const/high16 v7, 0x43fa0000  # 500.0f

    mul-float v5, v5, v7

    float-to-int v5, v5

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v9, 0x3fe999999999999aL  # 0.8

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    double-to-int v4, v7

    :try_start_5e
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_80

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v9

    double-to-int v2, v6

    :try_start_6c
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->FH(Z)V
    :try_end_7f
    .catchall {:try_start_6c .. :try_end_7f} :catchall_80

    :goto_7f
    return-void

    :catchall_80
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_88

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_88
    throw v2
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

    const-wide v0, -0x1b98a950932807dbL  # -4.6178790709022775E175

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PREF_XMLDESIGNER_EDITMODE"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2, p1}, Lcom/aide/uidesigner/Pa;->DW(Z)V

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW()V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_3a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public static DW(Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xda425cea078d4adL

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "EXTRA_TRAINER_ACTION"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_19

    const/4 v0, 0x2

    if-ne p0, v0, :cond_18

    const/4 v4, 0x1

    :cond_18
    return v4

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method static synthetic EQ(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private EQ()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4a3af82a2a655a60L
    .end annotation

    const-wide v0, -0x3bb0eee52b277865L  # -1.1461631955189769E21

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    invoke-static {v3}, Lcom/aide/uidesigner/e;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    new-instance v5, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    invoke-direct {v5, v4}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_34
    new-instance v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;-><init>(Z)V

    :goto_3a
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_3e
    new-instance v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;-><init>(Ljava/io/File;)V

    goto :goto_3a

    :goto_4b
    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v3}, Lcom/aide/uidesigner/Pa;->VH()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/uidesigner/s;

    new-instance v5, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    invoke-direct {v5, v4}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;-><init>(Lcom/aide/uidesigner/s;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_6a
    sget v3, Lcom/aide/ui/Na;->designerViewList:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;

    if-nez v4, :cond_83

    new-instance v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;

    invoke-direct {v4, p0, p0, v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_9a

    :cond_83
    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_99
    .catchall {:try_start_5 .. :try_end_99} :catchall_9b

    goto :goto_8a

    :cond_9a
    :goto_9a
    return-void

    :catchall_9b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_a3

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_a3
    goto :goto_a5

    :goto_a4
    throw v2

    :goto_a5
    goto :goto_a4
.end method

.method static synthetic FH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    return-object p1
.end method

.method private FH()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3ffe5d6770449379L
    .end annotation

    const-wide v0, -0x237d68b2b89d79b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/UndoManager;

    invoke-direct {v2}, Lcom/aide/common/UndoManager;-><init>()V

    iput-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    new-instance v2, Lcom/aide/uidesigner/p;

    iget-object v5, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    iget-object v7, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    iget-object v8, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/aide/uidesigner/p;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V

    iput-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->EQ()V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->DW(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method private FH(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x859d242fdedb6f5L
    .end annotation

    const-wide v0, -0xa22458fc1451a00L  # -5.713549479189839E259

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_44

    if-eqz v3, :cond_1a

    const-string v3, "删除布局 "

    goto :goto_1c

    .line 99
    :cond_1a
    const-string v3, "Delete Layout "

    .line 0
    :goto_1c
    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_44

    if-eqz v3, :cond_38

    const-string v3, "真的删除这个布局？"

    goto :goto_3a

    .line 99
    :cond_38
    const-string v3, "Really delete this layout?"

    .line 0
    :goto_3a
    :try_start_3a
    new-instance v4, Lcom/aide/uidesigner/q;

    invoke-direct {v4, p0, p1}, Lcom/aide/uidesigner/q;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    return-void

    .line 99
    :catchall_44
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v2
.end method

.method private Hw()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3a145b84da24a570L
    .end annotation

    const-wide v0, -0x1dc2cf917cb7c751L  # -1.6808913006049705E165

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    invoke-static {v2}, Lcom/aide/uidesigner/e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/uidesigner/g;

    invoke-direct {v3, p0}, Lcom/aide/uidesigner/g;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    const-string v4, "New Layout"

    const-string v5, "File name:"

    invoke-static {p0, v4, v5, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method private Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1ec64e0be58c1c09L
    .end annotation

    const-wide v0, 0x344cec11e0fd9e40L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PREF_XMLDESIGNER_FILE"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method static synthetic Hw(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    return p0
.end method

.method private VH()I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2f703d2b816bb193L
    .end annotation

    const-wide v0, 0xd12375af4557a00L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x2

    return v0

    :cond_14
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "XMLDESIGNER_VIEW"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
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

    const-wide v0, -0x40959df60b7ddb8bL  # -0.003220576709342777

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "UIDesigner"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method static synthetic Zo(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    return p0
.end method

.method static synthetic gn(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Lcom/aide/uidesigner/Pa;
    .registers 1

    iget-object p0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    return-object p0
.end method

.method private gn()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x167c00bc8a6629e1L
    .end annotation

    const-wide v0, -0x1cf4f99ebc752e08L  # -1.2748879844902796E169

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "PREF_XMLDESIGNER_EDITMODE"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return v0

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method private j6(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2605c7f4fca249ecL
    .end annotation

    const-wide v0, 0x478be9e0efb4663L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "XMLDESIGNER_VIEW"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    sget-boolean v12, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_61

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v14

    aput-object v1, v12, v13

    const/4 v15, 0x2

    aput-object v2, v12, v15

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    const/16 v16, 0x3

    aput-object v15, v12, v16

    const/4 v15, 0x4

    aput-object v4, v12, v15

    const/4 v15, 0x5

    aput-object v5, v12, v15

    const/4 v15, 0x6

    aput-object v6, v12, v15

    const/4 v15, 0x7

    aput-object v7, v12, v15

    const/16 v15, 0x8

    aput-object v8, v12, v15

    const/16 v15, 0x9

    aput-object v9, v12, v15

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v10}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0xa

    aput-object v15, v12, v16

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v11}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0xb

    aput-object v15, v12, v16

    const-wide v13, 0x5ca137d0c9eb9c35L  # 1.6018855269339977E138

    const/4 v15, 0x0

    invoke-static {v13, v14, v15, v12}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_61
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {v12, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "EXTRA_FILE"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_LANGUAGE"

    invoke-virtual {v12, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_LICENSED"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_STANDALONE"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_SOUND"

    invoke-virtual {v12, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_TASK"

    invoke-virtual {v12, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_TITILE"

    invoke-virtual {v12, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_BUTTON"

    invoke-virtual {v12, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_HEADER"

    invoke-virtual {v12, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v12, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_SPEAK"

    invoke-virtual {v12, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_RUN_BUTTON"

    invoke-virtual {v12, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v12, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x409d2da51d16d59fL  # -0.002297570717279471

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
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
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_5b

    const-wide v2, -0x409d2da51d16d59fL  # -0.002297570717279471

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v0
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

    const-wide v0, -0x2973a29c79d723afL  # -8.32699254233657E108

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p0, p1}, Lcom/aide/uidesigner/L;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method private j6(Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x16411941eb6b1cc5L
    .end annotation

    const-string v0, "android.intent.extra.TEXT"

    const-string v1, "android.intent.extra.STREAM"

    const-wide v2, 0x41e3426dfcc780a0L  # 2.5849650942344513E9

    :try_start_9
    sget-boolean v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_26

    const-string v8, "EXTRA_LICENSED"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v8, 0x1

    goto :goto_27

    :cond_26
    const/4 v8, 0x0

    :goto_27
    iput-boolean v8, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we:Z

    if-eqz v5, :cond_36

    const-string v8, "EXTRA_STANDALONE"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_34

    goto :goto_36

    :cond_34
    const/4 v8, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v8, 0x1

    :goto_37
    iput-boolean v8, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_13c

    if-eqz v8, :cond_108

    const-string v8, "android.intent.action.SEND"

    if-eqz v5, :cond_83

    :try_start_3f
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/net/Uri;

    if-eqz v9, :cond_83

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {}, Lcom/aide/uidesigner/e;->j6()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    invoke-static {p0, v0}, Lcom/aide/uidesigner/e;->j6(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_3f .. :try_end_6c} :catchall_13c

    :try_start_6c
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aide/uidesigner/e;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_7e} :catch_80
    .catchall {:try_start_6c .. :try_end_7e} :catchall_13c

    goto/16 :goto_126

    :catch_80
    move-exception v0

    goto/16 :goto_126

    :cond_83
    if-eqz v5, :cond_b0

    :try_start_85
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b0

    invoke-static {}, Lcom/aide/uidesigner/e;->j6()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    invoke-static {v1}, Lcom/aide/uidesigner/e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    :goto_ab
    invoke-direct {p0, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Ljava/lang/String;)V

    goto/16 :goto_126

    :cond_b0
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e2

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e2

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

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

    :goto_df
    iput-boolean v6, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    goto :goto_126

    :cond_e2
    invoke-static {}, Lcom/aide/uidesigner/e;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    if-eqz v0, :cond_ff

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_126

    :cond_ff
    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    goto :goto_ab

    :cond_108
    const-string v0, "EXTRA_FILE"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

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

    goto :goto_df

    :cond_126
    :goto_126
    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v0, :cond_138

    if-eqz p1, :cond_138

    sget v0, Lcom/aide/ui/Na;->designerDrawer:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->gn(I)V

    :cond_138
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH()V
    :try_end_13b
    .catchall {:try_start_85 .. :try_end_13b} :catchall_13c

    return-void

    :catchall_13c
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_149

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_149
    goto :goto_14b

    :goto_14a
    throw v0

    :goto_14b
    goto :goto_14a
.end method

.method public static j6(Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1b6badee7e9d15L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "EXTRA_TRAINER_ACTION"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_19

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    const/4 v4, 0x1

    :cond_18
    return v4

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method static synthetic j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5:Z

    return p0
.end method

.method static synthetic tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    return-object p0
.end method

.method private tp()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x34e5dce085f5550fL
    .end annotation

    const-wide v0, -0x1e968c8c315a8170L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method private u7()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x11fa55d51e9cad4cL
    .end annotation

    const-wide v0, 0x83fd658bbe33b59L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method static synthetic u7(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we:Z

    return p0
.end method

.method private v5()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x168e6ee5720b1607L
    .end annotation

    const-wide v0, 0x2fd23b4365294e48L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PREF_XMLDESIGNER_FILE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
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
    .registers 7

    const-wide v0, 0xf805ae73de5f983L  # 5.143826859186752E-234

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://developer.android.google.cn/reference/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_38

    :cond_33
    const-string v2, ""

    invoke-static {p0, p1, v2}, Lcom/aide/common/b;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    :goto_38
    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method protected j6()V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x6a6828d0bfe8580L
    .end annotation

    const-wide v0, 0x1f63994e3d8e554bL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_SPEAK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {v2, p0}, Lcom/aide/common/TextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J8:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_TRAINER_TASK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_SOUND"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_61

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x3

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Ws:Landroid/media/SoundPool;

    sget v3, Lcom/aide/ui/Qa;->task:I

    invoke-virtual {v2, p0, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v7

    iput v7, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->QX:I

    iget-object v6, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Ws:Landroid/media/SoundPool;

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_62

    :cond_61
    return-void

    :catchall_62
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_6a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6a
    throw v2
.end method

.method j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x59bf16082d9047e5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x40ccb0415a13f210L  # -2.9467014785230974E-4

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ:Z

    if-eqz v0, :cond_3d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_43

    const/16 v1, 0x18

    if-ge v0, v1, :cond_42

    :try_start_20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_3a} :catch_3b
    .catchall {:try_start_20 .. :try_end_3a} :catchall_43

    goto :goto_42

    :catch_3b
    move-exception p1

    goto :goto_42

    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/aide/common/a;->j6(Landroid/app/Activity;Ljava/lang/String;II)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    :cond_42
    :goto_42
    return-void

    :catchall_43
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_5c

    const-wide v2, -0x40ccb0415a13f210L  # -2.9467014785230974E-4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    throw v0
.end method

.method protected j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2b06526d27a26ec0L
    .end annotation

    const-wide v0, -0x3df287d68a6d245L  # -8.206449218979094E289

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->J0:Z

    if-eqz v2, :cond_15

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Ljava/lang/String;)V

    :cond_15
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x32601cdc092f9efdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x37248b6c60bfcd58L  # -9.566802792452096E42

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_26

    const v0, 0x344059

    if-ne p1, v0, :cond_26

    invoke-static {p0, p3}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    :cond_26
    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_41

    const-wide v2, -0x37248b6c60bfcd58L  # -9.566802792452096E42

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const-wide v0, -0x6fe78d9b856a9e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Landroid/support/v4/app/a;->j6(Landroid/content/res/Configuration;)V

    :cond_16
    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 18
    .annotation runtime Labcd/su;
        method = -0x43066c860cbf547L
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-wide v2, 0x16db5858385L

    const-wide v10, 0x4c5a62555188130L

    :try_start_e
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_22

    invoke-static {v10, v11, v8, v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5:Z

    invoke-static {}, Labcd/F;->DW()Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Lcom/aide/uidesigner/h;

    invoke-direct {v1, v8}, Lcom/aide/uidesigner/h;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    invoke-static {v8, v1}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_LANGUAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_56

    if-eq v1, v12, :cond_50

    if-eq v1, v3, :cond_56

    if-eq v1, v2, :cond_50

    goto :goto_5b

    :cond_50
    sget v1, Lcom/aide/ui/Sa;->ActivityThemeDesignerDark:I

    invoke-static {v8, v1}, Lcom/b;->dark(Landroid/app/Activity;I)V

    goto :goto_5b

    :cond_56
    sget v1, Lcom/aide/ui/Sa;->ActivityThemeDesignerLight:I

    invoke-static {v8, v1}, Lcom/b;->light(Landroid/app/Activity;I)V

    :goto_5b
    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;)V

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v1, Lcom/aide/ui/Oa;->designer:I

    invoke-virtual {v8, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->DW(Landroid/app/Activity;)V

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v1

    if-nez v1, :cond_78

    sget v1, Lcom/aide/ui/Na;->designerFrame:I

    invoke-virtual {v8, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    :cond_78
    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    :cond_8b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v1

    const/4 v13, 0x4

    if-eqz v1, :cond_b4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/aide/ui/R$drawable;->ic_launcher:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_HEADER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/aide/common/Za;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V

    goto :goto_126

    :cond_b4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v4, Landroid/widget/ArrayAdapter;

    new-array v5, v13, [Ljava/lang/String;

    const v6, 0x7f0d06be

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const v6, 0x7f0d06bf

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x7f0d06c0

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const v3, 0x7f0d06c1

    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const v2, 0x1090009

    invoke-direct {v4, v8, v2, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v2, Lcom/aide/uidesigner/i;

    invoke-direct {v2, v8}, Lcom/aide/uidesigner/i;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    sget v1, Lcom/aide/ui/Na;->designerDrawer:I

    invoke-virtual {v8, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/v4/widget/DrawerLayout;

    new-instance v14, Landroid/support/v4/app/a;

    sget v4, Lcom/aide/ui/R$drawable;->ic_drawer:I

    const v5, 0x104000a

    const v6, 0x104000a

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v14, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    invoke-virtual {v7, v14}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$c;)V

    :goto_126
    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v1

    if-eqz v1, :cond_203

    sget v1, Lcom/aide/ui/Na;->designerHeaderLearnTask:I

    invoke-virtual {v8, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/aide/ui/Na;->designerHeaderLearnTaskText:I

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/aide/ui/Na;->designerHeaderLearnTaskTitle:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/aide/ui/Na;->designerHeaderLearnButton:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_TRAINER_TITILE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_TRAINER_TASK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_TRAINER_BUTTON"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->VH(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->v5(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v7, Lcom/aide/uidesigner/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v2, 0x43160000  # 150.0f

    mul-float v1, v1, v2

    neg-float v5, v1

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v10, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/aide/uidesigner/j;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;FFFFLandroid/view/View;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/aide/ui/Na;->designerHeaderLearnTaskInner:I

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/uidesigner/k;

    invoke-direct {v4, v8}, Lcom/aide/uidesigner/k;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lcom/aide/ui/Na;->designerHeaderLearnTaskInner:I

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/uidesigner/l;

    invoke-direct {v4, v8, v15}, Lcom/aide/uidesigner/l;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7()Z

    move-result v3

    if-eqz v3, :cond_1fa

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sget v4, Lcom/aide/ui/Na;->designerHeaderLearnTaskInner:I

    invoke-virtual {v8, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x42400000  # 48.0f

    mul-float v5, v5, v3

    float-to-int v5, v5

    const/high16 v6, 0x41d80000  # 27.0f

    mul-float v3, v3, v6

    float-to-int v3, v3

    invoke-virtual {v4, v5, v3, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    sget v4, Lcom/aide/ui/Na;->designerContent:I

    invoke-virtual {v8, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5, v0, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1fa
    new-instance v3, Lcom/aide/uidesigner/m;

    invoke-direct {v3, v8, v14, v10}, Lcom/aide/uidesigner/m;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v14, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20e

    :cond_203
    sget v1, Lcom/aide/ui/Na;->designerHeaderLearnTask:I

    invoke-virtual {v8, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_20e
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    sget v1, Lcom/aide/ui/Na;->designerContent:I

    invoke-virtual {v8, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v1, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v1, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v1, Lcom/aide/ui/Na;->designerViewList:I

    invoke-virtual {v8, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/aide/uidesigner/n;

    invoke-direct {v2, v8}, Lcom/aide/uidesigner/n;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-nez v9, :cond_257

    const/4 v0, 0x1

    :cond_257
    invoke-direct {v8, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Z)V

    if-eqz v9, :cond_261

    iget-object v0, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v0, v9}, Lcom/aide/common/UndoManager;->j6(Landroid/os/Bundle;)V

    :cond_261
    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW()V

    iput-boolean v12, v8, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5:Z
    :try_end_266
    .catchall {:try_start_e .. :try_end_266} :catchall_267

    return-void

    :catchall_267
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_274

    const-wide v1, 0x4c5a62555188130L

    invoke-static {v0, v1, v2, v8, v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_274
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x15bd7a5cc96cd3ecL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xf0a404babd1c833L  # 3.225089883366424E-236

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0xf0a404babd1c833L  # 3.225089883366424E-236

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const-wide v0, 0x159f25fcd9d94df4L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    sget v3, Lcom/aide/ui/Pa;->designer_options_menu:I

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_17

    const/4 p1, 0x1

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected onDestroy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2496b042e8a2354fL
    .end annotation

    const-wide v0, 0x36b2a9abb82ed7a8L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    if-eqz v2, :cond_1a

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    if-eqz v3, :cond_1a

    invoke-virtual {v2, v3}, Lcom/aide/common/UndoManager;->DW(Lcom/aide/common/UndoManager$a;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x80b95ec9f2c54d1L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p2}, Landroid/support/v4/app/a;->j6(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2c

    :goto_27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_b6

    :cond_2c
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/aide/ui/Na;->designerMenuRun:I

    if-ne v0, v2, :cond_49

    const-string v0, "UI Designer Menu: Run"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "EXTRA_TRAINER_ACTION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_27

    :cond_49
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/aide/ui/Na;->designerMenuShowBorders:I

    if-ne v0, v2, :cond_5a

    const-string v0, "UI Designer Menu: Edit mode"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Z)V

    goto :goto_b6

    :cond_5a
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/aide/ui/Na;->designerMenuHideBorders:I

    if-ne v0, v1, :cond_6b

    const-string v0, "UI Designer Menu: Preview mode"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Z)V

    goto :goto_b6

    :cond_6b
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/aide/ui/Na;->designerMenuUndo:I

    if-ne v0, v1, :cond_7e

    const-string v0, "UI Designer Menu: Undo"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v0}, Lcom/aide/common/UndoManager;->Hw()V

    goto :goto_b6

    :cond_7e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/aide/ui/Na;->designerMenuRedo:I

    if-ne v0, v1, :cond_91

    const-string v0, "UI Designer Menu: Redo"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    invoke-virtual {v0}, Lcom/aide/common/UndoManager;->FH()V

    goto :goto_b6

    :cond_91
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/aide/ui/Na;->designerMenuPaste:I

    if-ne v0, v1, :cond_a4

    const-string v0, "UI Designer Menu: Paste"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->J8()V

    goto :goto_b6

    :cond_a4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/aide/ui/Na;->designerMenuCopy:I

    if-ne v0, v1, :cond_b6

    const-string v0, "UI Designer Menu: Copy"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->FH()V
    :try_end_b6
    .catchall {:try_start_0 .. :try_end_b6} :catchall_b7

    :cond_b6
    :goto_b6
    return v3

    :catchall_b7
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v1, :cond_cc

    const-wide v2, 0x80b95ec9f2c54d1L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cc
    goto :goto_ce

    :goto_cd
    throw v0

    :goto_ce
    goto :goto_cd
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const-wide v0, -0x24bb17b56bf74398L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_22

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Z)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1263f4d9c6dd46c7L
    .end annotation

    const-wide v0, -0x2b3c118df3473a48L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo:Landroid/support/v4/app/a;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/support/v4/app/a;->j6()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    const-wide v0, 0xaa1df8f4bec2b9fL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
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

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_45

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn()Z

    move-result v3

    if-eqz v3, :cond_45

    const/4 v3, 0x1

    goto :goto_46

    :cond_45
    const/4 v3, 0x0

    :goto_46
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuShowBorders:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn()Z

    move-result v3

    if-nez v3, :cond_5d

    const/4 v3, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v3, 0x0

    :goto_5e
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

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

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuCopy:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we:Z

    if-nez v3, :cond_b3

    iget-object v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v3}, Lcom/aide/uidesigner/Pa;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b3

    const/4 v4, 0x1

    :cond_b3
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget v2, Lcom/aide/ui/Na;->designerMenuCopy:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_c4
    .catchall {:try_start_5 .. :try_end_c4} :catchall_c5

    return v5

    :catchall_c5
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_cd

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_cd
    throw v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3730a9630e5df08L
    .end annotation

    const-wide v0, 0x19d2cce6d9573979L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn:Lcom/aide/common/UndoManager;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Lcom/aide/common/UndoManager;->DW(Landroid/os/Bundle;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1a1464d0b8e1ac15L
    .end annotation

    const-wide v0, 0x2edc60e11c801408L  # 5.843185123281876E-83

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "Android UI Designer"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x188cc9c1207d6761L
    .end annotation

    const-wide v0, 0x17e3c16ed509344cL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "Android UI Designer"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
