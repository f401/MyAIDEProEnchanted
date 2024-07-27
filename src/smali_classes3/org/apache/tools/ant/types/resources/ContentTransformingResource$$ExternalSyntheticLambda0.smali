.class public final synthetic Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/types/resources/Appendable;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/resources/ContentTransformingResource;

.field public final f$1:Lorg/apache/tools/ant/types/resources/Appendable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/ContentTransformingResource;Lorg/apache/tools/ant/types/resources/Appendable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/resources/ContentTransformingResource;

    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/types/resources/Appendable;

    return-void
.end method


# virtual methods
.method public final getAppendOutputStream()Ljava/io/OutputStream;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/resources/ContentTransformingResource;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/types/resources/Appendable;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->lambda$as$0$ContentTransformingResource(Lorg/apache/tools/ant/types/resources/Appendable;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
