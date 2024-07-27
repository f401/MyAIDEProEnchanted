.class Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000006;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000008;

.field private final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000009$100000008;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000006;->this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000008;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000006;->val$result:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000006;)Lcom/s1243808733/util/Json2Bean$100000009$100000008;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000006;->this$0:Lcom/s1243808733/util/Json2Bean$100000009$100000008;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000008$100000006;->val$result:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
