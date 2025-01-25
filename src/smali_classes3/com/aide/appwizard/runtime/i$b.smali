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
    .registers 3

    const-class v0, Lcom/aide/appwizard/runtime/i$b;

    const-wide v1, -0x9d359b693adee5bL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x95b4333600e2c40L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x95b4333600e2c40L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private Hw(Ljava/lang/Boolean;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x16192ccd0f7267L
    .end annotation

    const-wide v0, 0x29b27078dcbcbcL

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "showtitle"

    invoke-virtual {v2, v3, v4, p1}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private we()Lcom/aide/appwizard/runtime/i$c;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x15a7ebfc98e86968L
    .end annotation

    const-wide v0, -0x55374183588ff5dL  # -8.290846973116954E282

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, v3, Lcom/aide/appwizard/runtime/i;->Hw:Lorg/w3c/dom/Document;

    const-string v4, "fragment"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v4, Lcom/aide/appwizard/runtime/i$c;

    iget-object v5, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    invoke-direct {v4, v5, v3, v2}, Lcom/aide/appwizard/runtime/i$c;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Section "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/aide/appwizard/runtime/i$c;->DW(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    return-object v4

    :catchall_41
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v2
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/appwizard/runtime/i$c;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x83ad626efa9fcc9L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_19
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_48

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    instance-of v6, v6, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_45

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v7, "fragment"

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    new-instance v7, Lcom/aide/appwizard/runtime/i$c;

    iget-object v8, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    invoke-direct {v7, v8, v6, v5}, Lcom/aide/appwizard/runtime/i$c;-><init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_49

    add-int/lit8 v5, v5, 0x1

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_48
    return-object v2

    :catchall_49
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_51

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_51
    goto :goto_53

    :goto_52
    throw v2

    :goto_53
    goto :goto_52
.end method

.method public DW(Ljava/lang/Boolean;)V
    .registers 7

    const-wide v0, 0x189b65b3d7e665c3L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "fullscreen"

    invoke-virtual {v2, v3, v4, p1}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public EQ()Ljava/lang/Boolean;
    .registers 6

    const-wide v0, 0x19b7c6d9a006ea18L  # 8.743298630260487E-185

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "showtitle"

    invoke-virtual {v2, v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public FH()Lcom/aide/appwizard/runtime/i$e;
    .registers 6

    const-wide v0, 0xdd5db8fb583456fL

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "theme"

    invoke-static {v2, v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {v2}, Lcom/aide/appwizard/runtime/i$e;->valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$e;

    move-result-object v0

    return-object v0

    :cond_1d
    sget-object v0, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public FH(Ljava/lang/Boolean;)V
    .registers 6

    const-wide v0, -0x691924a93c55584L  # -8.428053496234587E276

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/appwizard/runtime/i$b;->Hw(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Hw()Ljava/lang/String;
    .registers 6

    const-wide v0, 0xde478f49a24bfc0L  # 9.5945364144185E-242

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "title"

    invoke-static {v2, v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    if-eqz v0, :cond_19

    return-object v0

    :cond_19
    const-string v0, "MyApp"

    return-object v0

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public VH()Ljava/lang/Boolean;
    .registers 6

    const-wide v0, 0xb7500a2f71ff34fL

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "showactionbar"

    invoke-virtual {v2, v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, -0x340a7124ddbd55b0L  # -8.457622197689054E57

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->VH()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public gn()Z
    .registers 5

    const-wide v0, -0x199157928854acccL  # -2.6053738038040864E185

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->u7()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6()Lcom/aide/appwizard/runtime/i$c;
    .registers 6

    const-wide v0, -0x29a6ce37e737c0dbL  # -9.245353273495215E107

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/appwizard/runtime/i$b;->we()Lcom/aide/appwizard/runtime/i$c;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(I)Lcom/aide/appwizard/runtime/i$c;
    .registers 6

    const-wide v0, -0x1b83996317ac11d7L  # -1.123902257793409E176

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/appwizard/runtime/i$c;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6(Lcom/aide/appwizard/runtime/i$d;)V
    .registers 7

    const-wide v0, 0x26f42ac478fd47f0L  # 4.88117469898145E-121

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v3, "type"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$d;->VH()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/appwizard/runtime/i$b;->Hw(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$d;->Zo()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_36

    invoke-direct {p0}, Lcom/aide/appwizard/runtime/i$b;->we()Lcom/aide/appwizard/runtime/i$c;

    :cond_36
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v2
.end method

.method public j6(Lcom/aide/appwizard/runtime/i$e;)V
    .registers 7

    const-wide v0, -0x31a45e4df15dfd0L  # -4.336357540155497E293

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v3, "theme"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6(Ljava/lang/Boolean;)V
    .registers 7

    const-wide v0, 0x30aff00cb7786179L  # 3.530487155204884E-74

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "showactionbar"

    invoke-virtual {v2, v3, v4, p1}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0xa4666c09a200068L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v3, "title"

    invoke-interface {v2, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public tp()Z
    .registers 5

    const-wide v0, -0x17ccb0305da5004bL  # -8.810876733057349E193

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/aide/appwizard/runtime/i$b;->EQ()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public u7()Ljava/lang/Boolean;
    .registers 6

    const-wide v0, -0x319abf0681988187L  # -4.584012019675844E69

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "fullscreen"

    invoke-virtual {v2, v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public v5()Lcom/aide/appwizard/runtime/i$d;
    .registers 6

    const-wide v0, 0x226db69b890c6dc0L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$b;->Hw:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$b;->FH:Lorg/w3c/dom/Element;

    const-string v4, "type"

    invoke-static {v2, v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {v2}, Lcom/aide/appwizard/runtime/i$d;->valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$d;

    move-result-object v0

    return-object v0

    :cond_1d
    sget-object v0, Lcom/aide/appwizard/runtime/i$d;->v5:Lcom/aide/appwizard/runtime/i$d;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$b;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
