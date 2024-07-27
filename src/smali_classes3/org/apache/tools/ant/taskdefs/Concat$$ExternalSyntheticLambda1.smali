.class public final synthetic Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getReader(Ljava/lang/Object;)Ljava/io/Reader;
    .registers 3

    check-cast p1, Ljava/io/Reader;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Concat;->lambda$new$0(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method
