.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/util/jar/JarEntry;

    check-cast p2, Ljava/util/jar/JarEntry;

    invoke-static {p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->lambda$isRebuildRequired$6(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method
