.class public final synthetic Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/util/stream/Stream$Builder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Stream$Builder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda1;->f$0:Ljava/util/stream/Stream$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda1;->f$0:Ljava/util/stream/Stream$Builder;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-interface {v0, p1}, Ljava/util/stream/Stream$Builder;->add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;

    return-void
.end method
