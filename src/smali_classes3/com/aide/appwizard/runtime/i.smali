.class public Lcom/aide/appwizard/runtime/i;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/appwizard/runtime/i$a;,
        Lcom/aide/appwizard/runtime/i$b;,
        Lcom/aide/appwizard/runtime/i$c;,
        Lcom/aide/appwizard/runtime/i$d;,
        Lcom/aide/appwizard/runtime/i$e;
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
.field protected FH:Lcom/aide/appwizard/runtime/AppWizardActivity;
    .annotation runtime Labcd/ru;
        field = -0x19453bfce0932614L
    .end annotation
.end field

.field protected Hw:Lorg/w3c/dom/Document;
    .annotation runtime Labcd/ru;
        field = -0x7052c7755e19000L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/appwizard/runtime/i;

    const-wide v1, 0x3967fa71d639a65bL  # 3.6944420036487565E-32

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x4c17ab290bc87b15L  # 3.714254478552945E58

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/AppWizardActivity;->EQ()Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    if-nez v3, :cond_1d

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i;->j6()V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method private DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x101d10c5a8d95cf5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xc1ab1c980c304b5L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1b

    if-lez p1, :cond_19

    return-object v0

    :cond_19
    const/4 p1, 0x0

    return-object p1

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0xc1ab1c980c304b5L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method private DW(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1d2d165e00c7e8L
    .end annotation

    const-wide v0, 0x6ad1d842efcd6570L  # 3.580700781105066E206

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    invoke-virtual {v2, v3, p1}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lorg/w3c/dom/Document;I)V

    invoke-direct {p0, p1}, Lcom/aide/appwizard/runtime/i;->j6(I)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v3, :cond_2c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method static synthetic j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/runtime/i;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2a504d354860c759L
    .end annotation

    const-wide v0, -0x276dab88425f323bL  # -4.6223160714834905E118

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x1

    if-eq p1, v2, :cond_19

    const/4 v2, 0x2

    if-eq p1, v2, :cond_13

    goto :goto_1e

    :cond_13
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->we()V

    goto :goto_1e

    :cond_19
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    :goto_1e
    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v3, :cond_2c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method static synthetic j6(Lcom/aide/appwizard/runtime/i;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/appwizard/runtime/i;->DW(I)V

    return-void
.end method


# virtual methods
.method public DW()Lcom/aide/appwizard/runtime/i$a;
    .registers 6

    const-wide v0, 0x1d7d29b517f11351L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/appwizard/runtime/i$a;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v4, "app"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-direct {v2, p0, v3}, Lcom/aide/appwizard/runtime/i$a;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v2

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public FH()Lcom/aide/appwizard/runtime/i$b;
    .registers 5

    const-wide v0, -0x8ca4bfe03b32bd8L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i;->DW()Lcom/aide/appwizard/runtime/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$a;->DW()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5bedba4be286d91L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/runtime/i;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    :cond_14
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1f

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x5bedba4be286d91L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x290b45ccd2a005fL

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3b

    :cond_c
    :try_start_c
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v3, "app"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/aide/appwizard/runtime/i;->DW(I)V
    :try_end_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_27} :catch_28
    .catchall {:try_start_c .. :try_end_27} :catchall_3b

    goto :goto_29

    :catch_28
    move-exception v2

    :goto_29
    :try_start_29
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i;->DW()Lcom/aide/appwizard/runtime/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$a;->j6()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->j6()Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->j6()Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->j6()Lcom/aide/appwizard/runtime/i$c;
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public j6(Lorg/w3c/dom/Document;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x21f078fd432831cbL  # -1.2302571256653955E145

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    invoke-direct {p0, p2}, Lcom/aide/appwizard/runtime/i;->j6(I)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x21f078fd432831cbL  # -1.2302571256653955E145

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x39c9f32bc287a92cL  # 2.558856366666091E-30

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    if-nez p3, :cond_17

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_17
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    :goto_22
    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, 0x39c9f32bc287a92cL  # 2.558856366666091E-30

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method
