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
    .registers 5

    const-wide v0, -0x2fdcb98830cc00L

    const-wide v2, 0x12fae344abb2d237L  # 3.046757357415869E-217

    const-class v4, Lcom/aide/ui/build/j;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x56897975fb2faf8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/j;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v2}, Lcom/aide/ui/build/OutputConsole;->v5(Lcom/aide/ui/build/OutputConsole;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/j;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method
