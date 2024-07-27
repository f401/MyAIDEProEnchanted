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
    .registers 4

    const-wide v2, 0x2870658b1e6f54d5L    # 6.658200683087362E-114

    const-class v0, Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x5fd1ef4616069ce3L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5fd1ef4616069ce3L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;-><init>()V

    new-instance v0, Lcom/aide/appwizard/B;

    invoke-direct {v0, p0}, Lcom/aide/appwizard/B;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    iput-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->yS:Lcom/aide/appwizard/B;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/appwizard/AppWizardDesignActivity;)Lcom/aide/common/UndoManager;
    .registers 2

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    return-object v0
.end method

.method private DW(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x37b750409e20968L
    .end annotation

    const-wide v2, -0x9d1bee9cf882ca8L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9d1bee9cf882ca8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/aide/common/pa;->j6(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Z)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xb0f378264b57d7cL
    .end annotation

    const-wide v4, -0x846236cc1c550ecL    # -5.336934897432936E268

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x846236cc1c550ecL    # -5.336934897432936E268

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    const-string v0, "AppWizard"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_APPWIZARD_EDITMODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    instance-of v2, v0, Lcom/aide/appwizard/h;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/aide/appwizard/h;

    invoke-virtual {v0}, Lcom/aide/appwizard/h;->OW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->aM()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method private FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xcb060b1191908b0L
    .end annotation

    const-wide v2, -0x53c0715d882bb60L    # -2.32024858354103E283

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x53c0715d882bb60L    # -2.32024858354103E283

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private XL()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x38fc8a37c9e79ba0L
    .end annotation

    const-wide v2, 0x255d30a936698e0L    # 2.08567295649769E-297

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x255d30a936698e0L    # 2.08567295649769E-297

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->J0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/assets/app.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private aM()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x168d1a5d170b9ad4L
    .end annotation

    const-wide v2, -0x1e9a14f80193c15cL    # -1.540743761228545E161

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e9a14f80193c15cL    # -1.540743761228545E161

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Na;->appwizardModeButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->QX()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/aide/ui/R$drawable;->ic_menu_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    sget v0, Lcom/aide/ui/Na;->appwizardEditButtonLayout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->QX()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/aide/ui/Na;->appwizardUndoButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v1}, Lcom/aide/common/UndoManager;->DW()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lcom/aide/ui/Na;->appwizardRedoButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v1}, Lcom/aide/common/UndoManager;->j6()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_1
    sget v1, Lcom/aide/ui/R$drawable;->ic_menu_view:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private j3()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1d2e7131c0dd8323L
    .end annotation

    const-wide v2, 0x240d863792b5541bL

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x240d863792b5541bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->aM()V

    sget v0, Lcom/aide/ui/Na;->appwizardModeButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/appwizard/b;

    invoke-direct {v1, p0}, Lcom/aide/appwizard/b;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/aide/ui/Na;->appwizardEditButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/appwizard/c;

    invoke-direct {v1, p0}, Lcom/aide/appwizard/c;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/aide/ui/Na;->appwizardUndoButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/appwizard/d;

    invoke-direct {v1, p0}, Lcom/aide/appwizard/d;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/aide/ui/Na;->appwizardRedoButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/appwizard/e;

    invoke-direct {v1, p0}, Lcom/aide/appwizard/e;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/appwizard/AppWizardDesignActivity;)Lcom/aide/appwizard/B;
    .registers 2

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->yS:Lcom/aide/appwizard/B;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/appwizard/AppWizardDesignActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/appwizard/AppWizardDesignActivity;->DW(Z)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x3ac459245b5b885L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ac459245b5b885L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->BT:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->aM()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected EQ()Lorg/w3c/dom/Document;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2afe83b30325c105L
    .end annotation

    const-wide v4, 0x222778ceaf5d9a9dL

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x222778ceaf5d9a9dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/appwizard/D;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/aide/appwizard/AppWizardDesignActivity;->DW(Ljava/lang/String;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(I)Ljava/lang/String;
    .registers 8

    const-wide v4, -0x726d1b5c95739807L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x726d1b5c95739807L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/appwizard/runtime/i$b;->j6(I)Lcom/aide/appwizard/runtime/i$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/appwizard/runtime/i$c;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/aide/appwizard/AppWizardDesignActivity;->j6(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x32130dd7d27ad830L    # 1.7668872522698873E-67

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x32130dd7d27ad830L    # 1.7668872522698873E-67

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aide/appwizard/D;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/AppProjects/AppWizard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x3f167edb633e7524L    # 8.58136561973822E-5

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3f167edb633e7524L    # 8.58136561973822E-5

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public QX()Z
    .registers 7

    const-wide v4, -0x8e65d967b078565L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8e65d967b078565L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "AppWizard"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_APPWIZARD_EDITMODE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Ws()Lcom/aide/common/UndoManager;
    .registers 5

    const-wide v2, 0x36fc7e7e9ac3b391L    # 7.985753132472652E-44

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36fc7e7e9ac3b391L    # 7.985753132472652E-44

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x9992b12985cb0a0L
    .end annotation

    const-wide v2, 0x5a3d045189ae61e0L    # 4.9105342871922664E126

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5a3d045189ae61e0L    # 4.9105342871922664E126

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/h;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v2, -0x551381ce97647d43L    # -6.360756402100047E-102

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x551381ce97647d43L    # -6.360756402100047E-102

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->J8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/layout/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const-wide v8, 0x3319bbb0c7e75698L    # 1.5638465477090001E-62

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3319bbb0c7e75698L    # 1.5638465477090001E-62

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-direct {p0, p2}, Lcom/aide/appwizard/AppWizardDesignActivity;->FH(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/aide/appwizard/AppWizardDesignActivity;->DW(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Document;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected j6(Lorg/w3c/dom/Document;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xd77a9d00ce1e740L
    .end annotation

    const-wide v2, 0x68083dadac6800L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x68083dadac6800L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/aide/appwizard/C;

    invoke-direct {v0}, Lcom/aide/appwizard/C;-><init>()V

    invoke-virtual {v0, p1}, Lcom/aide/appwizard/C;->j6(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0, p2}, Lcom/aide/common/UndoManager;->DW(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->XL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v0}, Lcom/aide/appwizard/AppWizardDesignActivity;->FH(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x864a34031fe5593L
    .end annotation

    const-wide v8, 0x5808b023f4fb0fbL

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5808b023f4fb0fbL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Labcd/F;->DW()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/aide/appwizard/a;

    invoke-direct {v0, p0}, Lcom/aide/appwizard/a;-><init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_1
    new-instance v0, Lcom/aide/common/UndoManager;

    invoke-direct {v0}, Lcom/aide/common/UndoManager;-><init>()V

    iput-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v0, p0}, Lcom/aide/common/UndoManager;->j6(Lcom/aide/common/UndoManager$a;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v0, p1}, Lcom/aide/common/UndoManager;->j6(Landroid/os/Bundle;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/aide/appwizard/runtime/AppWizardActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xea9901c0b2b5ac0L
    .end annotation

    const-wide v2, -0x115c4d0b7bac2e80L    # -9.114480460951228E224

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x115c4d0b7bac2e80L    # -9.114480460951228E224

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

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

    const-wide v2, 0x3cbf9ee235b355d7L    # 4.388245209864396E-16

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3cbf9ee235b355d7L    # 4.388245209864396E-16

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onDestroy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x24be1af5f4975bedL
    .end annotation

    const-wide v2, -0x190a70d5421f8eabL    # -9.380605635337367E187

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x190a70d5421f8eabL    # -9.380605635337367E187

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v0, p0}, Lcom/aide/common/UndoManager;->DW(Lcom/aide/common/UndoManager$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1805c952b126d304L
    .end annotation

    const-wide v2, 0x52007dba470d4f8cL    # 1.0251773713287627E87

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x52007dba470d4f8cL    # 1.0251773713287627E87

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->gW:Lcom/aide/common/UndoManager;

    invoke-virtual {v0, p1}, Lcom/aide/common/UndoManager;->DW(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected tp()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x5498a4e18abc4683L
    .end annotation

    const-wide v2, 0x40c54611c8523255L    # 10892.138925814224

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x40c54611c8523255L    # 10892.138925814224

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Oa;->appwizard:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    sget v0, Lcom/aide/ui/Na;->appwizardContentContainer:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we()V
    .registers 5

    const-wide v2, -0xb9b8c7a0e65d5c4L    # -4.685613949928836E252

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/AppWizardDesignActivity;->rN:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb9b8c7a0e65d5c4L    # -4.685613949928836E252

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->we()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;->BT:Z

    invoke-direct {p0}, Lcom/aide/appwizard/AppWizardDesignActivity;->j3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/AppWizardDesignActivity;->er:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
