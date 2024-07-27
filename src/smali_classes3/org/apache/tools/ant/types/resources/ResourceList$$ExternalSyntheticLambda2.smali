.class public final synthetic Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/resources/ResourceList;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/ResourceList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/resources/ResourceList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/resources/ResourceList;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/resources/ResourceList;->$r8$lambda$Juk_xI3OaaJYfxLYmT8RHmhvGlc(Lorg/apache/tools/ant/types/resources/ResourceList;Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method
