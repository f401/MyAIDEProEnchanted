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
    .registers 3

    const-class v0, Lcom/aide/common/sa;

    const-wide v1, -0x62616ea16afc888L  # -9.186109928122519E278

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/common/sa;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1f5ca2393a9e8288L  # -3.3236457195852035E157

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aide/common/sa;->Zo:Landroid/os/Handler;

    iput-object p1, p0, Lcom/aide/common/sa;->FH:Landroid/app/Activity;

    iput-object p2, p0, Lcom/aide/common/sa;->Hw:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/aide/common/sa;->gn:I
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/common/sa;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x1f5ca2393a9e8288L  # -3.3236457195852035E157

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
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

    const-wide v0, -0x106d3bd1e6b4f79bL  # -2.84522113139698E229

    :try_start_5
    sget-boolean v2, Lcom/aide/common/sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/aide/common/sa;->FH:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/aide/common/sa;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/aide/common/ra;

    invoke-direct {v3, p0}, Lcom/aide/common/ra;-><init>(Lcom/aide/common/sa;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v2, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/common/sa;->DW:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v2
.end method


# virtual methods
.method protected DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x26b833ac20d0d16fL
    .end annotation

    const-wide v0, -0x1bc60a7b0186798dL  # -6.420464874629002E174

    :try_start_5
    sget-boolean v2, Lcom/aide/common/sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/sa;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, -0x1f8bc1d2c7690200L  # -4.342601819483464E156

    :try_start_5
    sget-boolean v2, Lcom/aide/common/sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/common/sa;->j6()V

    invoke-direct {p0}, Lcom/aide/common/sa;->v5()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/common/sa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Hw()V
    .registers 7

    const-wide v0, -0x56dc18ee33ae21c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/common/sa;->j6()V

    new-instance v2, Lcom/aide/common/qa;

    invoke-direct {v2, p0}, Lcom/aide/common/qa;-><init>(Lcom/aide/common/sa;)V

    iput-object v2, p0, Lcom/aide/common/sa;->VH:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/aide/common/sa;->Zo:Landroid/os/Handler;

    iget v4, p0, Lcom/aide/common/sa;->gn:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/sa;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public j6()V
    .registers 6

    const-wide v0, -0x1b1231cb141a60a0L  # -1.5097456739950894E178

    :try_start_5
    sget-boolean v2, Lcom/aide/common/sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/sa;->VH:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    iget-object v4, p0, Lcom/aide/common/sa;->Zo:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/aide/common/sa;->VH:Ljava/lang/Runnable;

    :cond_18
    iget-object v2, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v3, p0, Lcom/aide/common/sa;->v5:Landroid/app/ProgressDialog;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/common/sa;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
