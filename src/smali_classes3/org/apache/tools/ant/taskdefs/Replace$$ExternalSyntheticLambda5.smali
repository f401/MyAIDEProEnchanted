.class public final synthetic Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;

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

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
