.class public final enum Lcom/sun/tools/javac/code/Kinds$KindName;
.super Ljava/lang/Enum;
.source "Kinds.java"

# interfaces
.implements Lcom/sun/tools/javac/api/Formattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Kinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KindName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/Kinds$KindName;",
        ">;",
        "Lcom/sun/tools/javac/api/Formattable;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum ANNOTATION:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum BOUND:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum ENUM:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum INSTANCE_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum INTERFACE:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum STATIC:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum STATIC_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum TYPEVAR:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

.field public static final enum VAR:Lcom/sun/tools/javac/code/Kinds$KindName;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "ANNOTATION"

    const-string v2, "kindname.annotation"

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->ANNOTATION:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 100
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "CONSTRUCTOR"

    const-string v2, "kindname.constructor"

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 101
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "INTERFACE"

    const-string v2, "kindname.interface"

    invoke-direct {v0, v1, v6, v2}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->INTERFACE:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 102
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "ENUM"

    const-string v2, "kindname.enum"

    invoke-direct {v0, v1, v7, v2}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->ENUM:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 103
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "STATIC"

    const-string v2, "kindname.static"

    invoke-direct {v0, v1, v8, v2}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->STATIC:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 104
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "TYPEVAR"

    const/4 v2, 0x5

    const-string v3, "kindname.type.variable"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->TYPEVAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 105
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "BOUND"

    const/4 v2, 0x6

    const-string v3, "kindname.type.variable.bound"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->BOUND:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 106
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "VAR"

    const/4 v2, 0x7

    const-string v3, "kindname.variable"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 107
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "VAL"

    const/16 v2, 0x8

    const-string v3, "kindname.value"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 108
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "METHOD"

    const/16 v2, 0x9

    const-string v3, "kindname.method"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 109
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "CLASS"

    const/16 v2, 0xa

    const-string v3, "kindname.class"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 110
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "STATIC_INIT"

    const/16 v2, 0xb

    const-string v3, "kindname.static.init"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->STATIC_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 111
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "INSTANCE_INIT"

    const/16 v2, 0xc

    const-string v3, "kindname.instance.init"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->INSTANCE_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 112
    new-instance v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    const-string v1, "PACKAGE"

    const/16 v2, 0xd

    const-string v3, "kindname.package"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 98
    const/16 v1, 0xe

    new-array v1, v1, [Lcom/sun/tools/javac/code/Kinds$KindName;

    sget-object v2, Lcom/sun/tools/javac/code/Kinds$KindName;->ANNOTATION:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/code/Kinds$KindName;->INTERFACE:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/code/Kinds$KindName;->ENUM:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/code/Kinds$KindName;->STATIC:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->TYPEVAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->BOUND:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->STATIC_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->INSTANCE_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sput-object v1, Lcom/sun/tools/javac/code/Kinds$KindName;->$VALUES:[Lcom/sun/tools/javac/code/Kinds$KindName;

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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p3, p0, Lcom/sun/tools/javac/code/Kinds$KindName;->name:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/Kinds$KindName;
    .registers 2

    .line 98
    const-class v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/Kinds$KindName;
    .registers 1

    .line 98
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->$VALUES:[Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/Kinds$KindName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Kinds$KindName;

    return-object v0
.end method


# virtual methods
.method public getKind()Ljava/lang/String;
    .registers 2

    .line 125
    const-string v0, "Kindname"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/sun/tools/javac/code/Kinds$KindName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString(Ljava/util/Locale;Lcom/sun/tools/javac/api/Messages;)Ljava/lang/String;
    .registers 6

    .line 129
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Kinds$KindName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compiler.misc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0, v1}, Lcom/sun/tools/javac/api/Messages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
