.class Lcom/s1243808733/aide/highlight/HighlightActivity$3;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/highlight/HighlightActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$3;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 182
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHighlightColor()Lcom/s1243808733/aide/highlight/color/Colors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/color/Colors;->values()[Lcom/s1243808733/aide/highlight/color/Color;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 184
    iget-object v6, v5, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    iget-object v6, v5, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$3;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/s1243808733/aide/highlight/HighlightActivity;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 192
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$3;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0, v8}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fputisDataChangeed(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V

    .line 193
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u8fd8\u539f\u81f3\u9ed8\u8ba4"

    :goto_1
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    const-string v0, "Reset to default"

    goto :goto_1
.end method
