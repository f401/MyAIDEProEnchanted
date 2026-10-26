.class Lcom/s1243808733/aide/preference/PreferenceTheme$2;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/preference/PreferenceTheme;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$2;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 166
    xor-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 167
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->notifyThemeChanged()V

    .line 168
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bbe\u7f6e\u6210\u529f\uff0c\u5373\u5c06\u91cd\u542f"

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setLightIcon()V

    .line 173
    :goto_1
    return-void

    .line 168
    :cond_0
    const-string v0, "The settingis successful and is about to restart"

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setDarkSplash()V

    goto :goto_1
.end method
