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
    .registers 6

    const-class v0, Lcom/aide/appwizard/o;

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-wide v4, -0x52b469a34f507400L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x690ae0f6cb2cc10L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x690ae0f6cb2cc10L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x36c6138a022648b7L
    .end annotation

    const-wide v2, 0xf7e93c5079f9447L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf7e93c5079f9447L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xaab5e23cf986aa0L
    .end annotation

    const-wide v4, 0x146d594cade2aac0L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x146d594cade2aac0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/o;->Zo:Lcom/aide/appwizard/B;

    iget-object v1, p0, Lcom/aide/appwizard/o;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/appwizard/o;->Hw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/B;->DW(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4187cfb52ed4018fL
    .end annotation

    const-wide v2, -0x335ad9ec3a61766fL    # -1.6992356801097566E61

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x335ad9ec3a61766fL    # -1.6992356801097566E61

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x65177a5e86bd8e8L
    .end annotation

    const-wide v6, 0x27ff4c806b56f98L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x27ff4c806b56f98L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/o;->Zo:Lcom/aide/appwizard/B;

    invoke-static {v0}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/o;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/appwizard/o;->Hw:Ljava/lang/String;

    new-instance v3, Lcom/aide/appwizard/n;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/n;-><init>(Lcom/aide/appwizard/o;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/o;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
