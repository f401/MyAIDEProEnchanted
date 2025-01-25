.class Lcom/aide/ui/debugger/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/debugger/Debugger$c;->j6()V
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
.field final FH:Lcom/aide/ui/debugger/Debugger$c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xec0da8ff1b01100L  # 1.294107061417718E-237

    const-wide v2, 0x287211b73484ee1L

    const-class v4, Lcom/aide/ui/debugger/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/debugger/Debugger$c;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/debugger/f;->FH:Lcom/aide/ui/debugger/Debugger$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x158a1492a6959774L
    .end annotation

    const-wide v0, -0x29f46a9dc713e00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/f;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
