.class Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

.field private final val$finali:I

.field private final val$keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    iput-object p2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->val$keys:[Ljava/lang/String;

    iput p3, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->val$finali:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;)Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return v4

    .line 81
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 82
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->val$keys:[Ljava/lang/String;

    iget v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->val$finali:I

    aget-object v1, v0, v1

    .line 84
    invoke-static {v1}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    .line 85
    const-string v0, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-static {v4}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;->access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;)Lcom/s1243808733/aide/preference/PreferenceTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->access$L1000001(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;->access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;)Lcom/s1243808733/aide/preference/PreferenceTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->access$L1000001(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 93
    :goto_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->notifyThemeChanged()V

    .line 94
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;->access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;)Lcom/s1243808733/aide/preference/PreferenceTheme;

    move-result-object v2

    sget-object v0, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u8bbe\u7f6e\u6210\u529f\uff0c\u5373\u5c06\u91cd\u542f"

    :goto_2
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    const-string v0, "red"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 100
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;->access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;)Lcom/s1243808733/aide/preference/PreferenceTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->access$1000011(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v3}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 91
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;->access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;)Lcom/s1243808733/aide/preference/PreferenceTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->access$L1000001(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 96
    :cond_2
    const-string v0, "The setting is successful and is about to restart"

    goto :goto_2

    .line 101
    :cond_3
    const-string v0, "teal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_4

    .line 103
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;->access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;)Lcom/s1243808733/aide/preference/PreferenceTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->access$1000012(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    const-string v0, "indigo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_5

    .line 106
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001$100000000;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;->access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000001;)Lcom/s1243808733/aide/preference/PreferenceTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->access$1000013(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    goto/16 :goto_0

    .line 109
    :cond_5
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setLightIcon()V

    goto/16 :goto_0

    .line 112
    :cond_6
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setDarkSplash()V

    goto/16 :goto_0
.end method
