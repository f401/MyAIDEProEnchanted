.class public final synthetic Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/Main;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/Main;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda9;->f$0:Lorg/apache/tools/ant/Main;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda9;->f$0:Lorg/apache/tools/ant/Main;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Main;->lambda$loadPropertyFiles$3$Main(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
