.class public Lcom/aide/uidesigner/L;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1dd98fa673d10c90L    # -6.460833633665477E164

    const-class v0, Lcom/aide/uidesigner/L;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x4835c0c4ea50ab9dL    # -6.026014592622452E-40

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4835c0c4ea50ab9dL    # -6.026014592622452E-40

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x141b05399fa1c7f5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/aide/uidesigner/s;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x5e52923501974d1L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5e52923501974d1L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/aide/uidesigner/L;->FH(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1}, Lcom/aide/uidesigner/L;->Hw(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static FH(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x300369033a838c91L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/aide/uidesigner/s;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x38bb2575cb4feaadL    # 2.0422627820624719E-35

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/uidesigner/x;

    invoke-direct {v0, p1, p0}, Lcom/aide/uidesigner/x;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    new-instance v1, Lcom/aide/uidesigner/y;

    invoke-direct {v1, p0, p1}, Lcom/aide/uidesigner/y;-><init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V

    new-instance v2, Lcom/aide/uidesigner/A;

    invoke-direct {v2, p1, p0}, Lcom/aide/uidesigner/A;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    new-instance v3, Lcom/aide/uidesigner/C;

    invoke-direct {v3, p1, p0}, Lcom/aide/uidesigner/C;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    new-instance v4, Lcom/aide/uidesigner/E;

    invoke-direct {v4, p1, p0}, Lcom/aide/uidesigner/E;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    new-instance v5, Lcom/aide/uidesigner/G;

    invoke-direct {v5, p1, p0}, Lcom/aide/uidesigner/G;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    new-instance v6, Lcom/aide/uidesigner/I;

    invoke-direct {v6, p1, p0}, Lcom/aide/uidesigner/I;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    new-instance v7, Lcom/aide/uidesigner/K;

    invoke-direct {v7, p0, p1}, Lcom/aide/uidesigner/K;-><init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V

    new-instance v8, Lcom/aide/uidesigner/t;

    invoke-direct {v8, p1}, Lcom/aide/uidesigner/t;-><init>(Lcom/aide/uidesigner/s;)V

    new-instance v9, Lcom/aide/uidesigner/u;

    invoke-direct {v9, p1, p0}, Lcom/aide/uidesigner/u;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    new-instance v10, Lcom/aide/uidesigner/v;

    invoke-direct {v10, p1, p0}, Lcom/aide/uidesigner/v;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    const/16 v11, 0xb

    new-array v11, v11, [Lcom/aide/common/ua$a;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x38bb2575cb4feaadL    # 2.0422627820624719E-35

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static Hw(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2111081d51242c4bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/aide/uidesigner/s;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x1861a2afc5900e57L    # 3.092291348735659E-191

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1861a2afc5900e57L    # 3.092291348735659E-191

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/a;->FH()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v7}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " styled <b>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/aide/uidesigner/a;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</b>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v7, Lcom/aide/uidesigner/w;

    invoke-direct {v7, p0, p1, v0, v1}, Lcom/aide/uidesigner/w;-><init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/aide/uidesigner/a;->DW()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v7}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = <b>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/aide/uidesigner/a;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</b>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v1}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    :cond_4
    return-object v5
.end method

.method public static j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    .registers 9

    const-wide v2, -0x4ecd7c4e0fb800a7L    # -1.0478798220073613E-71

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4ecd7c4e0fb800a7L    # -1.0478798220073613E-71

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/common/ua;

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/aide/uidesigner/L;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/aide/common/ua;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
