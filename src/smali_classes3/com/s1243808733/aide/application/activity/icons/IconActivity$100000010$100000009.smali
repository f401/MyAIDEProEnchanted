.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010$100000009;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010;

.field private final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010$100000009;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010$100000009;->val$result:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010$100000009;)Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010$100000009;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010;

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

    .line 265
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000010$100000009;->val$result:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
