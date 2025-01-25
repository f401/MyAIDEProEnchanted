.class public Lcom/sun/tools/javac/code/Lint;
.super Ljava/lang/Object;
.source "Lint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Lint$AugmentVisitor;,
        Lcom/sun/tools/javac/code/Lint$LintCategory;
    }
.end annotation


# static fields
.field protected static final lintKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/code/Lint;",
            ">;"
        }
    .end annotation
.end field

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final augmentor:Lcom/sun/tools/javac/code/Lint$AugmentVisitor;

.field private final suppressedValues:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/Lint;->lintKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/Lint;->map:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/code/Lint;)V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget-object v0, p1, Lcom/sun/tools/javac/code/Lint;->augmentor:Lcom/sun/tools/javac/code/Lint$AugmentVisitor;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint;->augmentor:Lcom/sun/tools/javac/code/Lint$AugmentVisitor;

    .line 120
    iget-object v0, p1, Lcom/sun/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    .line 121
    iget-object v0, p1, Lcom/sun/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    .line 122
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v2

    .line 106
    const-class v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    .line 107
    sget-object v0, Lcom/sun/tools/javac/code/Lint;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Options;->lint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 109
    iget-object v1, p0, Lcom/sun/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 112
    :cond_3b
    const-class v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    .line 114
    sget-object v0, Lcom/sun/tools/javac/code/Lint;->lintKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 115
    new-instance v0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;-><init>(Lcom/sun/tools/javac/util/Context;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint;->augmentor:Lcom/sun/tools/javac/code/Lint$AugmentVisitor;

    .line 116
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .line 49
    sget-object v0, Lcom/sun/tools/javac/code/Lint;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/code/Lint;)Ljava/util/EnumSet;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/code/Lint;)Ljava/util/EnumSet;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    return-object v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Lint;
    .registers 2

    .line 56
    sget-object v0, Lcom/sun/tools/javac/code/Lint;->lintKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Lint;

    .line 57
    if-nez v0, :cond_f

    .line 58
    new-instance v0, Lcom/sun/tools/javac/code/Lint;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Lint;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 59
    :cond_f
    return-object v0
.end method


# virtual methods
.method public augment(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/Lint;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint;->augmentor:Lcom/sun/tools/javac/code/Lint$AugmentVisitor;

    invoke-virtual {v0, p0, p1}, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->augment(Lcom/sun/tools/javac/code/Lint;Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    return-object v0
.end method

.method public augment(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Lint;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;)",
            "Lcom/sun/tools/javac/code/Lint;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint;->augmentor:Lcom/sun/tools/javac/code/Lint$AugmentVisitor;

    invoke-virtual {v0, p0, p1}, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->augment(Lcom/sun/tools/javac/code/Lint;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    return-object v0
.end method

.method public augment(Lcom/sun/tools/javac/util/List;J)Lcom/sun/tools/javac/code/Lint;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;J)",
            "Lcom/sun/tools/javac/code/Lint;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint;->augmentor:Lcom/sun/tools/javac/code/Lint$AugmentVisitor;

    invoke-virtual {v0, p0, p1}, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->augment(Lcom/sun/tools/javac/code/Lint;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    .line 85
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_25

    .line 86
    if-ne v0, p0, :cond_17

    .line 87
    new-instance v0, Lcom/sun/tools/javac/code/Lint;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Lint;-><init>(Lcom/sun/tools/javac/code/Lint;)V

    .line 88
    :cond_17
    iget-object v1, v0, Lcom/sun/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, v0, Lcom/sun/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_25
    return-object v0
.end method

.method public isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuppressed(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lint:[values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " suppressedValues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
