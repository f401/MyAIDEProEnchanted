.class Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/preference/PreferenceTheme$1;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

.field final val$finali:I

.field final val$keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme$1;[Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iput-object p2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->val$keys:[Ljava/lang/String;

    iput p3, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->val$finali:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 81
    :cond_8
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 82
    iget-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->val$keys:[Ljava/lang/String;

    iget v2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->val$finali:I

    aget-object p1, p1, v2

    .line 84
    invoke-static {p1}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    .line 85
    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 86
    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 87
    iget-object v2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v2, v2, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v2}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$fgetmSwitch(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    iget-object v2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v2, v2, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v2}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$fgetmSwitch(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_45

    .line 90
    :cond_37
    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 91
    iget-object v2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v2, v2, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v2}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$fgetmSwitch(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 93
    :goto_45
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->notifyThemeChanged()V

    .line 94
    iget-object v2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v2, v2, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    sget-object v3, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v2, "设置成功，即将重启"

    goto :goto_62

    :cond_60
    const-string v2, "The setting is successful and is about to restart"

    :goto_62
    invoke-static {v2}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_be

    :goto_73
    goto :goto_93

    :sswitch_74
    const-string v0, "teal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_73

    :cond_7d
    const/4 v0, 0x2

    goto :goto_94

    :sswitch_7f
    const-string v2, "red"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    goto :goto_73

    :sswitch_88
    const-string v0, "indigo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    goto :goto_73

    :cond_91
    const/4 v0, 0x0

    goto :goto_94

    :goto_93
    const/4 v0, -0x1

    :cond_94
    :goto_94
    packed-switch v0, :pswitch_data_cc

    .line 109
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 110
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setLightIcon()V

    goto :goto_bc

    .line 103
    :pswitch_a1  #0x2
    iget-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object p1, p1, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {p1}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$msetTealIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto :goto_bc

    .line 100
    :pswitch_a9  #0x1
    iget-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object p1, p1, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {p1}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$msetRedIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto :goto_bc

    .line 106
    :pswitch_b1  #0x0
    iget-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object p1, p1, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {p1}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$msetIndigoIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto :goto_bc

    .line 112
    :cond_b9
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setDarkSplash()V

    .line 106
    :goto_bc
    return v1

    nop

    :sswitch_data_be
    .sparse-switch
        -0x4696012e -> :sswitch_88
        0x1b891 -> :sswitch_7f
        0x36425c -> :sswitch_74
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_b1  #00000000
        :pswitch_a9  #00000001
        :pswitch_a1  #00000002
    .end packed-switch
.end method
