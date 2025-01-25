.class Lcom/aide/ui/scm/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/w;->run()V
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
.field final FH:Lcom/aide/ui/scm/ua$a;

.field final Hw:Lcom/aide/ui/scm/w;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x36809d9d45b88a8fL  # 3.638051299821164E-46

    const-class v4, Lcom/aide/ui/scm/v;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/w;Lcom/aide/ui/scm/ua$a;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/scm/v;->Hw:Lcom/aide/ui/scm/w;

    iput-object p2, p0, Lcom/aide/ui/scm/v;->FH:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x201aea5e3518182cL
    .end annotation

    const-wide v0, -0x1b65bbfb542f5fafL  # -4.1576353311645725E176

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/v;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_32

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/v;->Hw:Lcom/aide/ui/scm/w;

    iget-object v2, v2, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/v;->Hw:Lcom/aide/ui/scm/w;

    iget-object v3, v3, Lcom/aide/ui/scm/w;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/v;->Hw:Lcom/aide/ui/scm/w;

    iget-object v4, v4, Lcom/aide/ui/scm/w;->Hw:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/v;->FH:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v2, v3, v4, v5}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    new-instance v2, Lcom/aide/ui/scm/u;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/u;-><init>(Lcom/aide/ui/scm/v;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2a
    .catchall {:try_start_c .. :try_end_29} :catchall_32

    goto :goto_31

    :catch_2a
    move-exception v2

    :try_start_2b
    iget-object v3, p0, Lcom/aide/ui/scm/v;->FH:Lcom/aide/ui/scm/ua$a;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_32

    :goto_31
    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/v;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method
