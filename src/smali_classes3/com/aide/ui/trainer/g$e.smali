.class public Lcom/aide/ui/trainer/g$e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
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
        field = -0x1ae4c89764065200L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g$e;

    const-wide v1, -0x52a1a1778fd329L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x6129bbeb69abb83fL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/g$e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/trainer/g$e;->FH:Lorg/w3c/dom/Element;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/g$e;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW()I
    .registers 6

    const-wide v0, 0x167587c9743afa4cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$e;->FH:Lorg/w3c/dom/Element;

    const-string v3, "end_line"

    const v4, 0x7fffffff

    invoke-static {v2, v3, v4}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$e;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x19399aa034889b6fL  # 3.677821468466529E-187

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$e;->FH:Lorg/w3c/dom/Element;

    const-string v3, "fail"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$e;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw()I
    .registers 6

    const-wide v0, 0x58f14645a31bb480L  # 2.7879422325998473E120

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$e;->FH:Lorg/w3c/dom/Element;

    const-string v3, "count"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$e;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x122d47c6ed241db0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$e;->FH:Lorg/w3c/dom/Element;

    invoke-static {v2}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$e;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public v5()I
    .registers 6

    const-wide v0, 0x13a665b360bb3847L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$e;->FH:Lorg/w3c/dom/Element;

    const-string v3, "start_line"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$e;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
