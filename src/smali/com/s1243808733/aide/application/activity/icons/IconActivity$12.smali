.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity;->exportToPNG(Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$view2_editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$view2_editor:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 517
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 518
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$dialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$view2_editor:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 517
    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    .line 521
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 522
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$view2_editor:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
