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
    .locals 0
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
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return v2

    .line 81
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 82
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->val$keys:[Ljava/lang/String;

    iget v3, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->val$finali:I

    aget-object v3, v0, v3

    .line 84
    invoke-static {v3}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    .line 85
    const-string v0, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-static {v2}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v0, v0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$fgetmSwitch(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v0, v0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$fgetmSwitch(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 93
    :goto_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->notifyThemeChanged()V

    .line 94
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v4, v0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    sget-object v0, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u8bbe\u7f6e\u6210\u529f\uff0c\u5373\u5c06\u91cd\u542f"

    :goto_2
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setLightIcon()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 91
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v0, v0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$fgetmSwitch(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 96
    :cond_3
    const-string v0, "The setting is successful and is about to restart"

    goto :goto_2

    .line 98
    :sswitch_0
    const-string v0, "teal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_3

    :sswitch_1
    const-string v0, "red"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_3

    :sswitch_2
    const-string v0, "indigo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_3

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v0, v0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$msetTealIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto/16 :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v0, v0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$msetRedIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto/16 :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;->this$1:Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    iget-object v0, v0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->-$$Nest$msetIndigoIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto/16 :goto_0

    .line 112
    :cond_4
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setDarkSplash()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4696012e -> :sswitch_2
        0x1b891 -> :sswitch_1
        0x36425c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
