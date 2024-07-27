.class Lcom/s1243808733/util/Json2Bean$DialogView$100000015;
.super Landroid/text/style/ClickableSpan;
.source "Json2Bean.java"


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$DialogView;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$DialogView;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$DialogView$100000015;->this$0:Lcom/s1243808733/util/Json2Bean$DialogView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$DialogView$100000015;)Lcom/s1243808733/util/Json2Bean$DialogView;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView$100000015;->this$0:Lcom/s1243808733/util/Json2Bean$DialogView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 388
    const-string v0, "https://api.aidepro.top/resources?key=apk&type=json2bean&download=1"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->openUrl(Ljava/lang/String;)V

    return-void
.end method
