.class Lcom/s1243808733/aide/application/activity/LaunchActivity$3;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/s1243808733/aide/application/activity/Process$Bridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/LaunchActivity;->runProcess(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

.field final val$finalIndex:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/LaunchActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    iput p2, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$3;->val$finalIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    iget v1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$3;->val$finalIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->-$$Nest$mrunProcess(Lcom/s1243808733/aide/application/activity/LaunchActivity;I)V

    return-void
.end method
