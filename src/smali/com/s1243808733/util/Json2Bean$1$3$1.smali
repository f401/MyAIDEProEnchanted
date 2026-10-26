.class Lcom/s1243808733/util/Json2Bean$1$3$1;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$1$3;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/util/Json2Bean$1$3;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$1$3;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$3$1;->this$1:Lcom/s1243808733/util/Json2Bean$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$3$1;->this$1:Lcom/s1243808733/util/Json2Bean$1$3;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1$3;->val$result:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
