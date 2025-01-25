.class Lcom/aide/ui/ha;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/CodeEditText$d;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/LogCatConsole;->yS()V
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
.field final FH:Lcom/aide/ui/LogCatConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x328fc7caf0341855L  # -1.0675743733575116E65

    const-wide v2, -0x31e55a90f3245acdL  # -1.7959520622117168E68

    const-class v4, Lcom/aide/ui/ha;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/LogCatConsole;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/ha;->FH:Lcom/aide/ui/LogCatConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xb8cd08f85b6ea4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ha;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x27757e92263f99adL

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/aide/ui/ha;->FH:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/aide/ui/views/CodeEditText;->j6(IIII)V

    iget-object v0, p0, Lcom/aide/ui/ha;->FH:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->tp()V

    iget-object v0, p0, Lcom/aide/ui/ha;->FH:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->gn()V

    iget-object v0, p0, Lcom/aide/ui/ha;->FH:Lcom/aide/ui/LogCatConsole;

    invoke-static {v0}, Lcom/aide/ui/LogCatConsole;->DW(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/LogCatConsole$a;->J8(I)Labcd/Gk$a;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/aide/ui/ha;->FH:Lcom/aide/ui/LogCatConsole;

    invoke-static {v1, v0}, Lcom/aide/ui/LogCatConsole;->j6(Lcom/aide/ui/LogCatConsole;Labcd/Gk$a;)V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_44

    :cond_43
    return-void

    :catchall_44
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ha;->DW:Z

    if-eqz v1, :cond_67

    const-wide v2, 0x27757e92263f99adL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    throw v0
.end method
