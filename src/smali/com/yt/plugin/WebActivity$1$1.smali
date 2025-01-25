.class Lcom/yt/plugin/WebActivity$1$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yt/plugin/WebActivity$1;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/yt/plugin/WebActivity$1;

.field final val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yt/plugin/WebActivity$1;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/yt/plugin/WebActivity$1$1;->this$1:Lcom/yt/plugin/WebActivity$1;

    iput-object p2, p0, Lcom/yt/plugin/WebActivity$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 255
    iget-object p1, p0, Lcom/yt/plugin/WebActivity$1$1;->val$url:Ljava/lang/String;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->openUrl(Ljava/lang/String;)V

    return-void
.end method
