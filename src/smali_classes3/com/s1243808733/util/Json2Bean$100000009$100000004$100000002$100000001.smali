.class Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002$100000001;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Lcom/s1243808733/util/ChooseDir$ChooseListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;

.field private final val$input_outpath:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002$100000001;->this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002$100000001;->val$input_outpath:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002$100000001;)Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002$100000001;->this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;

    return-object v0
.end method


# virtual methods
.method public onChooseed(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002$100000001;->val$input_outpath:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
