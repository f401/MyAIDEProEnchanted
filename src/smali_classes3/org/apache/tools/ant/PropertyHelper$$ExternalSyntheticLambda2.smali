.class public final synthetic Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/property/PropertyExpander;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/ParseNextProperty;)Ljava/lang/String;
    .registers 5

    invoke-static {p1, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->lambda$static$1(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/ParseNextProperty;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
