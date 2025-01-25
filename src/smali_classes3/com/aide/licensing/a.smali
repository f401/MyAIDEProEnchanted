.class Lcom/aide/licensing/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/g;)Z
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
.field final FH:Lcom/aide/licensing/d;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x267c38a81780b030L  # 2.668203999530262E-123

    const-wide v2, 0x439641ac5d7dfbf7L  # 4.00938114966552E17

    const-class v4, Lcom/aide/licensing/a;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/licensing/d;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/licensing/a;->FH:Lcom/aide/licensing/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x11915d1724957c30L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x62202526682be09L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "Licensing service connected."

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/licensing/a;->FH:Lcom/aide/licensing/d;

    invoke-static {p2}, Lcom/android/vending/licensing/ILicensingService$a;->j6(Landroid/os/IBinder;)Lcom/android/vending/licensing/ILicensingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;Lcom/android/vending/licensing/ILicensingService;)Lcom/android/vending/licensing/ILicensingService;

    iget-object v0, p0, Lcom/aide/licensing/a;->FH:Lcom/aide/licensing/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;Z)Z

    iget-object v0, p0, Lcom/aide/licensing/a;->FH:Lcom/aide/licensing/d;

    invoke-static {v0}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/a;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x62202526682be09L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x9d7481c1cfaac18L
    .end annotation

    const-wide v0, 0x70b8f4ea245cd8fL

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "Licensing service unexpectedly disconnected."

    invoke-static {v2}, Labcd/ue;->FH(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/licensing/a;->FH:Lcom/aide/licensing/d;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;Z)Z

    iget-object v2, p0, Lcom/aide/licensing/a;->FH:Lcom/aide/licensing/d;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;Lcom/android/vending/licensing/ILicensingService;)Lcom/android/vending/licensing/ILicensingService;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/a;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method
