.class public final synthetic Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;

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

    invoke-static {p1}, Lorg/apache/tools/ant/DirectoryScanner;->lambda$addExcludes$2(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
