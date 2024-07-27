.class Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004;

.field private final val$activity:Landroid/app/Activity;

.field private final val$input_outpath:Landroid/widget/EditText;

.field private final val$srcJavaPackageName:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000009$100000004;Ljava/io/File;Landroid/app/Activity;Landroid/widget/EditText;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->val$srcJavaPackageName:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->val$input_outpath:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;)Lcom/s1243808733/util/Json2Bean$100000009$100000004;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->val$srcJavaPackageName:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002$100000001;

    iget-object v3, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->val$input_outpath:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002$100000001;-><init>(Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;Landroid/widget/EditText;)V

    invoke-static {v1, v0, v2}, Lcom/s1243808733/util/ChooseDir;->showDialog(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;->val$srcJavaPackageName:Ljava/io/File;

    goto :goto_0
.end method
