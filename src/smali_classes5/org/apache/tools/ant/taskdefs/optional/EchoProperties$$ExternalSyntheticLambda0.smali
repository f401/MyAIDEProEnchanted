.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Ljava/util/Properties;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Properties;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->lambda$saveProperties$0(Ljava/util/Properties;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
