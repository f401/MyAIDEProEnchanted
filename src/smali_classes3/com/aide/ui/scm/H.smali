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
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x211bd1ab479c35fcL  # 3.399413403841817E-149

    const-class v4, Lcom/aide/ui/scm/H;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xda6b0a1543f9229L
    .end annotation

    const-wide v0, 0x32d87e7ab751dccL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_47

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/H;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v2, p0, Lcom/aide/ui/scm/H;->FH:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/aide/ui/scm/H;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/H;->Hw:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/H;->v5:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/H;->FH:Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/scm/H;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    goto :goto_36

    :cond_27
    iget-object v2, p0, Lcom/aide/ui/scm/H;->VH:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/H;->Hw:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/H;->v5:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/H;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v2, v3, v4, v5}, Lcom/aide/ui/scm/wa;->FH(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    :goto_36
    new-instance v2, Lcom/aide/ui/scm/G;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/G;-><init>(Lcom/aide/ui/scm/H;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3e} :catch_3f
    .catchall {:try_start_c .. :try_end_3e} :catchall_47

    goto :goto_46

    :catch_3f
    move-exception v2

    :try_start_40
    iget-object v3, p0, Lcom/aide/ui/scm/H;->Zo:Lcom/aide/ui/scm/ua$a;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_47

    :goto_46
    return-void

    :catchall_47
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/H;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method
