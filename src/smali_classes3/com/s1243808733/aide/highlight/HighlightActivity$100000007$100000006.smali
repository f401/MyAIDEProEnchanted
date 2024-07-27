.class Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->val$input:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;)Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    return-object v0
.end method

.method private decompresscolor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 300
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    :cond_0
    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 270
    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/EncodeUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->ungzip([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2String([B)Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
    aget-object v1, v2, v3

    .line 277
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 278
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move v1, v0

    .line 281
    :goto_0
    array-length v0, v2

    if-lt v1, v0, :cond_0

    .line 290
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;)Lcom/s1243808733/aide/highlight/HighlightActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;)Lcom/s1243808733/aide/highlight/HighlightActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v2, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 292
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;)Lcom/s1243808733/aide/highlight/HighlightActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$S1000003(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :goto_1
    return-void

    .line 283
    :cond_0
    :try_start_2
    aget-object v0, v2, v1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 285
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;)Lcom/s1243808733/aide/highlight/HighlightActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$L1000001(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/highlight/Item;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-direct {p0, v5}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->decompresscolor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;)Lcom/s1243808733/aide/highlight/HighlightActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$L1000001(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/highlight/Item;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->decompresscolor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    invoke-static {v1}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;)Lcom/s1243808733/aide/highlight/HighlightActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 286
    :catch_1
    move-exception v0

    goto :goto_2
.end method
