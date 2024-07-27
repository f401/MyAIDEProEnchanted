.class public final synthetic Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/apache/tools/zip/ZipEntry;

    check-cast p2, Lorg/apache/tools/zip/ZipEntry;

    invoke-static {p1, p2}, Lorg/apache/tools/zip/ZipFile;->lambda$new$1(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipEntry;)I

    move-result v0

    return v0
.end method
