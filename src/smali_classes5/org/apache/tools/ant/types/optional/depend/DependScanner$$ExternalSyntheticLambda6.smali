.class public final synthetic Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/optional/depend/DependScanner;

.field public final f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/optional/depend/DependScanner;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;->f$0:Lorg/apache/tools/ant/types/optional/depend/DependScanner;

    iput-object p2, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;->f$0:Lorg/apache/tools/ant/types/optional/depend/DependScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->lambda$scan$2$DependScanner(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
