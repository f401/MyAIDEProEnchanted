.class Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
.source "BorlandDeploymentTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getBorlandDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;

.field final val$srcDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;Lorg/apache/tools/ant/Task;Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 205
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;

    iput-object p4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;->val$srcDir:Ljava/io/File;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;-><init>(Lorg/apache/tools/ant/Task;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected processElement()V
    .registers 7

    .line 208
    const-string v0, "type-storage"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;->ejbFiles:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;->currentText:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;->val$srcDir:Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;->currentText:Ljava/lang/String;

    .line 212
    new-instance v4, Ljava/io/File;

    const-string v5, "META-INF/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_24
    return-void
.end method
