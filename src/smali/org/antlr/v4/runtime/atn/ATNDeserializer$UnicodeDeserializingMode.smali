.class final enum Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;
.super Ljava/lang/Enum;
.source "ATNDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/ATNDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnicodeDeserializingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

.field public static final enum UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

.field public static final enum UNICODE_SMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    const-string v1, "UNICODE_BMP"

    invoke-direct {v0, v1, v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    .line 92
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    const-string v2, "UNICODE_SMP"

    invoke-direct {v1, v2, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_SMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    .line 90
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    sput-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->$VALUES:[Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;
    .locals 1

    .line 90
    const-class v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    return-object v0
.end method

.method public static values()[Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;
    .locals 1

    .line 90
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->$VALUES:[Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    return-object v0
.end method
