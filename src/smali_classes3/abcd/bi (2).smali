.class Labcd/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ci;->onShow(Landroid/content/DialogInterface;)V
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
.field final FH:Landroid/app/AlertDialog;

.field final Hw:Labcd/ci;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x41623341de9b130L

    const-wide v2, -0x4acde3ed0e1931e1L  # -1.8907371506142175E-52

    const-class v4, Labcd/bi;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ci;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Labcd/bi;->Hw:Labcd/ci;

    iput-object p2, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5824b4ded408de7L
    .end annotation

    const-string v0, ".git"

    const-wide v1, 0x6018a100c747fb90L  # 8.255495094590818E154

    :try_start_7
    sget-boolean v3, Labcd/bi;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f1

    :cond_e
    :try_start_e
    new-instance v3, Labcd/HJ;

    iget-object v4, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v4, v4, Labcd/ci;->Hw:Labcd/di;

    iget-object v5, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v4, v5}, Labcd/di;->FH(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    invoke-static {}, Labcd/jJ;->u7()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/DJ;

    invoke-virtual {v5}, Labcd/DJ;->DW()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SSH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v5, v3}, Labcd/DJ;->j6(Labcd/HJ;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v3}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5d

    invoke-virtual {v3}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_25

    :cond_5d
    const-string v0, "user"

    invoke-virtual {v3, v0}, Labcd/HJ;->v5(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    iget-object v3, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v3, v3, Labcd/ci;->FH:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "You must specify a username in the URL in this form: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_85
    invoke-virtual {v3}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://github.com/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bf

    iget-object v4, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v4, v4, Labcd/ci;->Hw:Labcd/di;

    iget-object v5, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v4, v5}, Labcd/di;->Hw(Labcd/di;Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_bd
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_bd} :catch_be
    .catchall {:try_start_e .. :try_end_bd} :catchall_f1

    goto :goto_bf

    :catch_be
    move-exception v0

    :cond_bf
    :goto_bf
    :try_start_bf
    iget-object v0, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v0, v0, Labcd/ci;->Hw:Labcd/di;

    iget-object v3, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v0, v3}, Labcd/di;->j6(Labcd/di;Landroid/app/AlertDialog;)V

    iget-object v0, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v0

    iget-object v3, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v3, v3, Labcd/ci;->Hw:Labcd/di;

    invoke-static {v3}, Labcd/di;->j6(Labcd/di;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v4, v4, Labcd/ci;->Hw:Labcd/di;

    iget-object v5, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v4, v5}, Labcd/di;->DW(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v5, v5, Labcd/ci;->Hw:Labcd/di;

    iget-object v6, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v5, v6}, Labcd/di;->FH(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_bf .. :try_end_f0} :catchall_f1

    return-void

    :catchall_f1
    move-exception v0

    sget-boolean v3, Labcd/bi;->DW:Z

    if-eqz v3, :cond_f9

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f9
    goto :goto_fb

    :goto_fa
    throw v0

    :goto_fb
    goto :goto_fa
.end method
