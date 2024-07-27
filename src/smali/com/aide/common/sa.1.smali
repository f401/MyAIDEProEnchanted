.class public Lcom/aide/common/sa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field private final FH:Landroid/app/Activity;
    .annotation runtime Labcd/ru;
        field = 0xba3de8ccc7d40d0L
    .end annotation
.end field

.field private final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1094732b570728e0L
    .end annotation
.end field

.field private VH:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = -0xe39352b45cd9a9fL
    .end annotation
.end field

.field private Zo:Landroid/os/Handler;
    .annotation runtime Labcd/ru;
        field = -0x60517a98a25d227L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x3af6b37ac506e18L
    .end annotation
.end field

.field private v5:Landroid/app/ProgressDialog;
    .annotation runtime Labcd/ru;
        field = 0x84af5a14b015a88L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x62616ea16afc888L    # -9.186109928122519E278

    const-class v0, Lcom/aide/common/sa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 10

    const-wide v2, -0x1f5ca2393a9e8288L    # -3.3236457195852035E157

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f5ca2393a9e8288L    # -3.3236457195852035E157

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aide/common/sa;->Zo:Landroid/os/Handler;

    iput-object p1, p0, Lcom/aide/common/sa;->FH:Landroid/app/Activity;

    iput-object p2, p0, Lcom/aide/common/sa;->Hw:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/aide/common/sa;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/sa;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/common/sa;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/common/sa;->v5()V

    return-void
.end method

.method private v5()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3b6dd23bf2c1b4cbL
    .end annotation

    const-wide v2, -0x106d3bd1e6b4f79bL    # -2.84522113139698E229

    :try_start_0
    sget-boolean v0, Lcom/aide/common/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x106d3bd1e6b4f79bL    # -2.84522113139698E229

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aide/common/sa;->FH:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aide/common/sa;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/aide/common/ra;

    invoke-direct {v1, p0}, Lcom/aide/common/ra;-><init>(Lcom/aide/common/sa;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/sa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x26b833ac20d0d16fL
    .end annotation

    const-wide v2, -0x1bc60a7b0186798dL    # -6.420464874629002E174

    :try_start_0
    sget-boolean v0, Lcom/aide/common/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1bc60a7b0186798dL    # -6.420464874629002E174

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/sa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, -0x1f8bc1d2c7690200L    # -4.342601819483464E156

    :try_start_0
    sget-boolean v0, Lcom/aide/common/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f8bc1d2c7690200L    # -4.342601819483464E156

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/common/sa;->j6()V

    invoke-direct {p0}, Lcom/aide/common/sa;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/sa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()V
    .registers 7

    const-wide v4, -0x56dc18ee33ae21c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x56dc18ee33ae21c0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/common/sa;->j6()V

    new-instance v0, Lcom/aide/common/qa;

    invoke-direct {v0, p0}, Lcom/aide/common/qa;-><init>(Lcom/aide/common/sa;)V

    iput-object v0, p0, Lcom/aide/common/sa;->VH:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/aide/common/sa;->Zo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/common/sa;->VH:Ljava/lang/Runnable;

    iget v2, p0, Lcom/aide/common/sa;->gn:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/sa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x1b1231cb141a60a0L    # -1.5097456739950894E178

    :try_start_0
    sget-boolean v0, Lcom/aide/common/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b1231cb141a60a0L    # -1.5097456739950894E178

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/sa;->VH:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/sa;->Zo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/common/sa;->VH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/common/sa;->VH:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/sa;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method
