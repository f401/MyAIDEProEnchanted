.class public final synthetic Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/resources/Files;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/Files;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/resources/Files;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/resources/Files;

    check-cast p1, Lorg/apache/tools/ant/types/PatternSet;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/resources/Files;->$r8$lambda$oG2sTdaqT74-7iL0n5nKgy9fY2A(Lorg/apache/tools/ant/types/resources/Files;Lorg/apache/tools/ant/types/PatternSet;)Z

    move-result v0

    return v0
.end method
