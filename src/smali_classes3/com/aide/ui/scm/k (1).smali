.class Lcom/aide/ui/scm/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Lcom/aide/ui/scm/ua$d;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final VH:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final Zo:Lcom/aide/ui/scm/ua$d;

.field final v5:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x211a3fc3c17fb7dcL

    const-class v4, Lcom/aide/ui/scm/k;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$d;)V
    .registers 6

    iput-object p1, p0, Lcom/aide/ui/scm/k;->VH:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/k;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/k;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/scm/k;->v5:Lcom/aide/ui/scm/ua$a;

    iput-object p5, p0, Lcom/aide/ui/scm/k;->Zo:Lcom/aide/ui/scm/ua$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1f2dc3d56de467b0L
    .end annotation

    const-wide v0, 0x149d013f2d793290L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_33

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/k;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v2, p0, Lcom/aide/ui/scm/k;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/k;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/k;->Hw:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/k;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v2, v3, v4, v5}, Lcom/aide/ui/scm/wa;->DW(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/scm/j;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/scm/j;-><init>(Lcom/aide/ui/scm/k;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2a
    .catchall {:try_start_c .. :try_end_29} :catchall_33

    goto :goto_32

    :catch_2a
    move-exception v2

    :try_start_2b
    iget-object v3, p0, Lcom/aide/ui/scm/k;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v4, p0, Lcom/aide/ui/scm/k;->Zo:Lcom/aide/ui/scm/ua$d;

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    :goto_32
    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/k;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method
