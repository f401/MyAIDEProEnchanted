.class public Lcom/aide/appwizard/runtime/i$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/appwizard/runtime/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
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
        field = 0x274b895e18453b80L
    .end annotation
.end field

.field final Hw:Lcom/aide/appwizard/runtime/i;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x9d359b693adee5bL

    const-class v0, Lcom/aide/appwizard/runtime/i$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    .registers 10

    const-wide v2, -0x95b4333600e2c40L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x95b4333600e2c40L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private Hw(Ljava/lang/Boolean;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x16192ccd0f7267L
    .end annotation

    const-wide v4, 0x29b27078dcbcbcL

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29b27078dcbcbcL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "showtitle"

    invoke-virtual {v0, v1, v2, p1}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private we()Lcom/aide/appwizard/runtime/i$c;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x15a7ebfc98e86968L
    .end annotation

    const-wide v4, -0x55374183588ff5dL    # -8.290846973116954E282

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x55374183588ff5dL    # -8.290846973116954E282

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, v1, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v2, "fragment"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v2, Lcom/aide/appwizard/runtime/i$c;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    invoke-direct {v2, v3, v1, v0}, Lcom/aide/appwizard/runtime/i$c;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Section "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aide/appwizard/runtime/i$c;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/appwizard/runtime/i$c;",
            ">;"
        }
    .end annotation

    const-wide v8, 0x83ad626efa9fcc9L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x83ad626efa9fcc9L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_3

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v5, "fragment"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/aide/appwizard/runtime/i$c;

    iget-object v6, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    invoke-direct {v5, v6, v0, v1}, Lcom/aide/appwizard/runtime/i$c;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v3

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public DW(Ljava/lang/Boolean;)V
    .registers 8

    const-wide v4, 0x189b65b3d7e665c3L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x189b65b3d7e665c3L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "fullscreen"

    invoke-virtual {v0, v1, v2, p1}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ()Ljava/lang/Boolean;
    .registers 7

    const-wide v4, 0x19b7c6d9a006ea18L    # 8.743298630260487E-185

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19b7c6d9a006ea18L    # 8.743298630260487E-185

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "showtitle"

    invoke-virtual {v0, v1, v2}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Lcom/aide/appwizard/runtime/i$e;
    .registers 7

    const-wide v4, 0xdd5db8fb583456fL

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xdd5db8fb583456fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "theme"

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/aide/appwizard/runtime/i$e;->valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH(Ljava/lang/Boolean;)V
    .registers 6

    const-wide v2, -0x691924a93c55584L    # -8.428053496234587E276

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x691924a93c55584L    # -8.428053496234587E276

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/appwizard/runtime/i$b;->Hw(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 7

    const-wide v4, 0xde478f49a24bfc0L    # 9.5945364144185E-242

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xde478f49a24bfc0L    # 9.5945364144185E-242

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "title"

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "MyApp"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH()Ljava/lang/Boolean;
    .registers 7

    const-wide v4, 0xb7500a2f71ff34fL

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb7500a2f71ff34fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "showactionbar"

    invoke-virtual {v0, v1, v2}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Z
    .registers 5

    const-wide v2, -0x340a7124ddbd55b0L    # -8.457622197689054E57

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x340a7124ddbd55b0L    # -8.457622197689054E57

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->VH()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Z
    .registers 5

    const-wide v2, -0x199157928854acccL    # -2.6053738038040864E185

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x199157928854acccL    # -2.6053738038040864E185

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->u7()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Lcom/aide/appwizard/runtime/i$c;
    .registers 7

    const-wide v4, -0x29a6ce37e737c0dbL    # -9.245353273495215E107

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29a6ce37e737c0dbL    # -9.245353273495215E107

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/appwizard/runtime/i$b;->we()Lcom/aide/appwizard/runtime/i$c;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)Lcom/aide/appwizard/runtime/i$c;
    .registers 6

    const-wide v2, -0x1b83996317ac11d7L    # -1.123902257793409E176

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b83996317ac11d7L    # -1.123902257793409E176

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/runtime/i$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/appwizard/runtime/i$d;)V
    .registers 8

    const-wide v4, 0x26f42ac478fd47f0L    # 4.88117469898145E-121

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26f42ac478fd47f0L    # 4.88117469898145E-121

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v1, "type"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$d;->VH()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/appwizard/runtime/i$b;->Hw(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$d;->Zo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/aide/appwizard/runtime/i$b;->we()Lcom/aide/appwizard/runtime/i$c;

    :cond_1
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Lcom/aide/appwizard/runtime/i$e;)V
    .registers 8

    const-wide v4, -0x31a45e4df15dfd0L    # -4.336357540155497E293

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x31a45e4df15dfd0L    # -4.336357540155497E293

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v1, "theme"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/Boolean;)V
    .registers 8

    const-wide v4, 0x30aff00cb7786179L    # 3.530487155204884E-74

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30aff00cb7786179L    # 3.530487155204884E-74

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "showactionbar"

    invoke-virtual {v0, v1, v2, p1}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0xa4666c09a200068L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa4666c09a200068L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v1, "title"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()Z
    .registers 5

    const-wide v2, -0x17ccb0305da5004bL    # -8.810876733057349E193

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17ccb0305da5004bL    # -8.810876733057349E193

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->EQ()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Ljava/lang/Boolean;
    .registers 7

    const-wide v4, -0x319abf0681988187L    # -4.584012019675844E69

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x319abf0681988187L    # -4.584012019675844E69

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "fullscreen"

    invoke-virtual {v0, v1, v2}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Lcom/aide/appwizard/runtime/i$d;
    .registers 7

    const-wide v4, 0x226db69b890c6dc0L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x226db69b890c6dc0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v2, "type"

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/aide/appwizard/runtime/i$d;->valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/aide/appwizard/runtime/i$d;->v5:Lcom/aide/appwizard/runtime/i$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
