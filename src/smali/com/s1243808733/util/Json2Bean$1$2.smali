.class Lcom/s1243808733/util/Json2Bean$1$2;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/Json2Bean$1;

.field final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$2;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$1$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$2;->val$result:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->addToEditor(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
