.class Lcom/aide/ui/scm/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->DW(Ljava/lang/String;Ljava/lang/String;)V
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

.field final Zo:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x211b9f6e55ffa55fL  # 3.375433078604387E-149

    const-class v4, Lcom/aide/ui/scm/F;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/ui/scm/F;->Zo:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/F;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/F;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/scm/F;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x169a4c46cc623889L
    .end annotation

    const-wide v0, -0x3c92275c3db36223L  # -6.7207777405431528E16

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/F;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_31

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    iget-object v3, p0, Lcom/aide/ui/scm/F;->Zo:Lcom/aide/ui/scm/ua;

    invoke-static {v3}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v3, p0, Lcom/aide/ui/scm/F;->Zo:Lcom/aide/ui/scm/ua;

    invoke-static {v3}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/F;->FH:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/F;->Hw:Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/scm/F;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v3, v4, v5, v2, v6}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    new-instance v3, Lcom/aide/ui/scm/E;

    invoke-direct {v3, p0}, Lcom/aide/ui/scm/E;-><init>(Lcom/aide/ui/scm/F;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_29} :catch_2a
    .catchall {:try_start_d .. :try_end_29} :catchall_31

    goto :goto_30

    :catch_2a
    move-exception v3

    :try_start_2b
    iget-object v4, p0, Lcom/aide/ui/scm/F;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-static {v4, v3, v2}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_31

    :goto_30
    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/F;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method
