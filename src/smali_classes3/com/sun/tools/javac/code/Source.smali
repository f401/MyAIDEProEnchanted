.class public final enum Lcom/sun/tools/javac/code/Source;
.super Ljava/lang/Enum;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/Source;

.field public static final DEFAULT:Lcom/sun/tools/javac/code/Source;

.field public static final enum JDK1_2:Lcom/sun/tools/javac/code/Source;

.field public static final enum JDK1_3:Lcom/sun/tools/javac/code/Source;

.field public static final enum JDK1_4:Lcom/sun/tools/javac/code/Source;

.field public static final enum JDK1_5:Lcom/sun/tools/javac/code/Source;

.field public static final enum JDK1_6:Lcom/sun/tools/javac/code/Source;

.field public static final enum JDK1_7:Lcom/sun/tools/javac/code/Source;

.field private static final sourceKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/code/Source;",
            ">;"
        }
    .end annotation
.end field

.field private static tab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/code/Source;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 60
    new-instance v1, Lcom/sun/tools/javac/code/Source;

    const-string v2, "JDK1_2"

    const-string v3, "1.2"

    invoke-direct {v1, v2, v0, v3}, Lcom/sun/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/tools/javac/code/Source;->JDK1_2:Lcom/sun/tools/javac/code/Source;

    .line 63
    new-instance v1, Lcom/sun/tools/javac/code/Source;

    const-string v2, "JDK1_3"

    const-string v3, "1.3"

    invoke-direct {v1, v2, v5, v3}, Lcom/sun/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/tools/javac/code/Source;->JDK1_3:Lcom/sun/tools/javac/code/Source;

    .line 66
    new-instance v1, Lcom/sun/tools/javac/code/Source;

    const-string v2, "JDK1_4"

    const-string v3, "1.4"

    invoke-direct {v1, v2, v6, v3}, Lcom/sun/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/tools/javac/code/Source;->JDK1_4:Lcom/sun/tools/javac/code/Source;

    .line 70
    new-instance v1, Lcom/sun/tools/javac/code/Source;

    const-string v2, "JDK1_5"

    const-string v3, "1.5"

    invoke-direct {v1, v2, v7, v3}, Lcom/sun/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    .line 73
    new-instance v1, Lcom/sun/tools/javac/code/Source;

    const-string v2, "JDK1_6"

    const-string v3, "1.6"

    invoke-direct {v1, v2, v8, v3}, Lcom/sun/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/tools/javac/code/Source;->JDK1_6:Lcom/sun/tools/javac/code/Source;

    .line 76
    new-instance v1, Lcom/sun/tools/javac/code/Source;

    const-string v2, "JDK1_7"

    const/4 v3, 0x5

    const-string v4, "1.7"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    .line 52
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/sun/tools/javac/code/Source;

    sget-object v3, Lcom/sun/tools/javac/code/Source;->JDK1_2:Lcom/sun/tools/javac/code/Source;

    aput-object v3, v2, v0

    sget-object v3, Lcom/sun/tools/javac/code/Source;->JDK1_3:Lcom/sun/tools/javac/code/Source;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sun/tools/javac/code/Source;->JDK1_4:Lcom/sun/tools/javac/code/Source;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sun/tools/javac/code/Source;->JDK1_6:Lcom/sun/tools/javac/code/Source;

    aput-object v3, v2, v8

    const/4 v3, 0x5

    aput-object v1, v2, v3

    sput-object v2, Lcom/sun/tools/javac/code/Source;->$VALUES:[Lcom/sun/tools/javac/code/Source;

    .line 78
    new-instance v1, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v1, Lcom/sun/tools/javac/code/Source;->sourceKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sun/tools/javac/code/Source;->tab:Ljava/util/Map;

    .line 97
    invoke-static {}, Lcom/sun/tools/javac/code/Source;->values()[Lcom/sun/tools/javac/code/Source;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 98
    sget-object v4, Lcom/sun/tools/javac/code/Source;->tab:Ljava/util/Map;

    iget-object v5, v3, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcom/sun/tools/javac/code/Source;->tab:Ljava/util/Map;

    const-string v1, "5"

    sget-object v2, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/sun/tools/javac/code/Source;->tab:Ljava/util/Map;

    const-string v1, "6"

    sget-object v2, Lcom/sun/tools/javac/code/Source;->JDK1_6:Lcom/sun/tools/javac/code/Source;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/sun/tools/javac/code/Source;->tab:Ljava/util/Map;

    const-string v1, "7"

    sget-object v2, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    sput-object v0, Lcom/sun/tools/javac/code/Source;->DEFAULT:Lcom/sun/tools/javac/code/Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-object p3, p0, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;
    .registers 4

    .line 82
    sget-object v0, Lcom/sun/tools/javac/code/Source;->sourceKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Source;

    .line 83
    if-nez v0, :cond_2

    .line 84
    invoke-static {p0}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v1

    .line 85
    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sun/tools/javac/code/Source;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    .line 87
    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/tools/javac/code/Source;->DEFAULT:Lcom/sun/tools/javac/code/Source;

    .line 88
    :cond_1
    sget-object v1, Lcom/sun/tools/javac/code/Source;->sourceKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 90
    :cond_2
    return-object v0
.end method

.method public static lookup(Ljava/lang/String;)Lcom/sun/tools/javac/code/Source;
    .registers 2

    .line 112
    sget-object v0, Lcom/sun/tools/javac/code/Source;->tab:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Source;

    return-object v0
.end method

.method public static toSourceVersion(Lcom/sun/tools/javac/code/Source;)Ljavax/lang/model/SourceVersion;
    .registers 3

    .line 201
    sget-object v0, Lcom/sun/tools/javac/code/Source$1;->$SwitchMap$com$sun$tools$javac$code$Source:[I

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Source;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;

    goto :goto_0

    .line 211
    :pswitch_1
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;

    goto :goto_0

    .line 209
    :pswitch_2
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_5:Ljavax/lang/model/SourceVersion;

    goto :goto_0

    .line 207
    :pswitch_3
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_4:Ljavax/lang/model/SourceVersion;

    goto :goto_0

    .line 205
    :pswitch_4
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_3:Ljavax/lang/model/SourceVersion;

    goto :goto_0

    .line 203
    :pswitch_5
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_2:Ljavax/lang/model/SourceVersion;

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/Source;
    .registers 2

    .line 52
    const-class v0, Lcom/sun/tools/javac/code/Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Source;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/Source;
    .registers 1

    .line 52
    sget-object v0, Lcom/sun/tools/javac/code/Source;->$VALUES:[Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Source;

    return-object v0
.end method


# virtual methods
.method public addBridges()Z
    .registers 2

    .line 174
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowAnnotations()Z
    .registers 2

    .line 164
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowAnonOuterThis()Z
    .registers 2

    .line 171
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowAsserts()Z
    .registers 2

    .line 128
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_4:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowBinaryLiterals()Z
    .registers 2

    .line 186
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowBoxing()Z
    .registers 2

    .line 158
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowCovariantReturns()Z
    .registers 2

    .line 131
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowDiamond()Z
    .registers 2

    .line 137
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowEncodingErrors()Z
    .registers 2

    .line 125
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_6:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowEnums()Z
    .registers 2

    .line 149
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowForeach()Z
    .registers 2

    .line 152
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowGenerics()Z
    .registers 2

    .line 134
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowHexFloats()Z
    .registers 2

    .line 168
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowImprovedCatchAnalysis()Z
    .registers 2

    .line 146
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowImprovedRethrowAnalysis()Z
    .registers 2

    .line 143
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowMulticatch()Z
    .registers 2

    .line 140
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowObjectToPrimitiveCast()Z
    .registers 2

    .line 198
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowSimplifiedVarargs()Z
    .registers 2

    .line 195
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowStaticImport()Z
    .registers 2

    .line 155
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowStringsInSwitch()Z
    .registers 2

    .line 192
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowTryWithResources()Z
    .registers 2

    .line 180
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowTypeAnnotations()Z
    .registers 2

    .line 183
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowUnderscoresInLiterals()Z
    .registers 2

    .line 189
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowVarargs()Z
    .registers 2

    .line 161
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enforceMandatoryWarnings()Z
    .registers 2

    .line 177
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiredTarget()Lcom/sun/tools/javac/jvm/Target;
    .registers 2

    .line 116
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_7:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_7:Lcom/sun/tools/javac/jvm/Target;

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_6:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_6:Lcom/sun/tools/javac/jvm/Target;

    goto :goto_0

    .line 118
    :cond_1
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_5:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_5:Lcom/sun/tools/javac/jvm/Target;

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lcom/sun/tools/javac/code/Source;->JDK1_4:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4:Lcom/sun/tools/javac/jvm/Target;

    goto :goto_0

    .line 120
    :cond_3
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_1:Lcom/sun/tools/javac/jvm/Target;

    goto :goto_0
.end method
