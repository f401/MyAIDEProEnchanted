.class Lcom/aide/common/Ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Fa;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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

.field final Hw:Landroid/widget/EditText;

.field final v5:Lcom/aide/common/Fa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x591bccec5c964d88L

    const-wide v2, 0x662dc44e73ef0179L  # 1.5810290140459234E184

    const-class v4, Lcom/aide/common/Ba;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Fa;Landroid/app/Activity;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/Ba;->v5:Lcom/aide/common/Fa;

    iput-object p2, p0, Lcom/aide/common/Ba;->FH:Landroid/app/Activity;

    iput-object p3, p0, Lcom/aide/common/Ba;->Hw:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xa4a6bab3e2d42fdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Ba;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x19179349cfb2832dL  # 8.466048880450183E-188

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/common/Ba;->FH:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/aide/common/Ba;->Hw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/aide/common/Ba;->v5:Lcom/aide/common/Fa;

    invoke-static {v0}, Lcom/aide/common/Fa;->DW(Lcom/aide/common/Fa;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Ba;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x19179349cfb2832dL  # 8.466048880450183E-188

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method
