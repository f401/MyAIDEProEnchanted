.class public final synthetic Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/util/Stack;

.field public final f$1:Lorg/apache/tools/ant/Project;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;->f$0:Ljava/util/Stack;

    iput-object p2, p0, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/Project;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;->f$0:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/Project;

    check-cast p1, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->lambda$dieOnCircularReference$2(Ljava/util/Stack;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/DataType;)V

    return-void
.end method
