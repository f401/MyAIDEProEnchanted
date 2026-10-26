.class Lcom/s1243808733/util/Json2Bean$1$1$2$1;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Lcom/s1243808733/util/ChooseDir$ChooseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$1$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$2:Lcom/s1243808733/util/Json2Bean$1$1$2;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$1$1$2;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$1$2$1;->this$2:Lcom/s1243808733/util/Json2Bean$1$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseed(Ljava/io/File;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1$2$1;->this$2:Lcom/s1243808733/util/Json2Bean$1$1$2;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1$1$2;->val$input_outpath:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
