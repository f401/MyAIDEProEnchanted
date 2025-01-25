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
    .registers 3

    const-class v0, Lcom/aide/appwizard/runtime/i$a;

    const-wide v1, -0x1221a773f6ed4dccL  # -1.7139441566285478E221

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x30cc187220fb39b3L  # 1.2423034877649566E-73

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/appwizard/runtime/i$a;->FH:Lorg/w3c/dom/Element;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$a;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x30cc187220fb39b3L  # 1.2423034877649566E-73

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/appwizard/runtime/i$b;
    .registers 7

    const-wide v0, -0x4061e652248fdd20L  # -0.029394833105501728

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/appwizard/runtime/i$b;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v4, v3, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v5, "activity"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {v2, v3, v4}, Lcom/aide/appwizard/runtime/i$b;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-object v2

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$a;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6()Lcom/aide/appwizard/runtime/i$b;
    .registers 6

    const-wide v0, 0x398885825b844a70L  # 1.511255370206806E-31

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$a;->FH:Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, v3, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v4, "activity"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V

    new-instance v3, Lcom/aide/appwizard/runtime/i$b;

    iget-object v4, p0, Lcom/aide/appwizard/runtime/i$a;->Hw:Lcom/aide/appwizard/runtime/i;

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {v3, v4, v2}, Lcom/aide/appwizard/runtime/i$b;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-object v3

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$a;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method
