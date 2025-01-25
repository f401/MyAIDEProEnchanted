.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->lambda$determineDependencies$2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
