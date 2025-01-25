.class public final synthetic Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/comparators/Reverse$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
