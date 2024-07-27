.class public final synthetic Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/FilterSet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/FilterSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/types/FilterSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/types/FilterSet;

    check-cast p1, Lorg/apache/tools/ant/types/FilterSet$Filter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FilterSet;->lambda$getFilterHash$0$FilterSet(Lorg/apache/tools/ant/types/FilterSet$Filter;)V

    return-void
.end method
