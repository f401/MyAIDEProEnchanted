.class Lcom/aide/appwizard/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
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

.field final Zo:Lcom/aide/appwizard/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Lcom/aide/common/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x36c7cc7e1841c5a0L  # 8.337305141522511E-45

    const-wide v2, -0x52b469a34f507400L

    const-class v4, Lcom/aide/appwizard/o;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/appwizard/o;->Zo:Lcom/aide/appwizard/B;

    iput-object p2, p0, Lcom/aide/appwizard/o;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/appwizard/o;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/appwizard/o;->v5:Lcom/aide/common/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1e0222c192e09c6cL
    .end annotation

    const-wide v0, 0x690ae0f6cb2cc10L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x36c6138a022648b7L
    .end annotation

    const-wide v0, 0xf7e93c5079f9447L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xaab5e23cf986aa0L
    .end annotation

    const-wide v0, 0x146d594cade2aac0L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/o;->Zo:Lcom/aide/appwizard/B;

    iget-object v3, p0, Lcom/aide/appwizard/o;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/appwizard/o;->Hw:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aide/appwizard/B;->DW(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4187cfb52ed4018fL
    .end annotation

    const-wide v0, -0x335ad9ec3a61766fL  # -1.6992356801097566E61

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x65177a5e86bd8e8L
    .end annotation

    const-wide v0, 0x27ff4c806b56f98L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/o;->Zo:Lcom/aide/appwizard/B;

    invoke-static {v2}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/o;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/appwizard/o;->Hw:Ljava/lang/String;

    new-instance v5, Lcom/aide/appwizard/n;

    invoke-direct {v5, p0}, Lcom/aide/appwizard/n;-><init>(Lcom/aide/appwizard/o;)V

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
