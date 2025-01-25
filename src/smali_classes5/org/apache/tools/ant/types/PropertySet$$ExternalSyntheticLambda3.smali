.class public final synthetic Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/PropertySet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/PropertySet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/PropertySet;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet;->lambda$iterator$6$PropertySet(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method
