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
    .registers 3

    const-class v0, Lcom/aide/appwizard/h;

    const-wide v1, 0x2cb3d8bbc8f7fe1cL  # 2.378635005665573E-93

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x5439df02e4222438L  # 5.526041508498774E97

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/appwizard/h;)Lcom/aide/appwizard/AppWizardDesignActivity;
    .registers 1

    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object p0

    return-object p0
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x78aa17028843c60L
    .end annotation

    const-wide v0, 0x56528c8c342f550L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2c

    :cond_c
    :try_start_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v3}, Lcom/aide/uidesigner/Pa;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_29} :catch_2a
    .catchall {:try_start_c .. :try_end_29} :catchall_2c

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method private XX()Lcom/aide/common/UndoManager;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4755d2038ce77733L
    .end annotation

    const-wide v0, -0x15f50be7f51f8a49L  # -6.6021005716597116E202

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/AppWizardDesignActivity;->Ws()Lcom/aide/common/UndoManager;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private br()Lcom/aide/appwizard/AppWizardDesignActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x170ad39309777e27L
    .end annotation

    const-wide v0, -0x2b3f54688dbcfb35L  # -1.823104060992767E100

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->DW()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/aide/appwizard/AppWizardDesignActivity;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public static j6(Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/h;
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x2903f474e693b661L  # -1.0538414561262669E111

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Lcom/aide/appwizard/h;

    invoke-direct {v3}, Lcom/aide/appwizard/h;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ARG_SECTION_TITLE"

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ARG_SECTION_LAYOUT"

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$c;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ARG_SECTION_ID"

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$c;->FH()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->J0(Landroid/os/Bundle;)V
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_36

    return-object v3

    :catchall_36
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v4, :cond_3e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v3
.end method

.method static synthetic j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;
    .registers 1

    iget-object p0, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/appwizard/h;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/appwizard/h;->DW(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public KD()V
    .registers 5

    const-wide v0, -0x1638f8065b2202fdL  # -3.5258415978739446E201

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->KD()V

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    if-eqz v2, :cond_22

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2, v3}, Lcom/aide/common/UndoManager;->DW(Lcom/aide/common/UndoManager$a;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public OW()V
    .registers 5

    const-wide v0, 0x1ed7d9a4fd0f79f8L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/AppWizardDesignActivity;->QX()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->DW(Z)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/h;->Qq:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x19db752ec1f2473L  # -6.122295791097645E300

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    sget v0, Lcom/aide/ui/Oa;->appwizard_section:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v2, Lcom/aide/ui/Na;->appwizardSectionContainer:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->VH()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ARG_SECTION_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/AppWizardDesignActivity;->J8()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/aide/appwizard/h;->br()Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->VH()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ARG_SECTION_LAYOUT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/appwizard/AppWizardDesignActivity;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    if-eqz v2, :cond_5c

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2, v3}, Lcom/aide/common/UndoManager;->DW(Lcom/aide/common/UndoManager$a;)V

    :cond_5c
    new-instance v2, Lcom/aide/appwizard/g;

    invoke-direct {p0}, Lcom/aide/appwizard/h;->XX()Lcom/aide/common/UndoManager;

    move-result-object v8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/aide/appwizard/g;-><init>(Lcom/aide/appwizard/h;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;I)V

    iput-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->EQ()V

    iget-object v2, p0, Lcom/aide/appwizard/h;->aj:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2, v1}, Lcom/aide/uidesigner/Pa;->FH(Z)V

    invoke-virtual {p0}, Lcom/aide/appwizard/h;->OW()V
    :try_end_74
    .catchall {:try_start_0 .. :try_end_74} :catchall_75

    return-object v0

    :catchall_75
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/h;->sy:Z

    if-eqz v1, :cond_87

    const-wide v2, -0x19db752ec1f2473L  # -6.122295791097645E300

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    throw v0
.end method
