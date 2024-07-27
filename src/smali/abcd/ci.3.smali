.class Labcd/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/di;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Landroid/app/Activity;

.field final Hw:Labcd/di;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/ci;

    const-wide v2, 0x41623341de9b130L

    const-wide v4, -0x2408ccc0d50d1ef0L    # -1.0539244458959155E135

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/di;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Labcd/ci;->Hw:Labcd/di;

    iput-object p2, p0, Labcd/ci;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x45cbbfd0c52db60L
    .end annotation

    const-wide v6, 0xa9ef9a43ffab8e0L

    :try_start_0
    sget-boolean v2, Labcd/ci;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0xa9ef9a43ffab8e0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v2, v0

    iget-object v3, p0, Labcd/ci;->Hw:Labcd/di;

    invoke-virtual {v3, v2}, Labcd/di;->j6(Landroid/app/AlertDialog;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Labcd/bi;

    invoke-direct {v4, p0, v2}, Labcd/bi;-><init>(Labcd/ci;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/ci;->DW:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v2
.end method
