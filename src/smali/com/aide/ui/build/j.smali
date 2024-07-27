.class Lcom/aide/ui/build/j;
.super Lcom/aide/ui/views/editor/i;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/OutputConsole;->a8()V
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
.field final gn:Lcom/aide/ui/build/OutputConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/j;

    const-wide v2, -0x2fdcb98830cc00L

    const-wide v4, 0x12fae344abb2d237L    # 3.046757357415869E-217

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/OutputConsole;J)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/build/j;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-direct {p0, p2, p3}, Lcom/aide/ui/views/editor/i;-><init>(J)V

    return-void
.end method


# virtual methods
.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x12fac8d668b45778L
    .end annotation

    const-wide v2, 0x56897975fb2faf8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/j;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x56897975fb2faf8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/j;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->v5(Lcom/aide/ui/build/OutputConsole;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/j;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
