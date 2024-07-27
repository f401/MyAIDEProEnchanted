.class public final synthetic Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/property/GetProperty;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;->INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lorg/apache/tools/ant/Main;->lambda$static$0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
