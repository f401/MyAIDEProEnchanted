.class public final synthetic Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->lambda$getPropertyNames$2(Ljava/util/Set;Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;)V

    return-void
.end method
