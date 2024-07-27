.class public final synthetic Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/ImportTask;

.field public final f$1:Lorg/apache/tools/ant/types/Resource;

.field public final f$2:Ljava/io/File;

.field public final f$3:Ljava/net/URL;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/ImportTask;Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Ljava/net/URL;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/ImportTask;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;->f$1:Lorg/apache/tools/ant/types/Resource;

    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    iput-object p4, p0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;->f$3:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/ImportTask;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;->f$1:Lorg/apache/tools/ant/types/Resource;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;->f$3:Ljava/net/URL;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/tools/ant/taskdefs/ImportTask;->lambda$hasAlreadyBeenImported$0$ImportTask(Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Ljava/net/URL;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
