.class Lcom/aide/ui/ia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/LogCatConsole;->j6(Labcd/Gk$a;)V
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
.field final FH:Labcd/Gk$a;

.field final Hw:Lcom/aide/ui/LogCatConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/ia;

    const-wide v2, -0x328fc7caf0341855L    # -1.0675743733575116E65

    const-wide v4, -0x31e5b10ec3d17d5cL    # -1.7731805261346883E68

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/LogCatConsole;Labcd/Gk$a;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/ia;->Hw:Lcom/aide/ui/LogCatConsole;

    iput-object p2, p0, Lcom/aide/ui/ia;->FH:Labcd/Gk$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a7e73d62da52255L
    .end annotation

    const-wide v2, -0x3d1686ac3d36e1f3L    # -2.240710960929124E14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ia;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3d1686ac3d36e1f3L    # -2.240710960929124E14

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/ia;->Hw:Lcom/aide/ui/LogCatConsole;

    invoke-static {v0}, Lcom/aide/ui/LogCatConsole;->DW(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/ia;->FH:Labcd/Gk$a;

    invoke-virtual {v0, v1}, Lcom/aide/ui/LogCatConsole$a;->j6(Labcd/Gk$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ia;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
