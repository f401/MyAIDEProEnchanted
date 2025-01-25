.class Lcom/aide/ui/debugger/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/debugger/Debugger;-><init>(Landroid/content/Context;)V
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
.field final FH:Lcom/aide/ui/debugger/Debugger;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x17801cc048e0cd10L

    const-wide v2, -0x1755fd91a0890be7L  # -1.5189348350912648E196

    const-class v4, Lcom/aide/ui/debugger/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/debugger/Debugger;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/debugger/d;->FH:Lcom/aide/ui/debugger/Debugger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x203897c1c7d613b0L
    .end annotation

    const-wide v0, 0x77e623c031e7a8bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/d;->FH:Lcom/aide/ui/debugger/Debugger;

    invoke-static {v2}, Lcom/aide/ui/debugger/Debugger;->j6(Lcom/aide/ui/debugger/Debugger;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2f

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_37

    :cond_2f
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    :cond_37
    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/d;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method
