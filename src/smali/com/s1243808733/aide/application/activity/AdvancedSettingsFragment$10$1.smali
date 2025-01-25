.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;

.field final val$finalGradleCompleFile:Ljava/io/File;

.field final val$luaedit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;Ljava/io/File;Landroid/widget/EditText;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 494
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10$1;->val$finalGradleCompleFile:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10$1;->val$luaedit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 498
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10$1;->val$finalGradleCompleFile:Ljava/io/File;

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10$1;->val$luaedit:Landroid/widget/EditText;

    .line 499
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 498
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 500
    const-string p1, "failed"

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1b
    return-void
.end method
