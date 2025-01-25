.class Labcd/Wk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Zk;->j6(Ljava/lang/String;Z)V
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
.field final FH:Z

.field final Hw:Labcd/Zk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x6fdf4c80cc5fd710L  # -5.378732710479451E-231

    const-wide v2, 0xa8c6281a48d1be0L

    const-class v4, Labcd/Wk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Zk;Z)V
    .registers 3

    iput-object p1, p0, Labcd/Wk;->Hw:Labcd/Zk;

    iput-boolean p2, p0, Labcd/Wk;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x126c56fdd0d47340L
    .end annotation

    const-wide v0, -0x1b4ffcdee60a6887L  # -1.0138392960424037E177

    :try_start_5
    sget-boolean v2, Labcd/Wk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Wk;->Hw:Labcd/Zk;

    invoke-static {v2}, Labcd/Zk;->DW(Labcd/Zk;)V

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    iget-object v3, p0, Labcd/Wk;->Hw:Labcd/Zk;

    invoke-static {v3}, Labcd/Zk;->FH(Labcd/Zk;)Labcd/IProject;

    move-result-object v3

    invoke-interface {v3}, Labcd/IProject;->EQ()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Labcd/Wk;->FH:Z

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Wk;->Hw:Labcd/Zk;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Labcd/Zk;->j6(Ljava/util/List;Z)V

    :cond_2d
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    iget-object v3, p0, Labcd/Wk;->Hw:Labcd/Zk;

    invoke-virtual {v3}, Labcd/Zk;->Ws()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Ji;->DW(Ljava/util/List;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->Hw()V

    iget-object v2, p0, Labcd/Wk;->Hw:Labcd/Zk;

    invoke-virtual {v2}, Labcd/Zk;->aM()Z
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v2

    sget-boolean v3, Labcd/Wk;->DW:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_56
    throw v2
.end method
