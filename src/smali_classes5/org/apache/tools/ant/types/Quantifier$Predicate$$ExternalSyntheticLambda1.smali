.class public final synthetic Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->lambda$get$1(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method
