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
    .registers 4
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
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10

    .line 517
    const/4 p2, 0x0

    const/4 p3, -0x1

    :try_start_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_22

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-gez p1, :cond_20

    goto :goto_22

    :cond_20
    const/4 p1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p1, 0x1

    .line 518
    :goto_23
    iget-object p4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p4, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    xor-int/2addr p1, v0

    invoke-virtual {p4, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 519
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$view2_editor:Landroid/widget/EditText;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_34

    goto :goto_47

    :catchall_34
    move-exception p1

    .line 521
    iget-object p4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p4, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 522
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;->val$view2_editor:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_47
    return-void
.end method
