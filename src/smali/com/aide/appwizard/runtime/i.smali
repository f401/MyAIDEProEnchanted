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
    .registers 4

    const-wide v2, 0x3967fa71d639a65bL    # 3.6944420036487565E-32

    const-class v0, Lcom/aide/appwizard/runtime/i;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V
    .registers 8

    const-wide v4, 0x4c17ab290bc87b15L    # 3.714254478552945E58

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4c17ab290bc87b15L    # 3.714254478552945E58

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/AppWizardActivity;->EQ()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x101d10c5a8d95cf5L
    .end annotation

    const-wide v2, -0xc1ab1c980c304b5L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc1ab1c980c304b5L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private DW(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1d2d165e00c7e8L
    .end annotation

    const-wide v2, 0x6ad1d842efcd6570L    # 3.580700781105066E206

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6ad1d842efcd6570L    # 3.580700781105066E206

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    invoke-virtual {v0, v1, p1}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lorg/w3c/dom/Document;I)V

    invoke-direct {p0, p1}, Lcom/aide/appwizard/runtime/i;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/runtime/i;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2a504d354860c759L
    .end annotation

    const-wide v2, -0x276dab88425f323bL    # -4.6223160714834905E118

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x276dab88425f323bL    # -4.6223160714834905E118

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->we()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/aide/appwizard/runtime/i;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/appwizard/runtime/i;->DW(I)V

    return-void
.end method


# virtual methods
.method public DW()Lcom/aide/appwizard/runtime/i$a;
    .registers 7

    const-wide v4, 0x1d7d29b517f11351L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d7d29b517f11351L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/aide/appwizard/runtime/i$a;

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v2, "app"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, p0, v0}, Lcom/aide/appwizard/runtime/i$a;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Lcom/aide/appwizard/runtime/i$b;
    .registers 5

    const-wide v2, -0x8ca4bfe03b32bd8L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8ca4bfe03b32bd8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i;->DW()Lcom/aide/appwizard/runtime/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$a;->DW()Lcom/aide/appwizard/runtime/i$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 10

    const-wide v2, 0x5bedba4be286d91L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5bedba4be286d91L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/runtime/i;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x290b45ccd2a005fL

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x290b45ccd2a005fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v2, "app"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/appwizard/runtime/i;->DW(I)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i;->DW()Lcom/aide/appwizard/runtime/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$a;->j6()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->j6()Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->j6()Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->j6()Lcom/aide/appwizard/runtime/i$c;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public j6(Lorg/w3c/dom/Document;I)V
    .registers 10

    const-wide v2, -0x21f078fd432831cbL    # -1.2302571256653955E145

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x21f078fd432831cbL    # -1.2302571256653955E145

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    invoke-direct {p0, p2}, Lcom/aide/appwizard/runtime/i;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 12

    const-wide v6, 0x39c9f32bc287a92cL    # 2.558856366666091E-30

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39c9f32bc287a92cL    # 2.558856366666091E-30

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/i;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
