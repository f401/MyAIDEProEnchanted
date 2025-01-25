.class public Lcom/aide/ui/trainer/g$h;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
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
        field = 0x3878ff4d9499ca61L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g$h;

    const-wide v1, 0x207f6071827d69dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x11dfdd7a05a935c5L  # -2.9161639000835284E222

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/g$h;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/trainer/g$h;->FH:Lorg/w3c/dom/Element;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/g$h;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x663666009be2240dL  # 2.3793332141965445E184

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$h;->FH:Lorg/w3c/dom/Element;

    const-string v3, "template2"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$h;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x27eabefe41897700L  # 2.121248836719864E-116

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$h;->FH:Lorg/w3c/dom/Element;

    const-string v3, "package_name"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$h;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x88b4f5db57d76f3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$h;->FH:Lorg/w3c/dom/Element;

    const-string v3, "project_name"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$h;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x406016399054a120L  # 128.6945268299978

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$h;->FH:Lorg/w3c/dom/Element;

    const-string v3, "template"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$h;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CodeFile"

    const-wide v1, -0xee0da61f15397e8L  # -7.922678587060051E236

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/trainer/g$h;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_14
    iget-object v5, p0, Lcom/aide/ui/trainer/g$h;->FH:Lorg/w3c/dom/Element;

    invoke-static {v5, v0}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_2e

    iget-object v5, p0, Lcom/aide/ui/trainer/g$h;->FH:Lorg/w3c/dom/Element;

    invoke-static {v5, v0, v4}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2f

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2e
    return-object v3

    :catchall_2f
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/trainer/g$h;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x313b1d2c5ad2f7e0L  # 1.5345956416243395E-71

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$h;->FH:Lorg/w3c/dom/Element;

    const-string v3, "open_path"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$h;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
