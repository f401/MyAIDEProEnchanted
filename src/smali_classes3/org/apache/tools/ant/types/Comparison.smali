.class public Lorg/apache/tools/ant/types/Comparison;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Comparison.java"


# static fields
.field public static final EQUAL:Lorg/apache/tools/ant/types/Comparison;

.field private static final EQUAL_INDEX:[I

.field public static final GREATER:Lorg/apache/tools/ant/types/Comparison;

.field public static final GREATER_EQUAL:Lorg/apache/tools/ant/types/Comparison;

.field private static final GREATER_INDEX:[I

.field public static final LESS:Lorg/apache/tools/ant/types/Comparison;

.field public static final LESS_EQUAL:Lorg/apache/tools/ant/types/Comparison;

.field private static final LESS_INDEX:[I

.field public static final NOT_EQUAL:Lorg/apache/tools/ant/types/Comparison;

.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "equal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "greater"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "less"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ne"

    aput-object v2, v0, v1

    const-string v1, "ge"

    aput-object v1, v0, v3

    const-string v1, "le"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "eq"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "more"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->VALUES:[Ljava/lang/String;

    .line 37
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "equal"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    .line 40
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "ne"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->NOT_EQUAL:Lorg/apache/tools/ant/types/Comparison;

    .line 43
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "greater"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->GREATER:Lorg/apache/tools/ant/types/Comparison;

    .line 46
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "less"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->LESS:Lorg/apache/tools/ant/types/Comparison;

    .line 49
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "ge"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->GREATER_EQUAL:Lorg/apache/tools/ant/types/Comparison;

    .line 52
    new-instance v0, Lorg/apache/tools/ant/types/Comparison;

    const-string v1, "le"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Comparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->LESS_EQUAL:Lorg/apache/tools/ant/types/Comparison;

    .line 54
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL_INDEX:[I

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->LESS_INDEX:[I

    .line 56
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/tools/ant/types/Comparison;->GREATER_INDEX:[I

    return-void

    .line 54
    :array_0
    .array-data 4
        0x0
        0x4
        0x5
        0x6
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x2
        0x3
        0x5
        0x8
    .end array-data

    .line 56
    :array_2
    .array-data 4
        0x1
        0x3
        0x4
        0x7
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Comparison;->setValue(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public evaluate(I)Z
    .registers 4

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Comparison;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 89
    if-gez p1, :cond_0

    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->LESS_INDEX:[I

    .line 91
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Comparison;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 90
    :cond_0
    if-lez p1, :cond_1

    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->GREATER_INDEX:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL_INDEX:[I

    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 87
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Comparison value not set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 77
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
