.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/util/Hashtable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Hashtable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda1;->f$0:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda1;->f$0:Ljava/util/Hashtable;

    check-cast p1, Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    return-void
.end method
