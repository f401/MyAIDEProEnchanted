.class Lcom/s1243808733/util/View2Style$1$1;
.super Ljava/lang/Object;
.source "View2Style.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/View2Style$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/View2Style$1;

.field final val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/View2Style$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/s1243808733/util/View2Style$1$1;->this$0:Lcom/s1243808733/util/View2Style$1;

    iput-object p2, p0, Lcom/s1243808733/util/View2Style$1$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/s1243808733/util/View2Style$1$1;->val$data:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
