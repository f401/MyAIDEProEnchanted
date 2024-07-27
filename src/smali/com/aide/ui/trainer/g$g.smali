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
    .registers 4

    const-wide v2, 0x46eb47355bfcc104L    # 4.426134181987799E33

    const-class v0, Lcom/aide/ui/trainer/g$g;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/trainer/g$a;Lorg/w3c/dom/Element;IZ)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x58f553190ded609L    # -6.050885426543016E281

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/trainer/g$i;-><init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;IZ)V

    iput-object p1, p0, Lcom/aide/ui/trainer/g$g;->u7:Lcom/aide/ui/trainer/g$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x58f553190ded609L    # -6.050885426543016E281

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Lcom/aide/ui/trainer/g$a;
    .registers 5

    const-wide v2, 0x24c20d58458a08afL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x24c20d58458a08afL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$g;->u7:Lcom/aide/ui/trainer/g$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic DW()Lcom/aide/ui/trainer/g$c;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$g;->DW()Lcom/aide/ui/trainer/g$a;

    move-result-object v0

    return-object v0
.end method

.method public J8()Z
    .registers 7

    const-wide v4, -0x1f6c9323195bdd17L    # -1.6668797637194212E157

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1f6c9323195bdd17L    # -1.6668797637194212E157

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->gn()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->cb()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public QX()F
    .registers 7

    const-wide v4, -0xa6c04d7e7755e83L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa6c04d7e7755e83L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/aide/ui/trainer/g$g;->j6(I)Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->VH()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v2

    div-float v0, v1, v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Ws()Z
    .registers 5

    const-wide v2, 0x10ce79002c5e298L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10ce79002c5e298L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->gn()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public XL()I
    .registers 5

    const-wide v2, 0x8bb53f6b95ce7d1L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8bb53f6b95ce7d1L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Exercise"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public aM()Lcom/aide/ui/trainer/g$h;
    .registers 5

    const-wide v2, -0x2874711ecf13ace9L    # -5.3019792898709255E113

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2874711ecf13ace9L    # -5.3019792898709255E113

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v1, "Files"

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/g;->v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/aide/ui/trainer/g$h;

    invoke-direct {v0, v1}, Lcom/aide/ui/trainer/g$h;-><init>(Lorg/w3c/dom/Element;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/trainer/g$g;->u7:Lcom/aide/ui/trainer/g$a;

    invoke-static {v0}, Lcom/aide/ui/trainer/g$a;->j6(Lcom/aide/ui/trainer/g$a;)Lcom/aide/ui/trainer/g$h;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(I)Lcom/aide/ui/trainer/g$d;
    .registers 8

    const-wide v4, -0x202e6f7668caa949L    # -3.679730875273735E153

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x202e6f7668caa949L    # -3.679730875273735E153

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-instance v0, Lcom/aide/ui/trainer/g$d;

    iget-object v1, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v2, "Exercise"

    invoke-static {v1, v2, p1}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aide/ui/trainer/g$d;-><init>(Lorg/w3c/dom/Element;Lcom/aide/ui/trainer/g$g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()I
    .registers 5

    const-wide v2, 0x3402c0dd2a53ed7bL    # 3.734481195676284E-58

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$g;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3402c0dd2a53ed7bL    # 3.734481195676284E-58

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$g;->XL()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$g;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
