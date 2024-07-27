.class Lcom/s1243808733/aide/preference/PreferenceTheme$100000002;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000002;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000002;)Lcom/s1243808733/aide/preference/PreferenceTheme;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000002;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 166
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 167
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->notifyThemeChanged()V

    .line 168
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8bbe\u7f6e\u6210\u529f\uff0c\u5373\u5c06\u91cd\u542f"

    :goto_1
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setLightIcon()V

    .line 173
    :goto_2
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const-string v0, "The settingis successful and is about to restart"

    goto :goto_1

    .line 173
    :cond_2
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setDarkSplash()V

    goto :goto_2
.end method
