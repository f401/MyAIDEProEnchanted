.class public final synthetic Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTargetSelectorForSource(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .registers 3

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Zip;->lambda$static$1(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    move-result-object v0

    return-object v0
.end method
