.class public final synthetic Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/AbstractFileSet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda7;->f$0:Lorg/apache/tools/ant/types/AbstractFileSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda7;->f$0:Lorg/apache/tools/ant/types/AbstractFileSet;

    check-cast p1, Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->lambda$hasPatterns$0$AbstractFileSet(Lorg/apache/tools/ant/types/PatternSet;)Z

    move-result v0

    return v0
.end method
