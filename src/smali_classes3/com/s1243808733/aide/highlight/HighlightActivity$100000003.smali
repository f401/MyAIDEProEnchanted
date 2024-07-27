.class Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;)Lcom/s1243808733/aide/highlight/HighlightActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 181
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHighlightColor()Lcom/s1243808733/aide/highlight/color/Colors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/color/Colors;->values()[Lcom/s1243808733/aide/highlight/color/Color;

    move-result-object v3

    move v0, v1

    .line 184
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    .line 187
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v3, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 191
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0, v7}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$S1000003(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V

    .line 192
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u8fd8\u539f\u81f3\u9ed8\u8ba4"

    :goto_1
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    return v1

    .line 182
    :cond_0
    aget-object v4, v3, v0

    .line 183
    iget-object v5, v4, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    iget-object v5, v4, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    const-string v0, "Reset to default"

    goto :goto_1
.end method
