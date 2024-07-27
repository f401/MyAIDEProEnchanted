.class public final synthetic Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Ljava/util/Dictionary;

.field public final f$1:Ljava/util/Dictionary;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Dictionary;Ljava/util/Dictionary;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda3;->f$0:Ljava/util/Dictionary;

    iput-object p2, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda3;->f$1:Ljava/util/Dictionary;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda3;->f$0:Ljava/util/Dictionary;

    iget-object v1, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda3;->f$1:Ljava/util/Dictionary;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/util/CollectionUtils;->lambda$equals$0(Ljava/util/Dictionary;Ljava/util/Dictionary;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
