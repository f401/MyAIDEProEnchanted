.class public final synthetic Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method
