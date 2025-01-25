.class Lcom/aide/common/Ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    const-wide v2, 0x662f10cd9b50ba70L  # 1.6500140246021343E184

    const-class v4, Lcom/aide/common/Ea;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Fa;Landroid/app/Activity;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/Ea;->v5:Lcom/aide/common/Fa;

    iput-object p2, p0, Lcom/aide/common/Ea;->FH:Landroid/app/Activity;

    iput-object p3, p0, Lcom/aide/common/Ea;->Hw:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x7eb622548290a20L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Ea;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x60959a2e3f1e02dbL

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4b

    iget-object v0, p0, Lcom/aide/common/Ea;->FH:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/aide/common/Ea;->Hw:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/aide/common/Ea;->v5:Lcom/aide/common/Fa;

    invoke-static {v0}, Lcom/aide/common/Fa;->Hw(Lcom/aide/common/Fa;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/aide/common/Ea;->v5:Lcom/aide/common/Fa;

    invoke-static {v0}, Lcom/aide/common/Fa;->FH(Lcom/aide/common/Fa;)Lcom/aide/common/ab;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/common/Ea;->Hw:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4c

    :cond_4b
    return v1

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Ea;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, -0x60959a2e3f1e02dbL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method
