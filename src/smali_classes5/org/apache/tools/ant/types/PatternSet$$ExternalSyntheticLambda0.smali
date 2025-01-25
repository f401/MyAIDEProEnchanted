.class public final synthetic Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/PatternSet;

.field public final f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/PatternSet;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/PatternSet;

    iput-object p2, p0, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/PatternSet;

    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/types/PatternSet;->lambda$readPatterns$0$PatternSet(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
