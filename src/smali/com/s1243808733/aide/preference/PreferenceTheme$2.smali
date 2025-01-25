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
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$2;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 166
    xor-int/lit8 p1, p2, 0x1

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 167
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->notifyThemeChanged()V

    .line 168
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "设置成功，即将重启"

    goto :goto_13

    :cond_11
    const-string p1, "The settingis successful and is about to restart"

    :goto_13
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 170
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 171
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setLightIcon()V

    goto :goto_27

    .line 173
    :cond_24
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setDarkSplash()V

    :goto_27
    return-void
.end method
