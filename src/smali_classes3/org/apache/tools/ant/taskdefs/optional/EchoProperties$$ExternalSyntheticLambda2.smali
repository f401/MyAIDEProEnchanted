.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Ljava/util/Properties;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Properties;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda2;->f$0:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda2;->f$0:Ljava/util/Properties;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->lambda$sortProperties$1(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    move-result-object v0

    return-object v0
.end method
