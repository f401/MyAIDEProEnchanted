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
    .registers 2

    .line 1076
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1081
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/xutils/DbManager;->dropDb()V

    .line 1082
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_1a

    if-eqz p1, :cond_10

    const-string p1, "已清除翻译文件"

    goto :goto_12

    :cond_10
    const-string p1, "Translation file cleared"

    :goto_12
    :try_start_12
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    .line 1083
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_22

    :catchall_1a
    move-exception p1

    .line 1085
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    :goto_22
    return-void
.end method
