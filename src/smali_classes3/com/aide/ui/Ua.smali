.class Lcom/aide/ui/Ua;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/Wa;->j6(Lcom/aide/ui/Wa$a;)V
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
.field final FH:Landroid/widget/EditText;

.field final Hw:Lcom/aide/ui/Wa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1bdd5d60211a3735L  # -2.3045321710945256E174

    const-wide v2, 0x4ee32cda1d1cfe40L  # 1.0587391063876588E72

    const-class v4, Lcom/aide/ui/Ua;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/Wa;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/Ua;->Hw:Lcom/aide/ui/Wa;

    iput-object p2, p0, Lcom/aide/ui/Ua;->FH:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1a5a81ab53efb240L
    .end annotation

    const-wide v0, 0xca62173e3248e7cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Ua;->Hw:Lcom/aide/ui/Wa;

    invoke-static {v2}, Lcom/aide/ui/Wa;->j6(Lcom/aide/ui/Wa;)Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/aide/ui/Ua;->FH:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v2, p0, Lcom/aide/ui/Ua;->FH:Landroid/widget/EditText;

    new-instance v3, Lcom/aide/ui/Ta;

    invoke-direct {v3, p0}, Lcom/aide/ui/Ta;-><init>(Lcom/aide/ui/Ua;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ua;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method
