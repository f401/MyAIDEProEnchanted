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
    .registers 3

    const-class v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;

    const-wide v1, -0x3866149121ff6670L  # -8.613284577568177E36

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x640a099cea2a8520L  # 8.049847297439837E173

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public j6(Ljava/lang/Runnable;)V
    .registers 6

    const-wide v0, -0xb50d0a5b9fe44a9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->FH:Ljava/lang/Runnable;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6

    const-wide v0, 0x54f5cd524df1e38L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v2, p0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->FH:Ljava/lang/Runnable;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    const-wide v0, -0xb13ce92aecca058L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0d05d7

    invoke-virtual {p0, v3}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/marketing/b;

    invoke-direct {v4, p0}, Lcom/aide/ui/marketing/b;-><init>(Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;)V

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-object v2

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    const-wide v0, 0x4d0a38ae9b15318L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v2, p0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->FH:Ljava/lang/Runnable;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method
