.class Lcom/aide/ui/activities/CommitActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/scm/ua$c;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/activities/CommitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x33ab29ba2540230L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/activities/CommitActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/activities/CommitActivity$a;

    const-wide v1, -0x1161cfc6e99be450L  # -6.983875079074711E224

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/activities/CommitActivity;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4268c0775f50cfe5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/CommitActivity$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x3039cf951e1da057L  # -2.0072858005763826E76

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/activities/CommitActivity$a;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/activities/CommitActivity$a;->FH:Ljava/util/List;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/CommitActivity$a;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x3039cf951e1da057L  # -2.0072858005763826E76

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x33484bd113ced13dL
    .end annotation

    const-wide v0, -0x5d890729a662ef70L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity$a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2f954ba38932ff90L
    .end annotation

    const-wide v0, 0x19c325057904c1c5L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity$a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aide/ui/activities/CommitActivity$a;->j6(Ljava/lang/Void;)V

    return-void
.end method

.method public j6(Ljava/lang/Void;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x104573996d2c0830L
    .end annotation

    const-wide v0, 0x2d23bb58c7e92d5L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/CommitActivity$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/aide/ui/activities/CommitActivity$a;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/scm/ModifiedFile;

    iget-object v5, v5, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2e
    iget-object v4, p0, Lcom/aide/ui/activities/CommitActivity$a;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v4}, Lcom/aide/ui/activities/CommitActivity;->VH(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_38
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/scm/ModifiedFile;

    iget-object v6, v5, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_50
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/aide/ui/activities/CommitActivity$a;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_66

    :cond_5c
    iget-object v2, p0, Lcom/aide/ui/activities/CommitActivity$a;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v2, v3}, Lcom/aide/ui/activities/CommitActivity;->j6(Lcom/aide/ui/activities/CommitActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Lcom/aide/ui/activities/CommitActivity$a;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/CommitActivity;->gn(Lcom/aide/ui/activities/CommitActivity;)V
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_67

    :goto_66
    return-void

    :catchall_67
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/CommitActivity$a;->DW:Z

    if-eqz v3, :cond_6f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    goto :goto_71

    :goto_70
    throw v2

    :goto_71
    goto :goto_70
.end method
