.class Lcom/aide/ui/debugger/DebugView$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/debugger/DebugView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field public FH:Lcom/aide/ui/debugger/Debugger$c;
    .annotation runtime Labcd/ru;
        field = 0x38769f9b11df4840L
    .end annotation
.end field

.field public Hw:Lcom/aide/ui/debugger/Debugger$a;
    .annotation runtime Labcd/ru;
        field = -0x385017599deaf141L
    .end annotation
.end field

.field public Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1f3095bef6708b75L
    .end annotation
.end field

.field public v5:Lcom/aide/ui/debugger/Debugger$b;
    .annotation runtime Labcd/ru;
        field = 0x2aab19de1e931651L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/debugger/DebugView$a;

    const-wide v1, 0x30aa3c7493b65bf8L  # 2.9002220372525007E-74

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/debugger/Debugger$a;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1f29f56a10a5cd1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x112de405da754e00L  # 6.308840660431423E-226

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/debugger/DebugView$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/debugger/DebugView$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Lcom/aide/ui/debugger/Debugger$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x7dd325eb1cf620dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xaf1cfffa7eb4c40L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/debugger/DebugView$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/debugger/DebugView$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Lcom/aide/ui/debugger/Debugger$c;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1cf147f0a5a8e4L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x305b0dccafd5410bL  # -4.737094055851394E75

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/debugger/DebugView$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/debugger/DebugView$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4c17fed386c5707L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3007ee6bca9fcbc0L  # -1.7418508261708158E77

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/debugger/DebugView$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/debugger/DebugView$a;->Zo:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/debugger/DebugView$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method
