.class Lcom/aide/ui/scm/P;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/Q;->run()V
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
.field final FH:Lcom/aide/ui/scm/Q;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x163021abc9b72915L  # -4.8787477480777875E201

    const-class v4, Lcom/aide/ui/scm/P;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/Q;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/P;->FH:Lcom/aide/ui/scm/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x337ecbe9ee1658dL
    .end annotation

    const-wide v0, 0x333c1bfdab3e7aa0L  # 6.833001903400281E-62

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/P;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/P;->FH:Lcom/aide/ui/scm/Q;

    iget-object v2, v2, Lcom/aide/ui/scm/Q;->Hw:Lcom/aide/ui/scm/S;

    iget-object v2, v2, Lcom/aide/ui/scm/S;->Zo:Lcom/aide/ui/scm/ua;

    iget-object v3, p0, Lcom/aide/ui/scm/P;->FH:Lcom/aide/ui/scm/Q;

    iget-object v3, v3, Lcom/aide/ui/scm/Q;->Hw:Lcom/aide/ui/scm/S;

    iget-object v3, v3, Lcom/aide/ui/scm/S;->v5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua;->FH(Lcom/aide/ui/scm/ua;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/P;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method
