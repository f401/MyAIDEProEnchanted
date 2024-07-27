.class Lcom/aide/appwizard/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/B;->j6(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V
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
.field final FH:Lcom/aide/appwizard/runtime/i$b;

.field final Hw:Lcom/aide/appwizard/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/appwizard/k;

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-wide v4, -0x52b3929ef8bbb864L    # -1.744401063354205E-90

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/appwizard/k;->Hw:Lcom/aide/appwizard/B;

    iput-object p2, p0, Lcom/aide/appwizard/k;->FH:Lcom/aide/appwizard/runtime/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1ef8cfb346890a98L
    .end annotation

    const-wide v2, 0x1f84dc343f66399bL    # 7.596790637063039E-157

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f84dc343f66399bL    # 7.596790637063039E-157

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x39d66d1184e64975L
    .end annotation

    const-wide v2, -0x4d1096c8b5d71cf8L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4d1096c8b5d71cf8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1f4e6ef299083b20L
    .end annotation

    const-wide v4, -0x268e95ec4ff3f679L    # -7.194917840297103E122

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x268e95ec4ff3f679L    # -7.194917840297103E122

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/k;->Hw:Lcom/aide/appwizard/B;

    const-string v1, "Navigation"

    iget-object v2, p0, Lcom/aide/appwizard/k;->FH:Lcom/aide/appwizard/runtime/i$b;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->v5()Lcom/aide/appwizard/runtime/i$d;

    move-result-object v2

    iget-object v2, v2, Lcom/aide/appwizard/runtime/i$d;->we:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x327a283a6e69731L
    .end annotation

    const-wide v2, -0x35f63e76083d3b58L    # -4.705306617143072E48

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35f63e76083d3b58L    # -4.705306617143072E48

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x142e7e5911468500L
    .end annotation

    const-wide v4, -0x29cc78aacb2d4ebL    # -9.820449021173154E295

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29cc78aacb2d4ebL    # -9.820449021173154E295

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/k;->Hw:Lcom/aide/appwizard/B;

    invoke-static {v0}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v0

    invoke-static {}, Lcom/aide/appwizard/runtime/i$d;->Hw()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/appwizard/j;

    invoke-direct {v2, p0}, Lcom/aide/appwizard/j;-><init>(Lcom/aide/appwizard/k;)V

    const-string v3, "Navigation"

    invoke-static {v0, v3, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
