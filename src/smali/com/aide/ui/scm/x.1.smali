.class Lcom/aide/ui/scm/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/y;->j6(Ljava/lang/Integer;)V
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

.field final v5:Lcom/aide/ui/scm/y;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/x;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, -0x23c21a602af3a5b4L    # -2.1730275604972396E136

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/y;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/x;->v5:Lcom/aide/ui/scm/y;

    iput-object p2, p0, Lcom/aide/ui/scm/x;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/x;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x1e30d1cfa21242a5L
    .end annotation

    const-wide v6, -0x4ff602e4b907e81cL    # -2.805534648197085E-77

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/x;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4ff602e4b907e81cL    # -2.805534648197085E-77

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/x;->v5:Lcom/aide/ui/scm/y;

    iget-object v0, v0, Lcom/aide/ui/scm/y;->FH:Lcom/aide/ui/scm/z;

    iget-object v0, v0, Lcom/aide/ui/scm/z;->v5:Lcom/aide/ui/scm/A;

    iget-object v0, v0, Lcom/aide/ui/scm/A;->Zo:Lcom/aide/ui/scm/ua;

    iget-object v1, p0, Lcom/aide/ui/scm/x;->v5:Lcom/aide/ui/scm/y;

    iget-object v1, v1, Lcom/aide/ui/scm/y;->FH:Lcom/aide/ui/scm/z;

    iget-object v1, v1, Lcom/aide/ui/scm/z;->v5:Lcom/aide/ui/scm/A;

    iget-object v1, v1, Lcom/aide/ui/scm/A;->v5:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/scm/x;->FH:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/scm/x;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/x;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
