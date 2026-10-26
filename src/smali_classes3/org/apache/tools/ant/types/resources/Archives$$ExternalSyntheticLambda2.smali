.class public final synthetic Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->size()I

    move-result v0

    return v0
.end method
