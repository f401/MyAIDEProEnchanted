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
    .registers 3

    const-class v0, Lcom/aide/uidesigner/L;

    const-wide v1, -0x1dd98fa673d10c90L  # -6.460833633665477E164

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x4835c0c4ea50ab9dL  # -6.026014592622452E-40

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
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
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x5e52923501974d1L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/aide/uidesigner/L;->FH(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1}, Lcom/aide/uidesigner/L;->Hw(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x5e52923501974d1L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
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
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x38bb2575cb4feaadL  # 2.0422627820624719E-35

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
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

    move-result-object p0
    :try_end_70
    .catchall {:try_start_0 .. :try_end_70} :catchall_71

    return-object p0

    :catchall_71
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v1, :cond_82

    const-wide v2, 0x38bb2575cb4feaadL  # 2.0422627820624719E-35

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    throw v0
.end method

.method private static Hw(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2111081d51242c4bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/aide/uidesigner/s;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1861a2afc5900e57L  # 3.092291348735659E-191

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/uidesigner/a;

    invoke-virtual {v2}, Lcom/aide/uidesigner/a;->FH()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_84

    const-string v4, "</b>"

    if-eqz v3, :cond_50

    :try_start_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v5}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " styled <b>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/aide/uidesigner/a;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7a

    :cond_50
    invoke-virtual {v2}, Lcom/aide/uidesigner/a;->DW()Z

    move-result v3

    if-eqz v3, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v5}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = <b>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/aide/uidesigner/a;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    :cond_74
    iget-object v3, v2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v3}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v3

    :goto_7a
    new-instance v4, Lcom/aide/uidesigner/w;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/aide/uidesigner/w;-><init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catchall {:try_start_2e .. :try_end_82} :catchall_84

    goto :goto_1a

    :cond_83
    return-object v0

    :catchall_84
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v1, :cond_95

    const-wide v2, 0x1861a2afc5900e57L  # 3.092291348735659E-191

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_95
    goto :goto_97

    :goto_96
    throw v0

    :goto_97
    goto :goto_96
.end method

.method public static j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/L;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x4ecd7c4e0fb800a7L  # -1.0478798220073613E-71

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Lcom/aide/common/ua;

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/aide/uidesigner/L;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aide/common/ua;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/L;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x4ecd7c4e0fb800a7L  # -1.0478798220073613E-71

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method
