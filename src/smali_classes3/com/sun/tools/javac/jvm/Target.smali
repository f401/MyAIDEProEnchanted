.class public final enum Lcom/sun/tools/javac/jvm/Target;
.super Ljava/lang/Enum;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/jvm/Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/jvm/Target;

.field public static final DEFAULT:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_1:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_2:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_3:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_4:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_4_1:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_4_2:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_5:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_6:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JDK1_7:Lcom/sun/tools/javac/jvm/Target;

.field public static final enum JSR14:Lcom/sun/tools/javac/jvm/Target;

.field private static MAX:Lcom/sun/tools/javac/jvm/Target;

.field private static MIN:Lcom/sun/tools/javac/jvm/Target;

.field private static tab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/jvm/Target;",
            ">;"
        }
    .end annotation
.end field

.field private static final targetKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/jvm/Target;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final majorVersion:I

.field public final minorVersion:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 45
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_1"

    const/4 v2, 0x0

    const-string v3, "1.1"

    const/16 v4, 0x2d

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_1:Lcom/sun/tools/javac/jvm/Target;

    .line 46
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_2"

    const/4 v2, 0x1

    const-string v3, "1.2"

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_2:Lcom/sun/tools/javac/jvm/Target;

    .line 47
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_3"

    const/4 v2, 0x2

    const-string v3, "1.3"

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_3:Lcom/sun/tools/javac/jvm/Target;

    .line 52
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_4"

    const/4 v2, 0x3

    const-string v3, "1.4"

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4:Lcom/sun/tools/javac/jvm/Target;

    .line 59
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JSR14"

    const/4 v2, 0x4

    const-string v3, "jsr14"

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JSR14:Lcom/sun/tools/javac/jvm/Target;

    .line 66
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_4_1"

    const/4 v2, 0x5

    const-string v3, "1.4.1"

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4_1:Lcom/sun/tools/javac/jvm/Target;

    .line 67
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_4_2"

    const/4 v2, 0x6

    const-string v3, "1.4.2"

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4_2:Lcom/sun/tools/javac/jvm/Target;

    .line 72
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_5"

    const/4 v2, 0x7

    const-string v3, "1.5"

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    .line 77
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_6"

    const/16 v2, 0x8

    const-string v3, "1.6"

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_6:Lcom/sun/tools/javac/jvm/Target;

    .line 82
    new-instance v0, Lcom/sun/tools/javac/jvm/Target;

    const-string v1, "JDK1_7"

    const/16 v2, 0x9

    const-string v3, "1.7"

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_7:Lcom/sun/tools/javac/jvm/Target;

    .line 44
    sget-object v2, Lcom/sun/tools/javac/jvm/Target;->JDK1_1:Lcom/sun/tools/javac/jvm/Target;

    const/4 v1, 0x0

    const/16 v3, 0xa

    new-array v3, v3, [Lcom/sun/tools/javac/jvm/Target;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->JDK1_2:Lcom/sun/tools/javac/jvm/Target;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->JDK1_3:Lcom/sun/tools/javac/jvm/Target;

    aput-object v4, v3, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->JDK1_4:Lcom/sun/tools/javac/jvm/Target;

    aput-object v4, v3, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->JSR14:Lcom/sun/tools/javac/jvm/Target;

    aput-object v4, v3, v2

    const/4 v2, 0x5

    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->JDK1_4_1:Lcom/sun/tools/javac/jvm/Target;

    aput-object v4, v3, v2

    const/4 v2, 0x6

    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->JDK1_4_2:Lcom/sun/tools/javac/jvm/Target;

    aput-object v4, v3, v2

    const/4 v2, 0x7

    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    aput-object v4, v3, v2

    const/16 v2, 0x8

    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->JDK1_6:Lcom/sun/tools/javac/jvm/Target;

    aput-object v4, v3, v2

    const/16 v2, 0x9

    aput-object v0, v3, v2

    sput-object v3, Lcom/sun/tools/javac/jvm/Target;->$VALUES:[Lcom/sun/tools/javac/jvm/Target;

    .line 84
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->targetKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    .line 114
    invoke-static {}, Lcom/sun/tools/javac/jvm/Target;->values()[Lcom/sun/tools/javac/jvm/Target;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    .line 115
    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->MIN:Lcom/sun/tools/javac/jvm/Target;

    if-nez v4, :cond_0

    sput-object v1, Lcom/sun/tools/javac/jvm/Target;->MIN:Lcom/sun/tools/javac/jvm/Target;

    .line 116
    :cond_0
    sput-object v1, Lcom/sun/tools/javac/jvm/Target;->MAX:Lcom/sun/tools/javac/jvm/Target;

    .line 117
    sget-object v4, Lcom/sun/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    iget-object v5, v1, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    const-string v1, "5"

    sget-object v2, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    const-string v1, "6"

    sget-object v2, Lcom/sun/tools/javac/jvm/Target;->JDK1_6:Lcom/sun/tools/javac/jvm/Target;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    const-string v1, "7"

    sget-object v2, Lcom/sun/tools/javac/jvm/Target;->JDK1_7:Lcom/sun/tools/javac/jvm/Target;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_7:Lcom/sun/tools/javac/jvm/Target;

    sput-object v0, Lcom/sun/tools/javac/jvm/Target;->DEFAULT:Lcom/sun/tools/javac/jvm/Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    .line 130
    iput p4, p0, Lcom/sun/tools/javac/jvm/Target;->majorVersion:I

    .line 131
    iput p5, p0, Lcom/sun/tools/javac/jvm/Target;->minorVersion:I

    .line 132
    return-void
.end method

.method public static MAX()Lcom/sun/tools/javac/jvm/Target;
    .registers 1

    .line 108
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->MAX:Lcom/sun/tools/javac/jvm/Target;

    return-object v0
.end method

.method public static MIN()Lcom/sun/tools/javac/jvm/Target;
    .registers 1

    .line 102
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->MIN:Lcom/sun/tools/javac/jvm/Target;

    return-object v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;
    .registers 4

    .line 88
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->targetKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/Target;

    .line 89
    if-nez v0, :cond_2

    .line 90
    invoke-static {p0}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->TARGET:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Target;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    .line 93
    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->DEFAULT:Lcom/sun/tools/javac/jvm/Target;

    .line 94
    :cond_1
    sget-object v1, Lcom/sun/tools/javac/jvm/Target;->targetKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 96
    :cond_2
    return-object v0
.end method

.method public static lookup(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/Target;
    .registers 2

    .line 137
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/Target;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/Target;
    .registers 2

    .line 44
    const-class v0, Lcom/sun/tools/javac/jvm/Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/Target;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/jvm/Target;
    .registers 1

    .line 44
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->$VALUES:[Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/jvm/Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/jvm/Target;

    return-object v0
.end method


# virtual methods
.method public arrayBinaryCompatibility()Z
    .registers 2

    .line 180
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public boxWithConstructors()Z
    .registers 2

    .line 340
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public classLiteralsNoInit()Z
    .registers 2

    .line 324
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4_2:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compilerBootstrap(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 6

    .line 356
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JSR14:Lcom/sun/tools/javac/jvm/Target;

    if-ne p0, v0, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sun.tools."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateCLDCStackmap()Z
    .registers 2

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public generateEmptyAfterBig()Z
    .registers 2

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public generateStackMapTable()Z
    .registers 2

    .line 237
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_6:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClassLiterals()Z
    .registers 2

    .line 299
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnclosingMethodAttribute()Z
    .registers 2

    .line 369
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JSR14:Lcom/sun/tools/javac/jvm/Target;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitCause()Z
    .registers 2

    .line 332
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInvokedynamic()Z
    .registers 2

    .line 306
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_7:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIterable()Z
    .registers 2

    .line 348
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMethodHandles()Z
    .registers 2

    .line 315
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Target;->hasInvokedynamic()Z

    move-result v0

    return v0
.end method

.method public initializeFieldsBeforeSuper()Z
    .registers 2

    .line 157
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interfaceFieldsBinaryCompatibility()Z
    .registers 2

    .line 190
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_2:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interfaceObjectOverridesBinaryCompatibility()Z
    .registers 2

    .line 201
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageInfoSynthetic()Z
    .registers 2

    .line 244
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_6:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obeyBinaryCompatibility()Z
    .registers 2

    .line 170
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_2:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresIproxy()Z
    .registers 2

    .line 146
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_1:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syntheticNameChar()C
    .registers 2

    .line 292
    const/16 v0, 0x24

    return v0
.end method

.method public useAnnotationFlag()Z
    .registers 2

    .line 276
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useBridgeFlag()Z
    .registers 2

    .line 284
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useEnumFlag()Z
    .registers 2

    .line 272
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useInnerCacheClass()Z
    .registers 2

    .line 222
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4_2:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usePrivateSyntheticFields()Z
    .registers 2

    .line 212
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4_2:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useStringBuilder()Z
    .registers 2

    .line 260
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useSyntheticFlag()Z
    .registers 2

    .line 268
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useVarargsFlag()Z
    .registers 2

    .line 280
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
