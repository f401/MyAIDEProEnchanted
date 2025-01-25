.class public final enum Ljavax/lang/model/element/ElementKind;
.super Ljava/lang/Enum;
.source "ElementKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/lang/model/element/ElementKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Ljavax/lang/model/element/ElementKind;

.field public static final enum ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

.field public static final enum CLASS:Ljavax/lang/model/element/ElementKind;

.field public static final enum CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

.field public static final enum ENUM:Ljavax/lang/model/element/ElementKind;

.field public static final enum ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

.field public static final enum EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

.field public static final enum FIELD:Ljavax/lang/model/element/ElementKind;

.field public static final enum INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

.field public static final enum INTERFACE:Ljavax/lang/model/element/ElementKind;

.field public static final enum LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

.field public static final enum METHOD:Ljavax/lang/model/element/ElementKind;

.field public static final enum OTHER:Ljavax/lang/model/element/ElementKind;

.field public static final enum PACKAGE:Ljavax/lang/model/element/ElementKind;

.field public static final enum PARAMETER:Ljavax/lang/model/element/ElementKind;

.field public static final enum RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

.field public static final enum STATIC_INIT:Ljavax/lang/model/element/ElementKind;

.field public static final enum TYPE_PARAMETER:Ljavax/lang/model/element/ElementKind;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "PACKAGE"

    invoke-direct {v0, v1, v3}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    .line 48
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "ENUM"

    invoke-direct {v0, v1, v4}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    .line 50
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "CLASS"

    invoke-direct {v0, v1, v5}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    .line 52
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "ANNOTATION_TYPE"

    invoke-direct {v0, v1, v6}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    .line 57
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "INTERFACE"

    invoke-direct {v0, v1, v7}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    .line 61
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "ENUM_CONSTANT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    .line 66
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "FIELD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    .line 68
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "PARAMETER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    .line 70
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "LOCAL_VARIABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    .line 72
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "EXCEPTION_PARAMETER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    .line 76
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "METHOD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    .line 78
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "CONSTRUCTOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    .line 80
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "STATIC_INIT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    .line 82
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "INSTANCE_INIT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    .line 85
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "TYPE_PARAMETER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->TYPE_PARAMETER:Ljavax/lang/model/element/ElementKind;

    .line 91
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "OTHER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->OTHER:Ljavax/lang/model/element/ElementKind;

    .line 97
    new-instance v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "RESOURCE_VARIABLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    .line 41
    const/16 v1, 0x11

    new-array v1, v1, [Ljavax/lang/model/element/ElementKind;

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v1, v4

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v1, v5

    sget-object v2, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v1, v6

    sget-object v2, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Ljavax/lang/model/element/ElementKind;->TYPE_PARAMETER:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Ljavax/lang/model/element/ElementKind;->OTHER:Ljavax/lang/model/element/ElementKind;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sput-object v1, Ljavax/lang/model/element/ElementKind;->$VALUES:[Ljavax/lang/model/element/ElementKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/lang/model/element/ElementKind;
    .registers 2

    .line 41
    const-class v0, Ljavax/lang/model/element/ElementKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ElementKind;

    return-object v0
.end method

.method public static values()[Ljavax/lang/model/element/ElementKind;
    .registers 1

    .line 41
    sget-object v0, Ljavax/lang/model/element/ElementKind;->$VALUES:[Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v0}, [Ljavax/lang/model/element/ElementKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/lang/model/element/ElementKind;

    return-object v0
.end method


# virtual methods
.method public isClass()Z
    .registers 2

    .line 107
    sget-object v0, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-eq p0, v0, :cond_8

    sget-object v0, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isField()Z
    .registers 2

    .line 127
    sget-object v0, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-eq p0, v0, :cond_8

    sget-object v0, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isInterface()Z
    .registers 2

    .line 117
    sget-object v0, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-eq p0, v0, :cond_8

    sget-object v0, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
