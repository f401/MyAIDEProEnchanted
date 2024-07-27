.class public Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddAsisRemove"
.end annotation


# static fields
.field private static final ADD:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

.field private static final ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

.field private static final REMOVE:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 869
    const-string v0, "asis"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    .line 871
    const-string v0, "add"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ADD:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    .line 873
    const-string v0, "remove"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->REMOVE:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 868
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .registers 1

    .line 868
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .registers 1

    .line 868
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->REMOVE:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-object v0
.end method

.method static synthetic access$1000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .registers 1

    .line 868
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ADD:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .registers 2

    .line 868
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    return-object v0
.end method

.method private newInstance()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .registers 2

    .line 913
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .registers 2

    .line 922
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;-><init>()V

    .line 923
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->setValue(Ljava/lang/String;)V

    .line 924
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 886
    instance-of v0, p1, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getIndex()I

    move-result v0

    check-cast p1, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 886
    :goto_0
    return v0

    .line 887
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 877
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "add"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "asis"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "remove"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 895
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getIndex()I

    move-result v0

    return v0
.end method

.method resolve()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 899
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    :cond_0
    return-object v0

    .line 902
    :cond_1
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->ADD:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->REMOVE:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No replacement for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
