.class Lcom/aide/ui/scm/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/A;->run()V
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

.field final v5:Lcom/aide/ui/scm/A;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x3681cfe86b83da90L  # 3.90001948516215E-46

    const-class v4, Lcom/aide/ui/scm/z;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/A;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/z;->v5:Lcom/aide/ui/scm/A;

    iput-object p2, p0, Lcom/aide/ui/scm/z;->FH:Ljava/util/List;

    iput-object p3, p0, Lcom/aide/ui/scm/z;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xde14caa31517363L
    .end annotation

    const-wide v0, -0x50021d83e3a6c58fL  # -1.6130585040604597E-77

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/z;->v5:Lcom/aide/ui/scm/A;

    iget-object v2, v2, Lcom/aide/ui/scm/A;->Hw:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/aide/ui/scm/z;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_73

    :cond_20
    const/4 v2, 0x0

    :goto_21
    iget-object v3, p0, Lcom/aide/ui/scm/z;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    iget-object v3, p0, Lcom/aide/ui/scm/z;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/z;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (current)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4a
    iget-object v4, p0, Lcom/aide/ui/scm/z;->v5:Lcom/aide/ui/scm/A;

    iget-object v4, v4, Lcom/aide/ui/scm/A;->Zo:Lcom/aide/ui/scm/ua;

    invoke-static {v4, v3}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/z;->FH:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_5a
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_74

    if-eqz v3, :cond_67

    const-string v3, "选择分支"

    goto :goto_69

    .line 99
    :cond_67
    const-string v3, "Select branch"

    .line 0
    :goto_69
    :try_start_69
    iget-object v4, p0, Lcom/aide/ui/scm/z;->FH:Ljava/util/List;

    new-instance v5, Lcom/aide/ui/scm/y;

    invoke-direct {v5, p0}, Lcom/aide/ui/scm/y;-><init>(Lcom/aide/ui/scm/z;)V

    invoke-static {v2, v3, v4, v5}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_74

    :cond_73
    :goto_73
    return-void

    .line 99
    :catchall_74
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/z;->DW:Z

    if-eqz v3, :cond_7c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7c
    goto :goto_7e

    :goto_7d
    throw v2

    :goto_7e
    goto :goto_7d
.end method
