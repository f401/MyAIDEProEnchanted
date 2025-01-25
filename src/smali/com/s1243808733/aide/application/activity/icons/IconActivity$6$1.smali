.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$6$1;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity$6;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$6;

.field final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$6;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$6$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$6;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$6$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 240
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$6$1;->val$result:Ljava/lang/String;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
