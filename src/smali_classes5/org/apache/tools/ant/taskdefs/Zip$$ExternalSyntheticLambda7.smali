.class public final synthetic Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Zip;->lambda$static$0(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method
