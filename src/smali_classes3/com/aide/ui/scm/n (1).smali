.class Lcom/aide/ui/scm/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Ljava/util/List;

.field final Hw:Ljava/lang/String;

.field final v5:Lcom/aide/ui/scm/o;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x367d06cc31b80f00L  # 3.177723789289614E-46

    const-class v4, Lcom/aide/ui/scm/n;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/o;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/n;->v5:Lcom/aide/ui/scm/o;

    iput-object p2, p0, Lcom/aide/ui/scm/n;->FH:Ljava/util/List;

    iput-object p3, p0, Lcom/aide/ui/scm/n;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1be65f03f0c21f11L
    .end annotation

    const-wide v0, 0xa58f9a7fc9b6960L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/n;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/n;->v5:Lcom/aide/ui/scm/o;

    iget-object v2, v2, Lcom/aide/ui/scm/o;->Hw:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/aide/ui/scm/n;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_7d

    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_26
    iget-object v4, p0, Lcom/aide/ui/scm/n;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_66

    iget-object v4, p0, Lcom/aide/ui/scm/n;->FH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "remotes/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    goto :goto_63

    :cond_3f
    iget-object v5, p0, Lcom/aide/ui/scm/n;->Hw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (current)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_58
    iget-object v5, p0, Lcom/aide/ui/scm/n;->v5:Lcom/aide/ui/scm/o;

    iget-object v5, v5, Lcom/aide/ui/scm/o;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v5, v4}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_66
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_7e

    if-eqz v4, :cond_73

    const-string v4, "选择要删除的分支"

    goto :goto_75

    .line 99
    :cond_73
    const-string v4, "Select branch to delete"

    .line 0
    :goto_75
    :try_start_75
    new-instance v5, Lcom/aide/ui/scm/m;

    invoke-direct {v5, p0, v2}, Lcom/aide/ui/scm/m;-><init>(Lcom/aide/ui/scm/n;Ljava/util/List;)V

    invoke-static {v3, v4, v2, v5}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7e

    :cond_7d
    :goto_7d
    return-void

    .line 99
    :catchall_7e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/n;->DW:Z

    if-eqz v3, :cond_86

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_86
    goto :goto_88

    :goto_87
    throw v2

    :goto_88
    goto :goto_87
.end method
