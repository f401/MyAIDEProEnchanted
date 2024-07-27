.class public Lcom/aide/appwizard/runtime/i$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/appwizard/runtime/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
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
.field private FH:Lorg/w3c/dom/Element;
    .annotation runtime Labcd/ru;
        field = 0x1086491e0a1caab8L
    .end annotation
.end field

.field final Hw:Lcom/aide/appwizard/runtime/i;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1221a773f6ed4dccL    # -1.7139441566285478E221

    const-class v0, Lcom/aide/appwizard/runtime/i$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    .registers 10

    const-wide v2, 0x30cc187220fb39b3L    # 1.2423034877649566E-73

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30cc187220fb39b3L    # 1.2423034877649566E-73

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/appwizard/runtime/i$a;->FH:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/i$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Lcom/aide/appwizard/runtime/i$b;
    .registers 7

    const-wide v4, -0x4061e652248fdd20L    # -0.029394833105501728

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4061e652248fdd20L    # -0.029394833105501728

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/aide/appwizard/runtime/i$b;

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v0, v0, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v3, "activity"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, v2, v0}, Lcom/aide/appwizard/runtime/i$b;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Lcom/aide/appwizard/runtime/i$b;
    .registers 7

    const-wide v4, 0x398885825b844a70L    # 1.511255370206806E-31

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x398885825b844a70L    # 1.511255370206806E-31

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$a;->FH:Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, v1, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v2, "activity"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V

    new-instance v1, Lcom/aide/appwizard/runtime/i$b;

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, v2, v0}, Lcom/aide/appwizard/runtime/i$b;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
