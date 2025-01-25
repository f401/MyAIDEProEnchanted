.class Lcom/aide/ui/views/editor/l;
.super Ljava/util/TimerTask;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/m;->DW()V
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
.field final FH:Lcom/aide/ui/views/editor/m;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1804a013a407569L

    const-wide v2, 0xf245fdf3c203a48L  # 1.001245009520823E-235

    const-class v4, Lcom/aide/ui/views/editor/l;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/m;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x20aef57530b8e5b0L
    .end annotation

    const-wide v0, -0xcf8e472a3efaa9cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    invoke-static {v2}, Lcom/aide/ui/views/editor/m;->j6(Lcom/aide/ui/views/editor/m;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    invoke-static {v2}, Lcom/aide/ui/views/editor/m;->DW(Lcom/aide/ui/views/editor/m;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/m;->j6(Lcom/aide/ui/views/editor/m;Z)Z

    iget-object v2, p0, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    invoke-static {v2}, Lcom/aide/ui/views/editor/m;->FH(Lcom/aide/ui/views/editor/m;)Lcom/aide/ui/views/editor/OConsole;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/views/editor/k;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/k;-><init>(Lcom/aide/ui/views/editor/l;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/l;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method
