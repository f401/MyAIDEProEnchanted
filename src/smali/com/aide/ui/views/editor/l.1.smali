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
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/l;

    const-wide v2, 0x1804a013a407569L

    const-wide v4, 0xf245fdf3c203a48L    # 1.001245009520823E-235

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, -0xcf8e472a3efaa9cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcf8e472a3efaa9cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    invoke-static {v0}, Lcom/aide/ui/views/editor/m;->j6(Lcom/aide/ui/views/editor/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    iget-object v0, p0, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    invoke-static {v0}, Lcom/aide/ui/views/editor/m;->DW(Lcom/aide/ui/views/editor/m;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/aide/ui/views/editor/m;->j6(Lcom/aide/ui/views/editor/m;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    invoke-static {v0}, Lcom/aide/ui/views/editor/m;->FH(Lcom/aide/ui/views/editor/m;)Lcom/aide/ui/views/editor/OConsole;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/editor/k;

    invoke-direct {v1, p0}, Lcom/aide/ui/views/editor/k;-><init>(Lcom/aide/ui/views/editor/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/l;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method
