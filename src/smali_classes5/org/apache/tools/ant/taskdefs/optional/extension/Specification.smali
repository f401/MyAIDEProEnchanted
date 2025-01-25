.class public final Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
.super Ljava/lang/Object;
.source "Specification.java"


# static fields
.field public static final COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field private static final MISSING:Ljava/lang/String; = "Missing "

.field public static final REQUIRE_IMPLEMENTATION_CHANGE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private implementationTitle:Ljava/lang/String;

.field private implementationVendor:Ljava/lang/String;

.field private implementationVersion:Ljava/lang/String;

.field private sections:[Ljava/lang/String;

.field private specificationTitle:Ljava/lang/String;

.field private specificationVendor:Ljava/lang/String;

.field private specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 57
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 63
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 69
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 75
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 81
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 88
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "COMPATIBLE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 95
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_SPECIFICATION_UPGRADE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 102
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_VENDOR_SWITCH"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 109
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_IMPLEMENTATION_CHANGE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_IMPLEMENTATION_CHANGE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 118
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "INCOMPATIBLE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 202
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVendor:Ljava/lang/String;

    .line 230
    if-eqz p2, :cond_10

    .line 232
    :try_start_9
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v0, p2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_20

    .line 242
    :cond_10
    iput-object p4, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationTitle:Ljava/lang/String;

    .line 243
    iput-object p6, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVendor:Ljava/lang/String;

    .line 244
    iput-object p5, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVersion:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 249
    if-nez p7, :cond_4d

    const/4 v0, 0x0

    :goto_1d
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->sections:[Ljava/lang/String;

    .line 250
    return-void

    .line 234
    :catch_20
    move-exception v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad specification version format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. (Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_4d
    invoke-virtual {p7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1d

    .line 247
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specificationTitle"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSpecification(Ljava/lang/String;Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v8, 0x0

    .line 510
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    if-nez v1, :cond_f

    .line 512
    const/4 v0, 0x0

    .line 540
    :goto_e
    return-object v0

    .line 515
    :cond_f
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 516
    if-eqz v3, :cond_b2

    .line 520
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    if-eqz v2, :cond_9b

    .line 525
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    if-eqz v4, :cond_84

    .line 530
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 531
    if-eqz v5, :cond_6d

    .line 535
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 536
    if-eqz v6, :cond_56

    .line 540
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object p0, v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_e

    .line 537
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 532
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 527
    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 522
    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 517
    :cond_b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static getSpecifications(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 171
    if-nez p0, :cond_6

    .line 172
    new-array v0, v4, [Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    .line 180
    :goto_5
    return-object v0

    .line 174
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecification(Ljava/lang/String;Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 178
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_17

    .line 180
    :cond_43
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 181
    new-array v1, v4, [Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    goto :goto_5
.end method

.method private static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 495
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private isCompatible(Lorg/apache/tools/ant/util/DeweyDecimal;Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .registers 4

    .line 411
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    return v0
.end method

.method private static isEqual(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Z
    .registers 4

    .line 455
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 457
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 458
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 459
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 460
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 461
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    .line 455
    :goto_55
    return v0

    .line 461
    :cond_56
    const/4 v0, 0x0

    goto :goto_55
.end method

.method static synthetic lambda$mergeInSections$1(I)[Ljava/lang/String;
    .registers 2

    .line 485
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$removeDuplicates$0(Ljava/util/List;[Ljava/lang/String;)V
    .registers 2

    .line 434
    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private static mergeInSections(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;Ljava/util/List;)Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;"
        }
    .end annotation

    .line 474
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 480
    :goto_6
    return-object p0

    .line 477
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSections()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda2;

    .line 478
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 477
    invoke-static {v0, v1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 480
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationTitle()Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVersion()Ljava/lang/String;

    move-result-object v5

    .line 485
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVendor()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda3;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object p0, v0

    .line 480
    goto :goto_6
.end method

.method private static removeDuplicates(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 427
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 428
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    .line 429
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 431
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    .line 432
    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->isEqual(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 433
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSections()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v5, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 434
    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 435
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    .line 438
    :cond_41
    invoke-static {v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->mergeInSections(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;Ljava/util/List;)Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_a

    .line 442
    :cond_4c
    return-object v2
.end method


# virtual methods
.method public getCompatibilityWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;
    .registers 4

    .line 328
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 329
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 352
    :goto_e
    return-object v0

    .line 333
    :cond_f
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_22

    if-eqz v0, :cond_1f

    .line 335
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->isCompatible(Lorg/apache/tools/ant/util/DeweyDecimal;Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 336
    :cond_1f
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    goto :goto_e

    .line 340
    :cond_22
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVendor:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 341
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 342
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    goto :goto_e

    .line 346
    :cond_33
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVersion:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 347
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 348
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_IMPLEMENTATION_CHANGE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    goto :goto_e

    .line 352
    :cond_44
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    goto :goto_e
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .registers 2

    .line 276
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .registers 2

    .line 294
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .registers 2

    .line 303
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSections()[Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->sections:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_5
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;
    .registers 2

    .line 285
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    return-object v0
.end method

.method public isCompatibleWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Z
    .registers 4

    .line 364
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getCompatibilityWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%s: %s%n"

    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_2d

    .line 380
    const-string v2, "%s: %s%n"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_2d
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVendor:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 384
    const-string v2, "%s: %s%n"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_42
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationTitle:Ljava/lang/String;

    if-eqz v1, :cond_57

    .line 388
    const-string v2, "%s: %s%n"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_57
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVersion:Ljava/lang/String;

    if-eqz v1, :cond_6c

    .line 392
    const-string v2, "%s: %s%n"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_6c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVendor:Ljava/lang/String;

    if-eqz v1, :cond_81

    .line 396
    const-string v2, "%s: %s%n"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
