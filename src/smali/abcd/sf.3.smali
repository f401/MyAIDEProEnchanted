.class Labcd/sf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/uf;->run()V
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

.field final Hw:Labcd/uf;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/sf;

    const-wide v2, 0x1298307f917b3980L    # 4.282812849239566E-219

    const-wide v4, 0x5212bf952229cdffL    # 2.330999930122487E87

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/uf;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/sf;->Hw:Labcd/uf;

    iput-object p2, p0, Labcd/sf;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xb9bb5d8df5720c3L
    .end annotation

    const-wide v2, -0x373e14e6410af388L    # -3.1218188785456414E42

    :try_start_0
    sget-boolean v0, Labcd/sf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x373e14e6410af388L    # -3.1218188785456414E42

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    iget-object v1, p0, Labcd/sf;->Hw:Labcd/uf;

    iget-object v1, v1, Labcd/uf;->FH:Labcd/vf;

    iget-object v1, v1, Labcd/vf;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/Nk;->Zo(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    iget-object v1, p0, Labcd/sf;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/Ji;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
