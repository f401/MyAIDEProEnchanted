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
    .registers 6

    const-class v0, Labcd/bi;

    const-wide v2, 0x41623341de9b130L

    const-wide v4, -0x4acde3ed0e1931e1L    # -1.8907371506142175E-52

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v6, 0x6018a100c747fb90L    # 8.255495094590818E154

    :try_start_0
    sget-boolean v0, Labcd/bi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6018a100c747fb90L    # 8.255495094590818E154

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    new-instance v1, Labcd/HJ;

    iget-object v0, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v0, v0, Labcd/ci;->Hw:Labcd/di;

    iget-object v2, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v0, v2}, Labcd/di;->FH(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    invoke-static {}, Labcd/jJ;->u7()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/DJ;

    invoke-virtual {v0}, Labcd/DJ;->DW()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SSH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Labcd/DJ;->j6(Labcd/HJ;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    const-string v0, "user"

    invoke-virtual {v1, v0}, Labcd/HJ;->v5(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    iget-object v1, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v1, v1, Labcd/ci;->FH:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You must specify a username in the URL in this form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://github.com/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ".git"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v0, v0, Labcd/ci;->Hw:Labcd/di;

    iget-object v2, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v0, v2}, Labcd/di;->Hw(Labcd/di;Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".git"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    :try_start_2
    iget-object v0, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v0, v0, Labcd/ci;->Hw:Labcd/di;

    iget-object v1, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Labcd/di;->j6(Labcd/di;Landroid/app/AlertDialog;)V

    iget-object v0, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v0

    iget-object v1, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v1, v1, Labcd/ci;->Hw:Labcd/di;

    invoke-static {v1}, Labcd/di;->j6(Labcd/di;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v2, v2, Labcd/ci;->Hw:Labcd/di;

    iget-object v3, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v2, v3}, Labcd/di;->DW(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/bi;->Hw:Labcd/ci;

    iget-object v3, v3, Labcd/ci;->Hw:Labcd/di;

    iget-object v4, p0, Labcd/bi;->FH:Landroid/app/AlertDialog;

    invoke-static {v3, v4}, Labcd/di;->FH(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bi;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
