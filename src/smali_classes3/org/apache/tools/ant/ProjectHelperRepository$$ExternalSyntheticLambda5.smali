.class public final synthetic Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/Resource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda5;->f$0:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda5;->f$0:Lorg/apache/tools/ant/types/Resource;

    check-cast p1, Lorg/apache/tools/ant/ProjectHelper;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/ProjectHelperRepository;->lambda$getProjectHelperForBuildFile$0(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/ProjectHelper;)Z

    move-result v0

    return v0
.end method
