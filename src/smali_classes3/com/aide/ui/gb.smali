.class Lcom/aide/ui/gb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/hb;->j6(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
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

.field final Hw:Lcom/aide/ui/hb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xfe2d89ab5b35368L  # -1.131548515611858E232

    const-wide v2, 0x4e8016227d74de01L  # 1.3878086575382355E70

    const-class v4, Lcom/aide/ui/gb;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/gb;->Hw:Lcom/aide/ui/hb;

    iput-object p2, p0, Lcom/aide/ui/gb;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x328b8f3b5c14dfcL
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-wide v1, -0x559fbab3baf459L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/gb;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/aide/ui/gb;->FH:Landroid/app/Activity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/16 v0, 0x15

    invoke-static {v3, v4, v0}, Landroid/support/v4/app/c;->j6(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/aide/ui/gb;->Hw:Lcom/aide/ui/hb;

    invoke-static {v0}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/aide/ui/gb;->FH:Landroid/app/Activity;

    invoke-static {v0}, Lcom/aide/ui/ib;->Hw(Landroid/app/Activity;)V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/gb;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    throw v0
.end method
