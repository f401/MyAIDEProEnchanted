.class public final synthetic Lorg/apache/tools/ant/taskdefs/Property$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Property;->lambda$addProperties$0(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
