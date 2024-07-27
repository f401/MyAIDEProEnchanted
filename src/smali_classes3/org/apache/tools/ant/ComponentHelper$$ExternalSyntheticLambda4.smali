.class public final synthetic Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/ComponentHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/ComponentHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda4;->f$0:Lorg/apache/tools/ant/ComponentHelper;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda4;->f$0:Lorg/apache/tools/ant/ComponentHelper;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->lambda$getDataTypeDefinitions$2$ComponentHelper(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method
