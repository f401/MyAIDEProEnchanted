.class Lcom/aide/ui/scm/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$c;)V
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

.field final Hw:Ljava/util/List;

.field final VH:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final Zo:Lcom/aide/ui/scm/ua$c;

.field final v5:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x211a0d86d1d3292fL

    const-class v4, Lcom/aide/ui/scm/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)V
    .registers 6

    iput-object p1, p0, Lcom/aide/ui/scm/i;->VH:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/i;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/i;->Hw:Ljava/util/List;

    iput-object p4, p0, Lcom/aide/ui/scm/i;->v5:Lcom/aide/ui/scm/ua$a;

    iput-object p5, p0, Lcom/aide/ui/scm/i;->Zo:Lcom/aide/ui/scm/ua$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4119a0524b1e2e0L
    .end annotation

    const-wide v0, 0x23c555b1f645e070L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_32

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/i;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v2, p0, Lcom/aide/ui/scm/i;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/i;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/i;->Hw:Ljava/util/List;

    iget-object v5, p0, Lcom/aide/ui/scm/i;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v2, v3, v4, v5}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V

    new-instance v2, Lcom/aide/ui/scm/h;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/h;-><init>(Lcom/aide/ui/scm/i;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_28} :catch_29
    .catchall {:try_start_c .. :try_end_28} :catchall_32

    goto :goto_31

    :catch_29
    move-exception v2

    :try_start_2a
    iget-object v3, p0, Lcom/aide/ui/scm/i;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v4, p0, Lcom/aide/ui/scm/i;->Zo:Lcom/aide/ui/scm/ua$c;

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    :goto_31
    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/i;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method
