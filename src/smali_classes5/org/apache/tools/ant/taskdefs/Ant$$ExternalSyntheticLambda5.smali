.class public final synthetic Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    check-cast p1, Lorg/apache/tools/ant/Target;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->lambda$execute$1(Ljava/lang/String;Lorg/apache/tools/ant/Target;)Z

    move-result v0

    return v0
.end method
