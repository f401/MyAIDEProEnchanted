.class Labcd/Ki;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Oi;->Zo()V
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
.field final FH:Labcd/Oi;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Ki;

    const-wide v2, -0x5671d3d47558f1f9L

    const-wide v4, -0xb121b888d29f10L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Oi;)V
    .registers 2

    iput-object p1, p0, Labcd/Ki;->FH:Labcd/Oi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2bd51022eb56878L
    .end annotation

    const-wide v2, -0x4c08246e5fdcd811L    # -2.375468391412106E-58

    :try_start_0
    sget-boolean v0, Labcd/Ki;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4c08246e5fdcd811L    # -2.375468391412106E-58

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ki;->FH:Labcd/Oi;

    const-string v1, "Licensing service connected."

    invoke-static {v0, v1}, Labcd/Oi;->j6(Labcd/Oi;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Ki;->FH:Labcd/Oi;

    invoke-static {p2}, Lcom/aide/licensing/IAideLicensingService$a;->j6(Landroid/os/IBinder;)Lcom/aide/licensing/IAideLicensingService;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Oi;->j6(Labcd/Oi;Lcom/aide/licensing/IAideLicensingService;)Lcom/aide/licensing/IAideLicensingService;

    iget-object v0, p0, Labcd/Ki;->FH:Labcd/Oi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Oi;->j6(Labcd/Oi;Z)Z

    iget-object v0, p0, Labcd/Ki;->FH:Labcd/Oi;

    invoke-static {v0}, Labcd/Oi;->j6(Labcd/Oi;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ki;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3f5c442f86a738d0L
    .end annotation

    const-wide v2, -0x88f4a68ecb60c81L    # -2.155139423737321E267

    :try_start_0
    sget-boolean v0, Labcd/Ki;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x88f4a68ecb60c81L    # -2.155139423737321E267

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "Licensing service unexpectedly disconnected."

    invoke-static {v0}, Labcd/ue;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Ki;->FH:Labcd/Oi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Oi;->j6(Labcd/Oi;Z)Z

    iget-object v0, p0, Labcd/Ki;->FH:Labcd/Oi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Oi;->j6(Labcd/Oi;Lcom/aide/licensing/IAideLicensingService;)Lcom/aide/licensing/IAideLicensingService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ki;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
