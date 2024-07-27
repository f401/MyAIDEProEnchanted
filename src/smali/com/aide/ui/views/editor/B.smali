.class Lcom/aide/ui/views/editor/B;
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

    const-class v0, Lcom/aide/ui/views/editor/B;

    const-wide v2, -0x3a3a72a9f2dfbf3L

    const-wide v4, 0x301eb565e6df6560L    # 6.630113151736928E-77

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OConsole;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/B;->gn:Lcom/aide/ui/views/editor/OConsole;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/i;-><init>()V

    return-void
.end method


# virtual methods
.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2e3b8502bff757c0L
    .end annotation

    const-wide v2, -0x5119b451ad828200L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/B;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5119b451ad828200L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/B;->gn:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/B;->gn:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/B;->gn:Lcom/aide/ui/views/editor/OConsole;

    invoke-static {v0}, Lcom/aide/ui/views/editor/OConsole;->j6(Lcom/aide/ui/views/editor/OConsole;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/B;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
