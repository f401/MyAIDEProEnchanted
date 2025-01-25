.class Lcom/aide/appwizard/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V
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

.field final Hw:Lcom/aide/common/ab;

.field final Zo:Lcom/aide/appwizard/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x36c7cc7e1841c5a0L  # 8.337305141522511E-45

    const-wide v2, -0x52b4d5257a3dd171L  # -1.667091131689954E-90

    const-class v4, Lcom/aide/appwizard/r;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/B;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Boolean;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/appwizard/r;->Zo:Lcom/aide/appwizard/B;

    iput-object p2, p0, Lcom/aide/appwizard/r;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/appwizard/r;->Hw:Lcom/aide/common/ab;

    iput-object p4, p0, Lcom/aide/appwizard/r;->v5:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x289bb51632a658bcL
    .end annotation

    const-wide v0, 0xacb1e5399457de7L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1024b9ca7c38f941L
    .end annotation

    const-wide v0, -0x285c2d043f5a03c8L  # -1.52560827409101E114

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2fa95a548d028a60L
    .end annotation

    const-wide v0, -0x14c2fea8f9359a2dL  # -3.7248894918770084E208

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/r;->Zo:Lcom/aide/appwizard/B;

    iget-object v3, p0, Lcom/aide/appwizard/r;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/appwizard/r;->v5:Ljava/lang/Boolean;

    if-nez v4, :cond_16

    const/4 v4, 0x0

    goto :goto_1e

    :cond_16
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    :goto_1e
    invoke-static {v2, v3, v4}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-object v0

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4306ec97735bfb39L
    .end annotation

    const-wide v0, -0xdf355af17b21128L  # -2.3892576806146608E241

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x151a0cc3f16c3a08L
    .end annotation

    const-wide v0, 0xc6ee1727fae571L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/r;->Zo:Lcom/aide/appwizard/B;

    invoke-static {v2}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/r;->FH:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "true"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "false"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "none"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/aide/appwizard/q;

    invoke-direct {v5, p0}, Lcom/aide/appwizard/q;-><init>(Lcom/aide/appwizard/r;)V

    invoke-static {v2, v3, v4, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method
