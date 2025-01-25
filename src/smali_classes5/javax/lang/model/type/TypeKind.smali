.class public final enum Ljavax/lang/model/type/TypeKind;
.super Ljava/lang/Enum;
.source "TypeKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/lang/model/type/TypeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Ljavax/lang/model/type/TypeKind;

.field public static final enum ARRAY:Ljavax/lang/model/type/TypeKind;

.field public static final enum BOOLEAN:Ljavax/lang/model/type/TypeKind;

.field public static final enum BYTE:Ljavax/lang/model/type/TypeKind;

.field public static final enum CHAR:Ljavax/lang/model/type/TypeKind;

.field public static final enum DECLARED:Ljavax/lang/model/type/TypeKind;

.field public static final enum DOUBLE:Ljavax/lang/model/type/TypeKind;

.field public static final enum ERROR:Ljavax/lang/model/type/TypeKind;

.field public static final enum EXECUTABLE:Ljavax/lang/model/type/TypeKind;

.field public static final enum FLOAT:Ljavax/lang/model/type/TypeKind;

.field public static final enum INT:Ljavax/lang/model/type/TypeKind;

.field public static final enum LONG:Ljavax/lang/model/type/TypeKind;

.field public static final enum NONE:Ljavax/lang/model/type/TypeKind;

.field public static final enum NULL:Ljavax/lang/model/type/TypeKind;

.field public static final enum OTHER:Ljavax/lang/model/type/TypeKind;

.field public static final enum PACKAGE:Ljavax/lang/model/type/TypeKind;

.field public static final enum SHORT:Ljavax/lang/model/type/TypeKind;

.field public static final enum TYPEVAR:Ljavax/lang/model/type/TypeKind;

.field public static final enum UNION:Ljavax/lang/model/type/TypeKind;

.field public static final enum VOID:Ljavax/lang/model/type/TypeKind;

.field public static final enum WILDCARD:Ljavax/lang/model/type/TypeKind;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v3}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    .line 51
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v4}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    .line 56
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v5}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    .line 61
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "INT"

    invoke-direct {v0, v1, v6}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    .line 66
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v7}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    .line 71
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "CHAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    .line 76
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "FLOAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    .line 81
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "DOUBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    .line 87
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "VOID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    .line 93
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "NONE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    .line 98
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "NULL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    .line 103
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "ARRAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    .line 108
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "DECLARED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    .line 113
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    .line 118
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "TYPEVAR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    .line 123
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "WILDCARD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    .line 129
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "PACKAGE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    .line 134
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "EXECUTABLE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    .line 140
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "OTHER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->OTHER:Ljavax/lang/model/type/TypeKind;

    .line 147
    new-instance v0, Ljavax/lang/model/type/TypeKind;

    const-string v1, "UNION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    .line 42
    const/16 v1, 0x14

    new-array v1, v1, [Ljavax/lang/model/type/TypeKind;

    sget-object v2, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    aput-object v2, v1, v4

    sget-object v2, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    aput-object v2, v1, v5

    sget-object v2, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    aput-object v2, v1, v6

    sget-object v2, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Ljavax/lang/model/type/TypeKind;->OTHER:Ljavax/lang/model/type/TypeKind;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sput-object v1, Ljavax/lang/model/type/TypeKind;->$VALUES:[Ljavax/lang/model/type/TypeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/lang/model/type/TypeKind;
    .registers 2

    .line 42
    const-class v0, Ljavax/lang/model/type/TypeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public static values()[Ljavax/lang/model/type/TypeKind;
    .registers 1

    .line 42
    sget-object v0, Ljavax/lang/model/type/TypeKind;->$VALUES:[Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0}, [Ljavax/lang/model/type/TypeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method


# virtual methods
.method public isPrimitive()Z
    .registers 3

    .line 155
    sget-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p0}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 167
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 164
    :pswitch_d  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    const/4 v0, 0x1

    goto :goto_c

    .line 155
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_d  #00000002
        :pswitch_d  #00000003
        :pswitch_d  #00000004
        :pswitch_d  #00000005
        :pswitch_d  #00000006
        :pswitch_d  #00000007
        :pswitch_d  #00000008
    .end packed-switch
.end method
