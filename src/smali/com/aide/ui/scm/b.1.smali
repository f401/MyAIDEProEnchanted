.class public Lcom/aide/ui/scm/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/scm/b$a;,
        Lcom/aide/ui/scm/b$b;,
        Lcom/aide/ui/scm/b$b$a;,
        Lcom/aide/ui/scm/b$b$b;
    }
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

    const-wide v2, -0x42b668d2e5955fbdL    # -1.8183166595558747E-13

    const-class v0, Lcom/aide/ui/scm/b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x3f29eb3afce9a619L    # -22611.078313434406

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3f29eb3afce9a619L    # -22611.078313434406

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/b$a;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x6e75f595a17fa38L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6e75f595a17fa38L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/b$b;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6}, Lcom/aide/ui/scm/b$b;-><init>([Ljava/lang/Object;[Ljava/lang/Object;Lcom/aide/ui/scm/a;)V

    invoke-static {v0}, Lcom/aide/ui/scm/b$b;->j6(Lcom/aide/ui/scm/b$b;)Lcom/aide/ui/scm/b$b$a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v0, :cond_2

    new-instance v5, Lcom/aide/ui/scm/b$a;

    iget v6, v0, Lcom/aide/ui/scm/b$b$a;->Zo:I

    iget v7, v0, Lcom/aide/ui/scm/b$b$a;->VH:I

    iget v8, v0, Lcom/aide/ui/scm/b$b$a;->Hw:I

    iget v9, v0, Lcom/aide/ui/scm/b$b$a;->v5:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/aide/ui/scm/b$a;-><init>(IIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/aide/ui/scm/b$b$a;->FH:Lcom/aide/ui/scm/b$b$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-object v1
.end method
