.class public Lorg/apache/tools/ant/types/Quantifier;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Quantifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Quantifier$Predicate;
    }
.end annotation


# static fields
.field public static final ALL:Lorg/apache/tools/ant/types/Quantifier;

.field public static final ANY:Lorg/apache/tools/ant/types/Quantifier;

.field public static final MAJORITY:Lorg/apache/tools/ant/types/Quantifier;

.field public static final NONE:Lorg/apache/tools/ant/types/Quantifier;

.field public static final ONE:Lorg/apache/tools/ant/types/Quantifier;

.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    invoke-static {}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->values()[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda0;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/types/Quantifier$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->VALUES:[Ljava/lang/String;

    .line 50
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ALL:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->ALL:Lorg/apache/tools/ant/types/Quantifier;

    .line 53
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ANY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->ANY:Lorg/apache/tools/ant/types/Quantifier;

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->ONE:Lorg/apache/tools/ant/types/Quantifier;

    .line 59
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->MAJORITY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->MAJORITY:Lorg/apache/tools/ant/types/Quantifier;

    .line 63
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier;

    sget-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->NONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Quantifier;-><init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier;->NONE:Lorg/apache/tools/ant/types/Quantifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 133
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Quantifier;->setValue(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private constructor <init>(Lorg/apache/tools/ant/types/Quantifier$Predicate;)V
    .registers 3

    .line 137
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 138
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->getNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Quantifier;->setValue(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method static synthetic lambda$static$0(I)[Ljava/lang/String;
    .registers 2

    .line 47
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(II)Z
    .registers 5

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Quantifier;->getIndex()I

    move-result v0

    .line 173
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 176
    sget-object v1, Lorg/apache/tools/ant/types/Quantifier;->VALUES:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->get(Ljava/lang/String;)Lorg/apache/tools/ant/types/Quantifier$Predicate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->eval(II)Z

    move-result v0

    return v0

    .line 174
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Quantifier value not set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evaluate([Z)Z
    .registers 6

    const/4 v1, 0x0

    .line 156
    .line 157
    array-length v3, p1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, p1, v2

    .line 158
    if-eqz v1, :cond_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 157
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 162
    :cond_1
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/Quantifier;->evaluate(II)Z

    move-result v0

    return v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 147
    sget-object v0, Lorg/apache/tools/ant/types/Quantifier;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
