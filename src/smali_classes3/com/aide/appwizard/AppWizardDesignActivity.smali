.class public Lcom/aide/appwizard/AppWizardDesignActivity;
.super Lcom/aide/appwizard/runtime/AppWizardActivity;

# interfaces
.implements Lcom/aide/common/UndoManager$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static er:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static rN:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private BT:Z
    .annotation runtime Labcd/ru;
        field = -0x4a466c526167425fL
    .end annotation
.end field

.field private gW:Lcom/aide/common/UndoManager;
    .annotation runtime Labcd/ru;
        field = 0x245e92561b4a9608L
    .end annotation
.end field

.field private yS:Lcom/aide/appwizard/B;
    .annotation runtime Labcd/ru;
        field = -0x26efc5e24ba00b80L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/appwizard/AppWizardDesignActivity;

    const-wide v1, 0x2870658b1e6f54d5L  # 6.658200683087362E-114

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x5fd1ef4616069ce3L

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;-><init>()V

    new-instance v3, Lcom/aide/appwizard/B;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/B;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    iput-object v3, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->yS:Lcom/aide/appwizard/B;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method static synthetic DW(Lcom/aide/appwizard/AppWizardDesignActivity;)Lcom/aide/common/UndoManager;
    .registers 1

    iget-object p0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    return-object p0
.end method

.method private DW(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x37b750409e20968L
    .end annotation

    const-wide v0, -0x9d1bee9cf882ca8L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lcom/aide/common/pa;->j6(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object v3

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private DW(Z)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xb0f378264b57d7cL
    .end annotation

    const-wide v0, -0x846236cc1c550ecL  # -5.336934897432936E268

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    const-string v2, "AppWizard"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PREF_APPWIZARD_EDITMODE"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/r;->FH()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    instance-of v4, v3, Lcom/aide/appwizard/h;

    if-eqz v4, :cond_2b

    check-cast v3, Lcom/aide/appwizard/h;

    invoke-virtual {v3}, Lcom/aide/appwizard/h;->OW()V

    goto :goto_2b

    :cond_41
    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->aM()V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v2

    :goto_54
    goto :goto_53
.end method

.method private FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xcb060b1191908b0L
    .end annotation

    const-wide v0, -0x53c0715d882bb60L  # -2.32024858354103E283

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method private XL()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x38fc8a37c9e79ba0L
    .end annotation

    const-wide v0, 0x255d30a936698e0L  # 2.08567295649769E-297

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->J0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/assets/app.xml"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-object v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method private aM()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x168d1a5d170b9ad4L
    .end annotation

    const-wide v0, -0x1e9a14f80193c15cL  # -1.540743761228545E161

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v2, Lcom/aide/ui/Na;->appwizardModeButton:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->QX()Z

    move-result v3

    if-eqz v3, :cond_20

    sget v3, Lcom/aide/ui/R$drawable;->ic_menu_edit:I

    :goto_1c
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_23

    :cond_20
    sget v3, Lcom/aide/ui/R$drawable;->ic_menu_view:I

    goto :goto_1c

    :goto_23
    sget v2, Lcom/aide/ui/Na;->appwizardEditButtonLayout:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->QX()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x0

    goto :goto_33

    :cond_31
    const/16 v3, 0x8

    :goto_33
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/aide/ui/Na;->appwizardUndoButton:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v3}, Lcom/aide/common/UndoManager;->DW()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    sget v2, Lcom/aide/ui/Na;->appwizardRedoButton:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v3}, Lcom/aide/common/UndoManager;->j6()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_55

    return-void

    :catchall_55
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5d
    goto :goto_5f

    :goto_5e
    throw v2

    :goto_5f
    goto :goto_5e
.end method

.method private j3()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1d2e7131c0dd8323L
    .end annotation

    const-wide v0, 0x240d863792b5541bL

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->aM()V

    sget v2, Lcom/aide/ui/Na;->appwizardModeButton:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/appwizard/b;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/b;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/aide/ui/Na;->appwizardEditButton:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/appwizard/c;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/c;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/aide/ui/Na;->appwizardUndoButton:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/appwizard/d;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/d;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/aide/ui/Na;->appwizardRedoButton:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/appwizard/e;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/e;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

    return-void

    :catchall_48
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    throw v2
.end method

.method static synthetic j6(Lcom/aide/appwizard/AppWizardDesignActivity;)Lcom/aide/appwizard/B;
    .registers 1

    iget-object p0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->yS:Lcom/aide/appwizard/B;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/appwizard/AppWizardDesignActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/appwizard/AppWizardDesignActivity;->DW(Z)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x3ac459245b5b885L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->BT:Z

    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->aM()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected EQ()Lorg/w3c/dom/Document;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2afe83b30325c105L
    .end annotation

    const-wide v0, 0x222778ceaf5d9a9dL

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_26

    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/appwizard/D;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/aide/appwizard/AppWizardDesignActivity;->DW(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_23
    .catchall {:try_start_c .. :try_end_22} :catchall_26

    return-object v0

    :catch_23
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public FH(I)Ljava/lang/String;
    .registers 7

    const-wide v0, -0x726d1b5c95739807L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/appwizard/runtime/i$b;->j6(I)Lcom/aide/appwizard/runtime/i$c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/appwizard/runtime/i$c;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/aide/appwizard/AppWizardDesignActivity;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return-object p1

    :catchall_2f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_3c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x32130dd7d27ad830L  # 1.7668872522698873E-67

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aide/appwizard/D;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/AppProjects/AppWizard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-object v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public J8()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x3f167edb633e7524L  # 8.58136561973822E-5

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-object v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public QX()Z
    .registers 6

    const-wide v0, -0x8e65d967b078565L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "AppWizard"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PREF_APPWIZARD_EDITMODE"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public Ws()Lcom/aide/common/UndoManager;
    .registers 5

    const-wide v0, 0x36fc7e7e9ac3b391L  # 7.985753132472652E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method protected j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x9992b12985cb0a0L
    .end annotation

    const-wide v0, 0x5a3d045189ae61e0L  # 4.9105342871922664E126

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/h;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x551381ce97647d43L  # -6.360756402100047E-102

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->J8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2e

    return-object p1

    :cond_2c
    const/4 p1, 0x0

    return-object p1

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3319bbb0c7e75698L  # 1.5638465477090001E-62

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_2f

    if-eqz v0, :cond_2e

    :try_start_1e
    invoke-direct {p0, p2}, Lcom/aide/appwizard/AppWizardDesignActivity;->FH(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/aide/appwizard/AppWizardDesignActivity;->DW(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Document;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_2d
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2f

    goto :goto_2e

    :catch_2d
    move-exception p1

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_45

    const-wide v2, 0x3319bbb0c7e75698L  # 1.5638465477090001E-62

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method protected j6(Lorg/w3c/dom/Document;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xd77a9d00ce1e740L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x68083dadac6800L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_39

    :cond_11
    :try_start_11
    new-instance v0, Lcom/aide/appwizard/C;

    invoke-direct {v0}, Lcom/aide/appwizard/C;-><init>()V

    invoke-virtual {v0, p1}, Lcom/aide/appwizard/C;->j6(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/aide/common/UndoManager;->DW(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v0}, Lcom/aide/appwizard/AppWizardDesignActivity;->FH(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_37
    .catchall {:try_start_11 .. :try_end_36} :catchall_39

    goto :goto_38

    :catch_37
    move-exception p1

    :goto_38
    return-void

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0x68083dadac6800L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x864a34031fe5593L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, 0x5808b023f4fb0fbL

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Labcd/F;->DW()Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Lcom/aide/appwizard/a;

    invoke-direct {v0, p0}, Lcom/aide/appwizard/a;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_34
    new-instance v0, Lcom/aide/common/UndoManager;

    invoke-direct {v0}, Lcom/aide/common/UndoManager;-><init>()V

    iput-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v0, p0}, Lcom/aide/common/UndoManager;->j6(Lcom/aide/common/UndoManager$a;)V

    if-eqz p1, :cond_45

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v0, p1}, Lcom/aide/common/UndoManager;->j6(Landroid/os/Bundle;)V

    :cond_45
    invoke-super {p0, p1}, Lcom/aide/appwizard/runtime/AppWizardActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_51

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xea9901c0b2b5ac0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x115c4d0b7bac2e80L  # -9.114480460951228E224

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x115c4d0b7bac2e80L  # -9.114480460951228E224

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

    const-wide v0, 0x3cbf9ee235b355d7L  # 4.388245209864396E-16

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x1

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method protected onDestroy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x24be1af5f4975bedL
    .end annotation

    const-wide v0, -0x190a70d5421f8eabL  # -9.380605635337367E187

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v2, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p0}, Lcom/aide/common/UndoManager;->DW(Lcom/aide/common/UndoManager$a;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1805c952b126d304L
    .end annotation

    const-wide v0, 0x52007dba470d4f8cL  # 1.0251773713287627E87

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Lcom/aide/common/UndoManager;->DW(Landroid/os/Bundle;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected tp()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x5498a4e18abc4683L
    .end annotation

    const-wide v0, 0x40c54611c8523255L  # 10892.138925814224

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v2, Lcom/aide/ui/Oa;->appwizard:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    sget v0, Lcom/aide/ui/Na;->appwizardContentContainer:I
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public we()V
    .registers 5

    const-wide v0, -0xb9b8c7a0e65d5c4L  # -4.685613949928836E252

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->we()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->BT:Z

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->j3()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
