.class public Lorg/apache/commons/lang3/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/lang3/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 138
    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 142
    const-string v0, "}"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 147
    const-string v0, ":-"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 248
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 273
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 287
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 288
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 304
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;)V"
        }
    .end annotation

    .line 313
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 314
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 328
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 329
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 330
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 331
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 332
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 348
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 349
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 350
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 351
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 352
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    .line 366
    sget-object v5, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;CLorg/apache/commons/lang3/text/StrMatcher;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;CLorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            ")V"
        }
    .end annotation

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 384
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 385
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 386
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 387
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 388
    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 899
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 900
    return-void

    .line 902
    :cond_7
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    .line 903
    const-string v0, "Infinite loop in property interpolation of "

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 904
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 905
    const-string v0, ": "

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 906
    const-string v0, "->"

    invoke-virtual {v1, p2, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 907
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 206
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .registers 6

    .line 218
    if-nez p1, :cond_7

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_6
    return-object v0

    .line 221
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 223
    :goto_10
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 224
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 228
    :cond_24
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 239
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 759
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v14

    .line 760
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v15

    .line 761
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getEscapeChar()C

    move-result v16

    .line 762
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getValueDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v17

    .line 763
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v18

    .line 765
    if-nez p4, :cond_31

    const/4 v2, 0x1

    .line 766
    :goto_17
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 769
    add-int v6, p2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v8, p4

    move/from16 v9, p2

    .line 771
    :goto_23
    if-ge v9, v6, :cond_127

    .line 772
    move/from16 v0, p2

    invoke-virtual {v14, v7, v9, v0, v6}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v11

    .line 774
    if-nez v11, :cond_33

    .line 775
    add-int/lit8 v5, v9, 0x1

    :cond_2f
    :goto_2f
    move v9, v5

    .line 794
    goto :goto_23

    .line 765
    :cond_31
    const/4 v2, 0x0

    goto :goto_17

    .line 777
    :cond_33
    move/from16 v0, p2

    if-le v9, v0, :cond_5a

    add-int/lit8 v5, v9, -0x1

    aget-char v5, v7, v5

    move/from16 v0, v16

    if-ne v5, v0, :cond_5a

    .line 779
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    if-eqz v5, :cond_48

    .line 780
    add-int/lit8 v9, v9, 0x1

    .line 781
    goto :goto_23

    .line 783
    :cond_48
    add-int/lit8 v4, v9, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 784
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 785
    add-int/lit8 v3, v3, -0x1

    .line 786
    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x1

    move v5, v9

    goto :goto_2f

    .line 777
    :cond_5a
    add-int v5, v9, v11

    .line 792
    const/4 v10, 0x0

    .line 794
    :goto_5d
    if-ge v5, v6, :cond_2f

    .line 795
    if-eqz v18, :cond_6d

    .line 796
    move/from16 v0, p2

    invoke-virtual {v14, v7, v5, v0, v6}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v12

    if-eqz v12, :cond_6d

    .line 799
    add-int/lit8 v10, v10, 0x1

    .line 800
    add-int/2addr v5, v12

    .line 801
    goto :goto_5d

    .line 804
    :cond_6d
    move/from16 v0, p2

    invoke-virtual {v15, v7, v5, v0, v6}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v13

    .line 806
    if-nez v13, :cond_78

    .line 807
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 810
    :cond_78
    if-nez v10, :cond_122

    .line 811
    new-instance v12, Ljava/lang/String;

    add-int v10, v9, v11

    sub-int v19, v5, v9

    sub-int v11, v19, v11

    invoke-direct {v12, v7, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .line 814
    if-eqz v18, :cond_9a

    .line 815
    new-instance v10, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v10, v12}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    const/4 v11, 0x0

    invoke-virtual {v10}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 817
    invoke-virtual {v10}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 814
    :cond_9a
    add-int/2addr v5, v13

    .line 820
    const/4 v11, 0x0

    .line 825
    if-eqz v17, :cond_b7

    .line 826
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    .line 827
    const/4 v10, 0x0

    :goto_a3
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_b7

    .line 830
    if-nez v18, :cond_109

    array-length v0, v13

    move/from16 v19, v0

    .line 831
    move/from16 v0, v19

    invoke-virtual {v14, v13, v10, v10, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v19

    if-eqz v19, :cond_109

    :cond_b7
    move-object v10, v12

    move-object v13, v11

    .line 825
    :goto_b9
    if-nez v8, :cond_cc

    .line 844
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 845
    new-instance v11, Ljava/lang/String;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v11, v7, v0, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_cc
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lorg/apache/commons/lang3/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 851
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1, v9, v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v10

    .line 856
    if-nez v10, :cond_12c

    .line 859
    :goto_de
    if-eqz v13, :cond_fe

    .line 861
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    .line 862
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v5, v13}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 863
    const/4 v4, 0x1

    .line 864
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v7, v8}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v10

    .line 866
    add-int/2addr v7, v10

    sub-int v9, v5, v9

    sub-int v9, v7, v9

    .line 868
    add-int/2addr v5, v9

    .line 869
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/2addr v6, v9

    add-int/2addr v3, v9

    .line 876
    :cond_fe
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 834
    :cond_109
    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v10}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CI)I

    move-result v19

    if-eqz v19, :cond_11f

    .line 835
    const/4 v11, 0x0

    invoke-virtual {v12, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 836
    add-int v10, v10, v19

    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v11

    move-object v13, v12

    .line 837
    goto :goto_b9

    .line 828
    :cond_11f
    add-int/lit8 v10, v10, 0x1

    goto :goto_a3

    .line 880
    :cond_122
    add-int/lit8 v10, v10, -0x1

    .line 881
    add-int/2addr v5, v13

    goto/16 :goto_5d

    .line 886
    :cond_127
    if-eqz v2, :cond_12a

    .line 889
    :goto_129
    return v4

    :cond_12a
    move v4, v3

    goto :goto_129

    :cond_12c
    move-object v13, v10

    goto :goto_de
.end method


# virtual methods
.method public getEscapeChar()C
    .registers 2

    .line 943
    iget-char v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getValueDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 1102
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 969
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 1034
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .registers 2

    .line 1190
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public isPreserveEscapes()Z
    .registers 2

    .line 1215
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    return v0
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 522
    if-nez p1, :cond_4

    .line 523
    const/4 v0, 0x0

    .line 525
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 6

    .line 543
    if-nez p1, :cond_4

    .line 544
    const/4 v0, 0x0

    .line 548
    :goto_3
    return-object v0

    .line 546
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 547
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 548
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 601
    if-nez p1, :cond_4

    .line 602
    const/4 v0, 0x0

    .line 606
    :goto_3
    return-object v0

    .line 604
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 605
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 606
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 399
    if-nez p1, :cond_4

    .line 400
    const/4 p1, 0x0

    .line 406
    :cond_3
    :goto_3
    return-object p1

    .line 402
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    .line 422
    if-nez p1, :cond_4

    .line 423
    const/4 v0, 0x0

    .line 429
    :goto_3
    return-object v0

    .line 425
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 426
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 427
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 429
    :cond_1b
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 5

    .line 482
    if-nez p1, :cond_4

    .line 483
    const/4 v0, 0x0

    .line 487
    :goto_3
    return-object v0

    .line 485
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 486
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 487
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .registers 6

    .line 504
    if-nez p1, :cond_4

    .line 505
    const/4 v0, 0x0

    .line 509
    :goto_3
    return-object v0

    .line 507
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 508
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 509
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;)Ljava/lang/String;
    .registers 5

    .line 561
    if-nez p1, :cond_4

    .line 562
    const/4 v0, 0x0

    .line 566
    :goto_3
    return-object v0

    .line 564
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 565
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 566
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .registers 6

    .line 583
    if-nez p1, :cond_4

    .line 584
    const/4 v0, 0x0

    .line 588
    :goto_3
    return-object v0

    .line 586
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 587
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 588
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace([C)Ljava/lang/String;
    .registers 5

    .line 442
    if-nez p1, :cond_4

    .line 443
    const/4 v0, 0x0

    .line 447
    :goto_3
    return-object v0

    .line 445
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 446
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 447
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replace([CII)Ljava/lang/String;
    .registers 6

    .line 464
    if-nez p1, :cond_4

    .line 465
    const/4 v0, 0x0

    .line 469
    :goto_3
    return-object v0

    .line 467
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 468
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 469
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .registers 4

    const/4 v0, 0x0

    .line 619
    if-nez p1, :cond_4

    .line 622
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    goto :goto_3
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .registers 7

    const/4 v0, 0x0

    .line 639
    if-nez p1, :cond_4

    .line 647
    :cond_3
    :goto_3
    return v0

    .line 642
    :cond_4
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v1

    .line 643
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 646
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .registers 4

    const/4 v0, 0x0

    .line 661
    if-nez p1, :cond_4

    .line 664
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result v0

    goto :goto_3
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .registers 7

    const/4 v0, 0x0

    .line 682
    if-nez p1, :cond_4

    .line 690
    :cond_3
    :goto_3
    return v0

    .line 685
    :cond_4
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v1

    .line 686
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 689
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .registers 4

    const/4 v0, 0x0

    .line 702
    if-nez p1, :cond_4

    .line 705
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    goto :goto_3
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .registers 5

    .line 721
    if-nez p1, :cond_4

    .line 722
    const/4 v0, 0x0

    .line 724
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    goto :goto_3
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .registers 6

    .line 928
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    .line 929
    if-nez v0, :cond_8

    .line 930
    const/4 v0, 0x0

    .line 932
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .registers 2

    .line 1204
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 1205
    return-void
.end method

.method public setEscapeChar(C)V
    .registers 2

    .line 954
    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    .line 955
    return-void
.end method

.method public setPreserveEscapes(Z)V
    .registers 2

    .line 1231
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    .line 1232
    return-void
.end method

.method public setValueDelimiter(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 3

    .line 1136
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 3

    .line 1154
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 1158
    :goto_a
    return-object p0

    :cond_b
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object p0

    goto :goto_a
.end method

.method public setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    .line 1120
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1121
    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 3

    .line 1002
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 4

    .line 1016
    if-eqz p1, :cond_b

    .line 1019
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 4

    .line 984
    if-eqz p1, :cond_5

    .line 987
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 988
    return-object p0

    .line 985
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix matcher must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;)V"
        }
    .end annotation

    .line 1178
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    .line 1179
    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 3

    .line 1067
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 4

    .line 1081
    if-eqz p1, :cond_b

    .line 1084
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 1082
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 4

    .line 1049
    if-eqz p1, :cond_5

    .line 1052
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1053
    return-object p0

    .line 1050
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix matcher must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .registers 5

    .line 743
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
