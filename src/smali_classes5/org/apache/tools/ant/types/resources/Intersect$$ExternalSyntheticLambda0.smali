.class public final synthetic Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/util/Set;

.field public final f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/function/Function;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    check-cast p1, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/Intersect;->lambda$getCollection$1(Ljava/util/Set;Ljava/util/function/Function;Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method
