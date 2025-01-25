.class public Lcom/aide/ui/trainer/g$g;
.super Lcom/aide/ui/trainer/g$i;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static gn:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private u7:Lcom/aide/ui/trainer/g$a;
    .annotation runtime Labcd/ru;
        field = 0xfaa049038d854e0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g$g;

    const-wide v1, 0x46eb47355bfcc104L  # 4.426134181987799E33

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/trainer/g$a;Lorg/w3c/dom/Element;IZ)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x58f553190ded609L  # -6.050885426543016E281

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/trainer/g$i;-><init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;IZ)V

    iput-object p1, p0, Lcom/aide/ui/trainer/g$g;->u7:Lcom/aide/ui/trainer/g$a;
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x58f553190ded609L  # -6.050885426543016E281

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/trainer/g$a;
    .registers 5

    const-wide v0, 0x24c20d58458a08afL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/trainer/g$g;->u7:Lcom/aide/ui/trainer/g$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public bridge synthetic DW()Lcom/aide/ui/trainer/g$c;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$g;->DW()Lcom/aide/ui/trainer/g$a;

    move-result-object v0

    return-object v0
.end method

.method public J8()Z
    .registers 5

    const-wide v0, -0x1f6c9323195bdd17L  # -1.6668797637194212E157

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->gn()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    invoke-static {}, Lcom/aide/ui/U;->cb()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1c

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    return v3

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public QX()F
    .registers 7

    const-wide v0, -0xa6c04d7e7755e83L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_21

    invoke-virtual {p0, v4}, Lcom/aide/ui/trainer/g$g;->j6(I)Lcom/aide/ui/trainer/g$d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$d;->VH()I

    move-result v5
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_24

    int-to-float v5, v5

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_21
    int-to-float v0, v2

    div-float/2addr v3, v0

    return v3

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method

.method public Ws()Z
    .registers 5

    const-wide v0, 0x10ce79002c5e298L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->gn()I

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public XL()I
    .registers 5

    const-wide v0, 0x8bb53f6b95ce7d1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    if-nez v2, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    iget-object v2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Exercise"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public aM()Lcom/aide/ui/trainer/g$h;
    .registers 5

    const-wide v0, -0x2874711ecf13ace9L  # -5.3019792898709255E113

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v3, "Files"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_1c

    new-instance v3, Lcom/aide/ui/trainer/g$h;

    invoke-direct {v3, v2}, Lcom/aide/ui/trainer/g$h;-><init>(Lorg/w3c/dom/Element;)V

    return-object v3

    :cond_1c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$g;->u7:Lcom/aide/ui/trainer/g$a;

    invoke-static {v2}, Lcom/aide/ui/trainer/g$a;->j6(Lcom/aide/ui/trainer/g$a;)Lcom/aide/ui/trainer/g$h;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-object v0

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6(I)Lcom/aide/ui/trainer/g$d;
    .registers 7

    const-wide v0, -0x202e6f7668caa949L  # -3.679730875273735E153

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g$d;

    iget-object v3, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v4, "Exercise"

    invoke-static {v3, v4, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/aide/ui/trainer/g$d;-><init>(Lorg/w3c/dom/Element;Lcom/aide/ui/trainer/g$g;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object v2

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public v5()I
    .registers 5

    const-wide v0, 0x3402c0dd2a53ed7bL  # 3.734481195676284E-58

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_13

    mul-int/lit8 v0, v0, 0x2

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method
