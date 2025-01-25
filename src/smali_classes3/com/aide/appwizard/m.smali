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
    .registers 5

    const-wide v0, 0x36c7cc7e1841c5a0L  # 8.337305141522511E-45

    const-wide v2, -0x52b3fe2124251651L  # -1.7186310852469592E-90

    const-class v4, Lcom/aide/appwizard/m;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x4b964a37d7f1a50L  # -6.72336266187268E285

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x122da325a94449f0L
    .end annotation

    const-wide v0, 0x1f94a9a3f2d3dbf3L  # 1.504972100363072E-156

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x15b3d75a0111256dL
    .end annotation

    const-wide v0, -0x251a021f04590f0L  # -2.483102344542542E297

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/m;->Hw:Lcom/aide/appwizard/B;

    const-string v3, "Theme"

    iget-object v4, p0, Lcom/aide/appwizard/m;->FH:Lcom/aide/appwizard/runtime/i$b;

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$b;->FH()Lcom/aide/appwizard/runtime/i$e;

    move-result-object v4

    iget-object v4, v4, Lcom/aide/appwizard/runtime/i$e;->EQ:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x94315189ef2ebc8L
    .end annotation

    const-wide v0, 0x1de998d0bd389d65L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1bff7f0399809dafL
    .end annotation

    const-wide v0, 0x2f3b158c617ebcc0L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/m;->Hw:Lcom/aide/appwizard/B;

    invoke-static {v2}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v2

    invoke-static {}, Lcom/aide/appwizard/runtime/i$e;->Hw()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/appwizard/l;

    invoke-direct {v4, p0}, Lcom/aide/appwizard/l;-><init>(Lcom/aide/appwizard/m;)V

    const-string v5, "Theme"

    invoke-static {v2, v5, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/m;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method
