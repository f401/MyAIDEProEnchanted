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
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$3;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9

    .line 180
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 181
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 182
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHighlightColor()Lcom/s1243808733/aide/highlight/color/Colors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/color/Colors;->values()[Lcom/s1243808733/aide/highlight/color/Color;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    const/4 v4, 0x1

    if-ge v3, v1, :cond_34

    aget-object v5, v0, v3

    .line 184
    iget-object v6, v5, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v5, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    iget-object v4, v5, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 188
    :cond_34
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$3;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-virtual {p1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 192
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$3;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {p1, v4}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fputisDataChangeed(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V

    .line 193
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_53

    const-string p1, "已还原至默认"

    goto :goto_55

    :cond_53
    const-string p1, "Reset to default"

    :goto_55
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2
.end method
