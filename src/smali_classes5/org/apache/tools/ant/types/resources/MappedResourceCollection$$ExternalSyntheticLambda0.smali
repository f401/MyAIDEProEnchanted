.class public final synthetic Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/Resource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/Resource;

    check-cast p1, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->lambda$getCollection$0(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/MergingMapper;)Lorg/apache/tools/ant/types/resources/MappedResource;

    move-result-object v0

    return-object v0
.end method
