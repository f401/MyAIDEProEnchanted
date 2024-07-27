.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;

.field private final val$keySet:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;->val$keySet:[Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;)Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;->access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;->val$keySet:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->setAdapterData(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;->access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000004(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->notifyDataSetChanged()V

    .line 867
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
