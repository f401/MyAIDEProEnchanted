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
    .registers 6

    const-class v0, Lcom/aide/appwizard/r;

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-wide v4, -0x52b4d5257a3dd171L    # -1.667091131689954E-90

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0xacb1e5399457de7L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xacb1e5399457de7L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1024b9ca7c38f941L
    .end annotation

    const-wide v2, -0x285c2d043f5a03c8L    # -1.52560827409101E114

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x285c2d043f5a03c8L    # -1.52560827409101E114

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2fa95a548d028a60L
    .end annotation

    const-wide v4, -0x14c2fea8f9359a2dL    # -3.7248894918770084E208

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14c2fea8f9359a2dL    # -3.7248894918770084E208

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/appwizard/r;->Zo:Lcom/aide/appwizard/B;

    iget-object v2, p0, Lcom/aide/appwizard/r;->FH:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/appwizard/r;->v5:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/aide/appwizard/r;->v5:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4306ec97735bfb39L
    .end annotation

    const-wide v2, -0xdf355af17b21128L    # -2.3892576806146608E241

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xdf355af17b21128L    # -2.3892576806146608E241

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x151a0cc3f16c3a08L
    .end annotation

    const-wide v6, 0xc6ee1727fae571L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc6ee1727fae571L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/r;->Zo:Lcom/aide/appwizard/B;

    invoke-static {v0}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/r;->FH:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "false"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "none"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/aide/appwizard/q;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/q;-><init>(Lcom/aide/appwizard/r;)V

    invoke-static {v0, v1, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
