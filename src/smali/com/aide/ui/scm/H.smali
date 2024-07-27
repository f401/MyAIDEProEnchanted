.class Lcom/aide/ui/scm/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final Zo:Lcom/aide/ui/scm/ua$a;

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/H;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, 0x211bd1ab479c35fcL    # 3.399413403841817E-149

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V
    .registers 6

    iput-object p1, p0, Lcom/aide/ui/scm/H;->VH:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/H;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/H;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/scm/H;->v5:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/ui/scm/H;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xda6b0a1543f9229L
    .end annotation

    const-wide v6, 0x32d87e7ab751dccL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/H;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x32d87e7ab751dccL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/H;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v0, p0, Lcom/aide/ui/scm/H;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/H;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/scm/H;->Hw:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/scm/H;->v5:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/scm/H;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/H;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    :goto_0
    new-instance v0, Lcom/aide/ui/scm/G;

    invoke-direct {v0, p0}, Lcom/aide/ui/scm/G;-><init>(Lcom/aide/ui/scm/H;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/scm/H;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/scm/H;->Hw:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/scm/H;->v5:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/scm/H;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v0, v1, v2, v3}, Lcom/aide/ui/scm/wa;->FH(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/aide/ui/scm/H;->Zo:Lcom/aide/ui/scm/ua$a;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/H;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
