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
    .registers 3

    const-class v0, Lcom/aide/ui/scm/b;

    const-wide v1, -0x42b668d2e5955fbdL  # -1.8183166595558747E-13

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3f29eb3afce9a619L  # -22611.078313434406

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/b;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/b$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x6e75f595a17fa38L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Lcom/aide/ui/scm/b$b;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/aide/ui/scm/b$b;-><init>([Ljava/lang/Object;[Ljava/lang/Object;Lcom/aide/ui/scm/a;)V

    invoke-static {v0}, Lcom/aide/ui/scm/b$b;->j6(Lcom/aide/ui/scm/b$b;)Lcom/aide/ui/scm/b$b$a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    if-eqz v0, :cond_38

    new-instance v2, Lcom/aide/ui/scm/b$a;

    iget v3, v0, Lcom/aide/ui/scm/b$b$a;->Zo:I

    iget v4, v0, Lcom/aide/ui/scm/b$b$a;->VH:I

    iget v5, v0, Lcom/aide/ui/scm/b$b$a;->Hw:I

    iget v6, v0, Lcom/aide/ui/scm/b$b$a;->v5:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/aide/ui/scm/b$a;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/aide/ui/scm/b$b$a;->FH:Lcom/aide/ui/scm/b$b$a;
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_39

    goto :goto_23

    :cond_38
    return-object v1

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x6e75f595a17fa38L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v0

    :goto_4c
    goto :goto_4b
.end method
