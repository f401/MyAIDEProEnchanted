.class public final synthetic Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/util/Dictionary;

.field public final f$1:Ljava/util/Dictionary;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Dictionary;Ljava/util/Dictionary;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Dictionary;

    iput-object p2, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Dictionary;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Dictionary;

    iget-object v1, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Dictionary;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/util/CollectionUtils;->lambda$putAll$1(Ljava/util/Dictionary;Ljava/util/Dictionary;Ljava/lang/Object;)V

    return-void
.end method
