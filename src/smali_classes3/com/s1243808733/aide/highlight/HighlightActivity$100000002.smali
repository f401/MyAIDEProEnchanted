.class Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;
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

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;)Lcom/s1243808733/aide/highlight/HighlightActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 158
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$L1000001(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 161
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v2, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 165
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$S1000003(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V

    .line 166
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u8fd8\u539f\u81f3\u9ed8\u8ba4"

    :goto_1
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/highlight/Item;

    .line 161
    iget-object v3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v3}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$L1000002(Lcom/s1243808733/aide/highlight/HighlightActivity;)Lcom/s1243808733/aide/highlight/HighlightAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/Item;->getDefaultColor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 166
    :cond_1
    const-string v0, "Restored to default"

    goto :goto_1
.end method
