.class public Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;
.super Landroid/app/DialogFragment;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/marketing/WhatsNewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhatsNewDialogFragment"
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
.field private FH:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = -0x36b93bbd73426ecdL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x3866149121ff6670L    # -8.613284577568177E36

    const-class v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x640a099cea2a8520L    # 8.049847297439837E173

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x640a099cea2a8520L    # 8.049847297439837E173

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6(Ljava/lang/Runnable;)V
    .registers 6

    const-wide v2, -0xb50d0a5b9fe44a9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb50d0a5b9fe44a9L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->FH:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6

    const-wide v2, 0x54f5cd524df1e38L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x54f5cd524df1e38L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->FH:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->FH:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    const-wide v4, -0xb13ce92aecca058L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb13ce92aecca058L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0d05d7

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/marketing/b;

    invoke-direct {v2, p0}, Lcom/aide/ui/marketing/b;-><init>(Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    const-wide v2, 0x4d0a38ae9b15318L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4d0a38ae9b15318L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->FH:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->FH:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
