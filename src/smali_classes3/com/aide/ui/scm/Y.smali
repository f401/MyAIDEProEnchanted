.class Lcom/aide/ui/scm/Y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/Z;->run()V
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
.field final FH:Lcom/aide/ui/scm/Z;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0xd42546aa4647e04L  # 8.38899872409892E-245

    const-class v4, Lcom/aide/ui/scm/Y;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/Y;->FH:Lcom/aide/ui/scm/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5422bd9d71c0450L
    .end annotation

    const-wide v0, -0x249a23cf47c5b550L  # -1.939548409762043E132

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/Y;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/Y;->FH:Lcom/aide/ui/scm/Z;

    iget-object v2, v2, Lcom/aide/ui/scm/Z;->VH:Lcom/aide/ui/scm/ua$a;

    iget-object v3, p0, Lcom/aide/ui/scm/Y;->FH:Lcom/aide/ui/scm/Z;

    iget-object v3, v3, Lcom/aide/ui/scm/Z;->gn:Lcom/aide/ui/scm/ua$c;

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/Y;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
