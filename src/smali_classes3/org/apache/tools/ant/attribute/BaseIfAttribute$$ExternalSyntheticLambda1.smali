.class public final synthetic Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/UnknownElement;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/UnknownElement;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/UnknownElement;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/UnknownElement;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/attribute/BaseIfAttribute;->lambda$getParams$2(Lorg/apache/tools/ant/UnknownElement;Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
