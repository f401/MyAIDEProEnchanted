.class Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004;

.field private final val$dialog2:Landroid/app/AlertDialog;

.field private final val$input_fileName:Landroid/widget/EditText;

.field private final val$input_outpath:Landroid/widget/EditText;

.field private final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000009$100000004;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->val$input_fileName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->val$input_outpath:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->val$result:Ljava/lang/String;

    iput-object p5, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->val$dialog2:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;)Lcom/s1243808733/util/Json2Bean$100000009$100000004;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->val$input_fileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->val$input_outpath:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->val$result:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u5bfc\u51fa\u5230:"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;->val$dialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_2
    return-void

    .line 149
    :cond_1
    const-string v0, "Exported to:"

    goto :goto_0

    .line 151
    :cond_2
    :try_start_2
    const-string v0, "output failed!"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 155
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;

    goto :goto_2
.end method
