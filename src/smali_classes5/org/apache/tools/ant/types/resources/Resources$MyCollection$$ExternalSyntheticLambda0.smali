.class public final synthetic Lorg/apache/tools/ant/types/resources/Resources$MyCollection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collection;

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
