.class public final synthetic Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda6;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Jar;->lambda$findJarName$3(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
