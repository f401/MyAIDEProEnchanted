.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1081
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/xutils/DbManager;->dropDb()V

    .line 1082
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u6e05\u9664\u7ffb\u8bd1\u6587\u4ef6"

    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    .line 1083
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    :goto_1
    return-void

    .line 1082
    :cond_0
    const-string v0, "Translation file cleared"

    goto :goto_0

    .line 1083
    :catchall_0
    move-exception v0

    .line 1085
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_1
.end method
