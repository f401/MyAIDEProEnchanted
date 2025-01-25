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
    .registers 5

    const-wide v0, -0x328fc7caf0341855L  # -1.0675743733575116E65

    const-wide v2, -0x31e5b10ec3d17d5cL  # -1.7731805261346883E68

    const-class v4, Lcom/aide/ui/ia;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x3d1686ac3d36e1f3L  # -2.240710960929124E14

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/ia;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/ia;->Hw:Lcom/aide/ui/LogCatConsole;

    invoke-static {v2}, Lcom/aide/ui/LogCatConsole;->DW(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/LogCatConsole$a;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/ia;->FH:Labcd/Gk$a;

    invoke-virtual {v2, v3}, Lcom/aide/ui/LogCatConsole$a;->j6(Labcd/Gk$a;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/ia;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
