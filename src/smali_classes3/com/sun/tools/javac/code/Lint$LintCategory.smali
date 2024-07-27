.class public final enum Lcom/sun/tools/javac/code/Lint$LintCategory;
.super Ljava/lang/Enum;
.source "Lint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Lint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LintCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/Lint$LintCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum CAST:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum CLASSFILE:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum DEPRECATION:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum DEP_ANN:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum DIVZERO:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum EMPTY:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum FALLTHROUGH:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum FINALLY:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum OPTIONS:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum OVERRIDES:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum PATH:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum PROCESSING:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum RAW:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum SERIAL:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum STATIC:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum SUNAPI:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field public static final enum VARARGS:Lcom/sun/tools/javac/code/Lint$LintCategory;


# instance fields
.field public final hidden:Z

.field public final option:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "CAST"

    const-string v2, "cast"

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->CAST:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 141
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "CLASSFILE"

    const-string v2, "classfile"

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->CLASSFILE:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 146
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "DEPRECATION"

    const-string v2, "deprecation"

    invoke-direct {v0, v1, v6, v2}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 152
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "DEP_ANN"

    const-string v2, "dep-ann"

    invoke-direct {v0, v1, v7, v2}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEP_ANN:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 157
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "DIVZERO"

    const-string v2, "divzero"

    invoke-direct {v0, v1, v8, v2}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->DIVZERO:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 162
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "EMPTY"

    const/4 v2, 0x5

    const-string v3, "empty"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->EMPTY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 167
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "FALLTHROUGH"

    const/4 v2, 0x6

    const-string v3, "fallthrough"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->FALLTHROUGH:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 172
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "FINALLY"

    const/4 v2, 0x7

    const-string v3, "finally"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->FINALLY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 177
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "OPTIONS"

    const/16 v2, 0x8

    const-string v3, "options"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->OPTIONS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 182
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "OVERRIDES"

    const/16 v2, 0x9

    const-string v3, "overrides"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->OVERRIDES:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 189
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "PATH"

    const/16 v2, 0xa

    const-string v3, "path"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->PATH:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 194
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "PROCESSING"

    const/16 v2, 0xb

    const-string v3, "processing"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->PROCESSING:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 199
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "RAW"

    const/16 v2, 0xc

    const-string v3, "rawtypes"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->RAW:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 204
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "SERIAL"

    const/16 v2, 0xd

    const-string v3, "serial"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->SERIAL:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 209
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "STATIC"

    const/16 v2, 0xe

    const-string v3, "static"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->STATIC:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 214
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "SUNAPI"

    const/16 v2, 0xf

    const-string v3, "sunapi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->SUNAPI:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 219
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "TRY"

    const/16 v2, 0x10

    const-string v3, "try"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 224
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "UNCHECKED"

    const/16 v2, 0x11

    const-string v3, "unchecked"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 229
    new-instance v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v1, "VARARGS"

    const/16 v2, 0x12

    const-string v3, "varargs"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->VARARGS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 132
    const/16 v1, 0x13

    new-array v1, v1, [Lcom/sun/tools/javac/code/Lint$LintCategory;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->CAST:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->CLASSFILE:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEP_ANN:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->DIVZERO:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->EMPTY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->FALLTHROUGH:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->FINALLY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->OPTIONS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->OVERRIDES:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->PATH:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->PROCESSING:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->RAW:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->SERIAL:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->STATIC:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->SUNAPI:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sput-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->$VALUES:[Lcom/sun/tools/javac/code/Lint$LintCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 233
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput-object p3, p0, Lcom/sun/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    .line 237
    iput-boolean p4, p0, Lcom/sun/tools/javac/code/Lint$LintCategory;->hidden:Z

    .line 238
    invoke-static {}, Lcom/sun/tools/javac/code/Lint;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method static get(Ljava/lang/String;)Lcom/sun/tools/javac/code/Lint$LintCategory;
    .registers 2

    .line 242
    invoke-static {}, Lcom/sun/tools/javac/code/Lint;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/Lint$LintCategory;
    .registers 2

    .line 132
    const-class v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/Lint$LintCategory;
    .registers 1

    .line 132
    sget-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->$VALUES:[Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/Lint$LintCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Lint$LintCategory;

    return-object v0
.end method
