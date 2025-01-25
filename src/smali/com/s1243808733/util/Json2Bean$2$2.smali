.class Lcom/s1243808733/util/Json2Bean$2$2;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/Json2Bean$2;

.field final val$jsonData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$2;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$2$2;->this$0:Lcom/s1243808733/util/Json2Bean$2;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$2$2;->val$jsonData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 261
    :try_start_0
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$2$2;->val$jsonData:Ljava/lang/String;

    invoke-static {p1}, Lcom/s1243808733/util/Json2Bean;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 262
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_23

    .line 265
    :cond_11
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$2$2;->this$0:Lcom/s1243808733/util/Json2Bean$2;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$2;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception p1

    .line 268
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$2$2;->this$0:Lcom/s1243808733/util/Json2Bean$2;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    const/4 p1, 0x0

    return p1
.end method
