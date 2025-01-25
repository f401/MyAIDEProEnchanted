.class Lcom/s1243808733/aide/highlight/HighlightActivity$2;
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

    .line 155
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$2;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    .line 159
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 160
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$2;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetlist(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/highlight/Item;

    .line 162
    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$2;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v2}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/highlight/HighlightActivity;)Lcom/s1243808733/aide/highlight/HighlightAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/s1243808733/aide/highlight/Item;->getDefaultColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_12

    .line 164
    :cond_34
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$2;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-virtual {p1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 166
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$2;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fputisDataChangeed(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V

    .line 167
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_54

    const-string p1, "已还原至默认"

    goto :goto_56

    :cond_54
    const-string p1, "Restored to default"

    :goto_56
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1
.end method
