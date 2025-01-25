.class public final synthetic Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda16;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda16;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda16;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda16;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-static {p1}, Lorg/apache/tools/ant/DirectoryScanner;->lambda$contentsExcluded$5(Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z

    move-result v0

    return v0
.end method
