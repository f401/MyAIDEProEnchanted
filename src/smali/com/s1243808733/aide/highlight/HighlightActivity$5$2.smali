.class Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/highlight/HighlightActivity$5;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity$5;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decompresscolor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 301
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 271
    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/EncodeUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->ungzip([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2String([B)Ljava/lang/String;

    move-result-object v1

    .line 275
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 276
    aget-object v1, v2, v3

    .line 278
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 279
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move v1, v0

    .line 282
    :goto_0
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v1, v0, :cond_0

    .line 284
    :try_start_2
    aget-object v0, v2, v1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 286
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v0, v0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetlist(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/highlight/Item;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-direct {p0, v6}, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->decompresscolor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v0, v0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetlist(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/highlight/Item;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->decompresscolor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_0
    :try_start_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v0, v0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v1, v1, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-virtual {v1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/aide/highlight/HighlightActivity;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 293
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v0, v0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fputisDataChangeed(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    :goto_2
    return-void

    .line 293
    :catchall_0
    move-exception v0

    .line 295
    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v1, v1, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
