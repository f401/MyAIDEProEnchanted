.class public final enum Lcom/sun/tools/javac/code/TargetType;
.super Ljava/lang/Enum;
.source "TargetType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/TargetType$TargetAttribute;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/TargetType;

.field public static final enum CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum CLASS_EXTENDS_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum CLASS_LITERAL:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum CLASS_LITERAL_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum CLASS_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum CLASS_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum FIELD_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum INSTANCEOF_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum LOCAL_VARIABLE_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field static final MAXIMUM_TARGET_TYPE_VALUE:I = 0x22

.field public static final enum METHOD_PARAMETER_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum METHOD_RETURN_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum METHOD_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum METHOD_TYPE_ARGUMENT_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum METHOD_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum NEW:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum NEW_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum NEW_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum NEW_TYPE_ARGUMENT_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum THROWS:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum TYPECAST:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum TYPECAST_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum UNKNOWN:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum WILDCARD_BOUND:Lcom/sun/tools/javac/code/TargetType;

.field public static final enum WILDCARD_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

.field private static targets:[Lcom/sun/tools/javac/code/TargetType;


# instance fields
.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/TargetType$TargetAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final targetTypeValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "TYPECAST"

    new-array v2, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v3, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->TYPECAST:Lcom/sun/tools/javac/code/TargetType;

    .line 59
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "TYPECAST_GENERIC_OR_ARRAY"

    new-array v2, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v3, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->TYPECAST_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 62
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "INSTANCEOF"

    new-array v2, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v3, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    .line 65
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "INSTANCEOF_GENERIC_OR_ARRAY"

    new-array v2, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v3, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 68
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "NEW"

    new-array v2, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v3, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v10, v10, v2}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    .line 74
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "NEW_GENERIC_OR_ARRAY"

    const/4 v2, 0x5

    const/4 v3, 0x5

    new-array v4, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->NEW_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 78
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "METHOD_RECEIVER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    new-array v4, v6, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    .line 84
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "LOCAL_VARIABLE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    .line 87
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "LOCAL_VARIABLE_GENERIC_OR_ARRAY"

    const/16 v2, 0x8

    const/16 v3, 0x9

    new-array v4, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 96
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "METHOD_RETURN_GENERIC_OR_ARRAY"

    const/16 v2, 0x9

    const/16 v3, 0xb

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 102
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "METHOD_PARAMETER_GENERIC_OR_ARRAY"

    const/16 v2, 0xa

    const/16 v3, 0xd

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_PARAMETER_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 108
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "FIELD_GENERIC_OR_ARRAY"

    const/16 v2, 0xb

    const/16 v3, 0xf

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->FIELD_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 111
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "CLASS_TYPE_PARAMETER_BOUND"

    const/16 v2, 0xc

    const/16 v3, 0x10

    new-array v4, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    .line 117
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "CLASS_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY"

    const/16 v2, 0xd

    const/16 v3, 0x11

    new-array v4, v9, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 120
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "METHOD_TYPE_PARAMETER_BOUND"

    const/16 v2, 0xe

    const/16 v3, 0x12

    new-array v4, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    .line 126
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "METHOD_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY"

    const/16 v2, 0xf

    const/16 v3, 0x13

    new-array v4, v9, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 129
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "CLASS_EXTENDS"

    const/16 v2, 0x10

    const/16 v3, 0x14

    new-array v4, v6, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    .line 132
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "CLASS_EXTENDS_GENERIC_OR_ARRAY"

    const/16 v2, 0x11

    const/16 v3, 0x15

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 135
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "THROWS"

    const/16 v2, 0x12

    const/16 v3, 0x16

    new-array v4, v6, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    .line 141
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "NEW_TYPE_ARGUMENT"

    const/16 v2, 0x13

    const/16 v3, 0x18

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->NEW_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    .line 142
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "NEW_TYPE_ARGUMENT_GENERIC_OR_ARRAY"

    const/16 v2, 0x14

    const/16 v3, 0x19

    new-array v4, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->NEW_TYPE_ARGUMENT_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 144
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "METHOD_TYPE_ARGUMENT"

    const/16 v2, 0x15

    const/16 v3, 0x1a

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    .line 145
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "METHOD_TYPE_ARGUMENT_GENERIC_OR_ARRAY"

    const/16 v2, 0x16

    const/16 v3, 0x1b

    new-array v4, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_ARGUMENT_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 147
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "WILDCARD_BOUND"

    const/16 v2, 0x17

    const/16 v3, 0x1c

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->WILDCARD_BOUND:Lcom/sun/tools/javac/code/TargetType;

    .line 148
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "WILDCARD_BOUND_GENERIC_OR_ARRAY"

    const/16 v2, 0x18

    const/16 v3, 0x1d

    new-array v4, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->WILDCARD_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 150
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "CLASS_LITERAL"

    const/16 v2, 0x19

    const/16 v3, 0x1e

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->CLASS_LITERAL:Lcom/sun/tools/javac/code/TargetType;

    .line 151
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "CLASS_LITERAL_GENERIC_OR_ARRAY"

    const/16 v2, 0x1a

    const/16 v3, 0x1f

    new-array v4, v8, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->CLASS_LITERAL_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    .line 153
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "METHOD_TYPE_PARAMETER"

    const/16 v2, 0x1b

    const/16 v3, 0x20

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    .line 158
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "CLASS_TYPE_PARAMETER"

    const/16 v2, 0x1c

    const/16 v3, 0x22

    new-array v4, v7, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    .line 164
    new-instance v0, Lcom/sun/tools/javac/code/TargetType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x1d

    const/4 v3, -0x1

    new-array v4, v6, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->UNKNOWN:Lcom/sun/tools/javac/code/TargetType;

    .line 47
    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/sun/tools/javac/code/TargetType;

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->TYPECAST:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->TYPECAST_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v1, v10

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->NEW_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_PARAMETER_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->FIELD_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->NEW_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->NEW_TYPE_ARGUMENT_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_ARGUMENT_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->WILDCARD_BOUND:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->WILDCARD_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->CLASS_LITERAL:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->CLASS_LITERAL_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sput-object v1, Lcom/sun/tools/javac/code/TargetType;->$VALUES:[Lcom/sun/tools/javac/code/TargetType;

    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->targets:[Lcom/sun/tools/javac/code/TargetType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/sun/tools/javac/code/TargetType$TargetAttribute;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    const/16 v0, -0x80

    if-lt p3, v0, :cond_24

    const/16 v0, 0x7f

    if-gt p3, v0, :cond_24

    .line 175
    int-to-byte v0, p3

    iput v0, p0, Lcom/sun/tools/javac/code/TargetType;->targetTypeValue:I

    .line 176
    const-class v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/TargetType;->flags:Ljava/util/Set;

    .line 177
    array-length v1, p4

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v1, :cond_3b

    aget-object v2, p4, v0

    .line 178
    iget-object v3, p0, Lcom/sun/tools/javac/code/TargetType;->flags:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 174
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attribute type value needs to be a byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 179
    :cond_3b
    return-void
.end method

.method private static buildTargets()[Lcom/sun/tools/javac/code/TargetType;
    .registers 7

    const/4 v0, 0x0

    .line 239
    const/16 v1, 0x23

    new-array v2, v1, [Lcom/sun/tools/javac/code/TargetType;

    .line 240
    invoke-static {}, Lcom/sun/tools/javac/code/TargetType;->values()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v3

    .line 241
    array-length v4, v3

    move v1, v0

    :goto_b
    if-ge v1, v4, :cond_18

    aget-object v5, v3, v1

    .line 242
    iget v6, v5, Lcom/sun/tools/javac/code/TargetType;->targetTypeValue:I

    if-ltz v6, :cond_15

    .line 243
    aput-object v5, v2, v6

    .line 241
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 245
    :cond_18
    :goto_18
    const/16 v1, 0x22

    if-gt v0, v1, :cond_27

    .line 246
    aget-object v1, v2, v0

    if-nez v1, :cond_24

    .line 247
    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->UNKNOWN:Lcom/sun/tools/javac/code/TargetType;

    aput-object v1, v2, v0

    .line 245
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 249
    :cond_27
    return-object v2
.end method

.method public static fromTargetTypeValue(I)Lcom/sun/tools/javac/code/TargetType;
    .registers 4

    .line 263
    sget-object v0, Lcom/sun/tools/javac/code/TargetType;->targets:[Lcom/sun/tools/javac/code/TargetType;

    if-nez v0, :cond_a

    .line 264
    invoke-static {}, Lcom/sun/tools/javac/code/TargetType;->buildTargets()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/code/TargetType;->targets:[Lcom/sun/tools/javac/code/TargetType;

    .line 266
    :cond_a
    int-to-byte v1, p0

    sget-object v0, Lcom/sun/tools/javac/code/TargetType;->UNKNOWN:Lcom/sun/tools/javac/code/TargetType;

    iget v2, v0, Lcom/sun/tools/javac/code/TargetType;->targetTypeValue:I

    int-to-byte v2, v2

    if-ne v1, v2, :cond_13

    .line 271
    :goto_12
    return-object v0

    .line 269
    :cond_13
    if-ltz p0, :cond_1d

    sget-object v0, Lcom/sun/tools/javac/code/TargetType;->targets:[Lcom/sun/tools/javac/code/TargetType;

    array-length v1, v0

    if-ge p0, v1, :cond_1d

    .line 271
    aget-object v0, v0, p0

    goto :goto_12

    .line 270
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown TargetType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isValidTargetTypeValue(I)Z
    .registers 4

    const/4 v0, 0x1

    .line 253
    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->targets:[Lcom/sun/tools/javac/code/TargetType;

    if-nez v1, :cond_b

    .line 254
    invoke-static {}, Lcom/sun/tools/javac/code/TargetType;->buildTargets()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v1

    sput-object v1, Lcom/sun/tools/javac/code/TargetType;->targets:[Lcom/sun/tools/javac/code/TargetType;

    .line 256
    :cond_b
    int-to-byte v1, p0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->UNKNOWN:Lcom/sun/tools/javac/code/TargetType;

    iget v2, v2, Lcom/sun/tools/javac/code/TargetType;->targetTypeValue:I

    int-to-byte v2, v2

    if-ne v1, v2, :cond_14

    .line 259
    :cond_13
    :goto_13
    return v0

    :cond_14
    if-ltz p0, :cond_1b

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->targets:[Lcom/sun/tools/javac/code/TargetType;

    array-length v1, v1

    if-lt p0, v1, :cond_13

    :cond_1b
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/TargetType;
    .registers 2

    .line 47
    const-class v0, Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/TargetType;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/TargetType;
    .registers 1

    .line 47
    sget-object v0, Lcom/sun/tools/javac/code/TargetType;->$VALUES:[Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/TargetType;

    return-object v0
.end method


# virtual methods
.method public getGenericComplement()Lcom/sun/tools/javac/code/TargetType;
    .registers 2

    .line 193
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/TargetType;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/TargetType;->targetTypeValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sun/tools/javac/code/TargetType;->fromTargetTypeValue(I)Lcom/sun/tools/javac/code/TargetType;

    move-result-object p0

    goto :goto_6
.end method

.method public hasBound()Z
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/sun/tools/javac/code/TargetType;->flags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLocation()Z
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/sun/tools/javac/code/TargetType;->flags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasParameter()Z
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/sun/tools/javac/code/TargetType;->flags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/sun/tools/javac/code/TargetType;->flags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public targetTypeValue()I
    .registers 2

    .line 233
    iget v0, p0, Lcom/sun/tools/javac/code/TargetType;->targetTypeValue:I

    return v0
.end method
