.class Lcom/aide/ui/views/editor/C;
.super Lcom/aide/ui/views/editor/i;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/OConsole;->a8()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final gn:Lcom/aide/ui/views/editor/OConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/C;

    const-wide v2, -0x3a3a72a9f2dfbf3L

    const-wide v4, 0x301ee7500e1afda9L    # 6.672209970781637E-77

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OConsole;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/C;->gn:Lcom/aide/ui/views/editor/OConsole;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/i;-><init>()V

    return-void
.end method


# virtual methods
.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x31717fa6b3528e84L
    .end annotation

    const-wide v2, -0x51119112f65b05f3L    # -1.2532574966182164E-82

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/C;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x51119112f65b05f3L    # -1.2532574966182164E-82

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/C;->gn:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/C;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
