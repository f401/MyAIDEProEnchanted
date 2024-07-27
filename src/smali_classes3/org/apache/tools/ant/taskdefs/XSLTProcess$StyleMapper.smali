.class Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;
.super Ljava/lang/Object;
.source "XSLTProcess.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyleMapper"
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V
    .registers 2

    .line 1646
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;->this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;Lorg/apache/tools/ant/taskdefs/XSLTProcess$1;)V
    .registers 3

    .line 1646
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;-><init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    .line 1657
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1658
    if-lez v0, :cond_0

    .line 1659
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1661
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;->this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->access$100(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 1649
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 1653
    return-void
.end method
