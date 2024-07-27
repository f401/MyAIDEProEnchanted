.class Lcom/aide/appwizard/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/B;->DW(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V
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

    const-class v0, Lcom/aide/appwizard/m;

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-wide v4, -0x52b3fe2124251651L    # -1.7186310852469592E-90

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/appwizard/m;->Hw:Lcom/aide/appwizard/B;

    iput-object p2, p0, Lcom/aide/appwizard/m;->FH:Lcom/aide/appwizard/runtime/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2b4bb8cf47cdd02fL
    .end annotation

    const-wide v2, -0x4b964a37d7f1a50L    # -6.72336266187268E285

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4b964a37d7f1a50L    # -6.72336266187268E285

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x122da325a94449f0L
    .end annotation

    const-wide v2, 0x1f94a9a3f2d3dbf3L    # 1.504972100363072E-156

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f94a9a3f2d3dbf3L    # 1.504972100363072E-156

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x15b3d75a0111256dL
    .end annotation

    const-wide v4, -0x251a021f04590f0L    # -2.483102344542542E297

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x251a021f04590f0L    # -2.483102344542542E297

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/m;->Hw:Lcom/aide/appwizard/B;

    const-string v1, "Theme"

    iget-object v2, p0, Lcom/aide/appwizard/m;->FH:Lcom/aide/appwizard/runtime/i$b;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->FH()Lcom/aide/appwizard/runtime/i$e;

    move-result-object v2

    iget-object v2, v2, Lcom/aide/appwizard/runtime/i$e;->EQ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x94315189ef2ebc8L
    .end annotation

    const-wide v2, 0x1de998d0bd389d65L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1de998d0bd389d65L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1bff7f0399809dafL
    .end annotation

    const-wide v4, 0x2f3b158c617ebcc0L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2f3b158c617ebcc0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/m;->Hw:Lcom/aide/appwizard/B;

    invoke-static {v0}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v0

    invoke-static {}, Lcom/aide/appwizard/runtime/i$e;->Hw()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/appwizard/l;

    invoke-direct {v2, p0}, Lcom/aide/appwizard/l;-><init>(Lcom/aide/appwizard/m;)V

    const-string v3, "Theme"

    invoke-static {v0, v3, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
