.class Lcom/aide/ui/scm/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/Integer;",
        ">;"
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


# instance fields
.field final FH:Lcom/aide/ui/scm/z;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x1a2a4288e8fb7be1L  # -3.6084350741560656E182

    const-class v4, Lcom/aide/ui/scm/y;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/z;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/y;->FH:Lcom/aide/ui/scm/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Integer;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x327f36f77c26a390L
    .end annotation

    const-wide v0, 0x72124636a74442dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/y;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/y;->FH:Lcom/aide/ui/scm/z;

    iget-object v2, v2, Lcom/aide/ui/scm/z;->FH:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " (current)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_74

    :cond_23
    const-string v3, "remotes/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_65

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create new local branch \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' tracking \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/aide/ui/scm/x;

    invoke-direct {v7, p0, v3, v2}, Lcom/aide/ui/scm/x;-><init>(Lcom/aide/ui/scm/y;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Git"

    invoke-static {v5, v2, v6, v7, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_74

    :cond_65
    iget-object v3, p0, Lcom/aide/ui/scm/y;->FH:Lcom/aide/ui/scm/z;

    iget-object v3, v3, Lcom/aide/ui/scm/z;->v5:Lcom/aide/ui/scm/A;

    iget-object v3, v3, Lcom/aide/ui/scm/A;->Zo:Lcom/aide/ui/scm/ua;

    iget-object v5, p0, Lcom/aide/ui/scm/y;->FH:Lcom/aide/ui/scm/z;

    iget-object v5, v5, Lcom/aide/ui/scm/z;->v5:Lcom/aide/ui/scm/A;

    iget-object v5, v5, Lcom/aide/ui/scm/A;->v5:Ljava/lang/String;

    invoke-static {v3, v5, v2, v4}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5 .. :try_end_74} :catchall_75

    :goto_74
    return-void

    :catchall_75
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/y;->DW:Z

    if-eqz v3, :cond_7d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/y;->j6(Ljava/lang/Integer;)V

    return-void
.end method
