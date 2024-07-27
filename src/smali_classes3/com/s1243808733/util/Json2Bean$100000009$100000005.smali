.class Lcom/s1243808733/util/Json2Bean$100000009$100000005;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000009;

.field private final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000009;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000005;->this$0:Lcom/s1243808733/util/Json2Bean$100000009;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000005;->val$result:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000009$100000005;)Lcom/s1243808733/util/Json2Bean$100000009;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000005;->this$0:Lcom/s1243808733/util/Json2Bean$100000009;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000005;->val$result:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->addToEditor(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    return v0
.end method
