.class Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/s1243808733/aide/application/activity/Process$Bridge;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

.field private final val$finalIndex:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/LaunchActivity;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    iput p2, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;->val$finalIndex:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;)Lcom/s1243808733/aide/application/activity/LaunchActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    iget v1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;->val$finalIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->access$1000007(Lcom/s1243808733/aide/application/activity/LaunchActivity;I)V

    return-void
.end method
