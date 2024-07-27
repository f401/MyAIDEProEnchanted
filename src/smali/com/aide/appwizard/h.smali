.class public Lcom/aide/appwizard/h;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static Qq:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static sy:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private aj:Lcom/aide/uidesigner/Pa;
    .annotation runtime Labcd/ru;
        field = -0x19827c0978ee9cdcL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x2cb3d8bbc8f7fe1cL    # 2.378635005665573E-93

    const-class v0, Lcom/aide/appwizard/h;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x5439df02e4222438L    # 5.526041508498774E97

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5439df02e4222438L    # 5.526041508498774E97

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/appwizard/h;)Lcom/aide/appwizard/AppWizardDesignActivity;
    .registers 2

    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v0

    return-object v0
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x78aa17028843c60L
    .end annotation

    const-wide v2, 0x56528c8c342f550L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x56528c8c342f550L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v1}, Lcom/aide/uidesigner/Pa;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private XX()Lcom/aide/common/UndoManager;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4755d2038ce77733L
    .end annotation

    const-wide v2, -0x15f50be7f51f8a49L    # -6.6021005716597116E202

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15f50be7f51f8a49L    # -6.6021005716597116E202

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/AppWizardDesignActivity;->Ws()Lcom/aide/common/UndoManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private br()Lcom/aide/appwizard/AppWizardDesignActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x170ad39309777e27L
    .end annotation

    const-wide v2, -0x2b3f54688dbcfb35L    # -1.823104060992767E100

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b3f54688dbcfb35L    # -1.823104060992767E100

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->DW()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/AppWizardDesignActivity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/h;
    .registers 9

    const-wide v6, -0x2903f474e693b661L    # -1.0538414561262669E111

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2903f474e693b661L    # -1.0538414561262669E111

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/appwizard/h;

    invoke-direct {v0}, Lcom/aide/appwizard/h;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_SECTION_TITLE"

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ARG_SECTION_LAYOUT"

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$c;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ARG_SECTION_ID"

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$c;->FH()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->J0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;
    .registers 2

    iget-object v0, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/appwizard/h;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/appwizard/h;->DW(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public KD()V
    .registers 5

    const-wide v2, -0x1638f8065b2202fdL    # -3.5258415978739446E201

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1638f8065b2202fdL    # -3.5258415978739446E201

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->KD()V

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0, v1}, Lcom/aide/common/UndoManager;->DW(Lcom/aide/common/UndoManager$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public OW()V
    .registers 5

    const-wide v2, 0x1ed7d9a4fd0f79f8L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ed7d9a4fd0f79f8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/appwizard/AppWizardDesignActivity;->QX()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->DW(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16

    const-wide v10, -0x19db752ec1f2473L    # -6.122295791097645E300

    :try_start_0
    sget-boolean v2, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x19db752ec1f2473L    # -6.122295791097645E300

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget v2, Lcom/aide/ui/Oa;->appwizard_section:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v9, v0

    sget v2, Lcom/aide/ui/Na;->appwizardSectionContainer:I

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->VH()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ARG_SECTION_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/AppWizardDesignActivity;->J8()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->VH()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "ARG_SECTION_LAYOUT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/appwizard/AppWizardDesignActivity;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2, v3}, Lcom/aide/common/UndoManager;->DW(Lcom/aide/common/UndoManager$a;)V

    :cond_1
    new-instance v2, Lcom/aide/appwizard/g;

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/aide/appwizard/g;-><init>(Lcom/aide/appwizard/h;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;I)V

    iput-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    iget-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->EQ()V

    iget-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->FH(Z)V

    invoke-virtual {p0}, Lcom/aide/appwizard/h;->OW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v2, :cond_2

    move-wide v4, v10

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v3
.end method
