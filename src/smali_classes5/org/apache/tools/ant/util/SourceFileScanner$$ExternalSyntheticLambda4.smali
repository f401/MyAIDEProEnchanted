.class public final synthetic Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lorg/apache/tools/ant/util/SourceFileScanner;->lambda$restrictAsFiles$4(I)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
