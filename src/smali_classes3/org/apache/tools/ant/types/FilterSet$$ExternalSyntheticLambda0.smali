.class public final synthetic Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/FilterSet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/FilterSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/FilterSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/FilterSet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/FilterSet;->lambda$readFiltersFromFile$1$FilterSet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
