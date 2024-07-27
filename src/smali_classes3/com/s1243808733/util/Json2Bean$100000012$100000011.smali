.class Lcom/s1243808733/util/Json2Bean$100000012$100000011;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000012;

.field private final val$activity:Landroid/app/Activity;

.field private final val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

.field private final val$jsonData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000012;Ljava/lang/String;Lcom/s1243808733/util/Json2Bean$DialogView;Landroid/app/Activity;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000012$100000011;->this$0:Lcom/s1243808733/util/Json2Bean$100000012;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000012$100000011;->val$jsonData:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/util/Json2Bean$100000012$100000011;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iput-object p4, p0, Lcom/s1243808733/util/Json2Bean$100000012$100000011;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000012$100000011;)Lcom/s1243808733/util/Json2Bean$100000012;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000012$100000011;->this$0:Lcom/s1243808733/util/Json2Bean$100000012;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000012$100000011;->val$jsonData:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Json2Bean;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$100000012$100000011;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v1, v1, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 272
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$100000012$100000011;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
