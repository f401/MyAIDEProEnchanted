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
    .registers 5

    const-wide v0, 0x1298307f917b3980L  # 4.282812849239566E-219

    const-wide v2, 0x5212bf952229cdffL  # 2.330999930122487E87

    const-class v4, Labcd/sf;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x373e14e6410af388L  # -3.1218188785456414E42

    :try_start_5
    sget-boolean v2, Labcd/sf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    iget-object v3, p0, Labcd/sf;->Hw:Labcd/uf;

    iget-object v3, v3, Labcd/uf;->FH:Labcd/vf;

    iget-object v3, v3, Labcd/vf;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Nk;->Zo(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    iget-object v3, p0, Labcd/sf;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Ji;->DW(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Labcd/sf;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method
