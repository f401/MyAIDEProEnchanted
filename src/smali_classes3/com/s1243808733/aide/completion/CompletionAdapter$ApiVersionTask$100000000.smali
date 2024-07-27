.class Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;
.super Ljava/lang/Object;
.source "CompletionAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

.field private final val$result:Lcom/s1243808733/aide/completion/apiversion/ApiInfo;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->this$0:Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->val$result:Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;)Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->this$0:Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->this$0:Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

    iget-object v0, v0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->tag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->this$0:Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

    iget-object v1, v1, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->apiInfoTv:Landroid/widget/TextView;

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->this$0:Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

    iget-object v0, v0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->sourceEntity:Lcom/aide/engine/SourceEntity;

    check-cast v0, Ljava/lang/Object;

    check-cast v0, Lcom/s1243808733/aide/util/BaseObject;

    .line 253
    iget-object v0, v0, Lcom/s1243808733/aide/util/BaseObject;->baseObject_Data:Ljava/util/Map;

    const-string v1, "api"

    iget-object v2, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->val$result:Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->this$0:Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

    iget-object v0, v0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->apiInfoTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$100000000;->val$result:Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->setTo(Landroid/widget/TextView;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)V

    :cond_0
    return-void
.end method
