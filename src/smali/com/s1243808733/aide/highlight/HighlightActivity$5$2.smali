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
    .registers 4
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
    .registers 4

    .line 301
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_14
    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 271
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 273
    :try_start_5
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/EncodeUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->ungzip([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2String([B)Ljava/lang/String;

    move-result-object p1

    .line 275
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_95

    .line 276
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 278
    :try_start_24
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 279
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 282
    :goto_2e
    array-length v4, p1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_95

    if-ge v3, v4, :cond_76

    .line 284
    :try_start_31
    aget-object v4, p1, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 286
    iget-object v5, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v5, v5, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v5}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetlist(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/aide/highlight/Item;

    invoke-virtual {v5, v2}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v5

    aget-object v7, v4, v0

    invoke-direct {p0, v7}, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->decompresscolor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    iget-object v5, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v5, v5, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v5}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetlist(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/aide/highlight/Item;

    invoke-virtual {v5, v0}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->decompresscolor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_71
    .catchall {:try_start_31 .. :try_end_71} :catchall_72

    goto :goto_73

    .line 295
    :catchall_72
    move-exception v4

    .line 287
    :goto_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 291
    :cond_76
    :try_start_76
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object p1, p1, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v0, v0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 293
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object p1, p1, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {p1, v2}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fputisDataChangeed(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_95

    goto :goto_9d

    :catchall_95
    move-exception p1

    .line 295
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iget-object v0, v0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_9d
    return-void
.end method
