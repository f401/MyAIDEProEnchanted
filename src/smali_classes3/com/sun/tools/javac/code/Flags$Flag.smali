.class public final enum Lcom/sun/tools/javac/code/Flags$Flag;
.super Ljava/lang/Enum;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/Flags$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum ABSTRACT:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum ACYCLIC:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum ANONCONSTR:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum BRIDGE:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum CLASS_SEEN:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum COMPOUND:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum DEPRECATED:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum ENUM:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum EXISTS:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum FINAL:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum HASINIT:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum INTERFACE:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum IPROXY:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum LOCKED:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum NATIVE:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum NOOUTERTHIS:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum PACKAGE:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum PARAMETER:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum PRIVATE:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum PROTECTED:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum PUBLIC:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum SOURCE_SEEN:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum STATIC:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum STRICTFP:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum SYNCHRONIZED:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum SYNTHETIC:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum TRANSIENT:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum UNATTRIBUTED:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum VARARGS:Lcom/sun/tools/javac/code/Flags$Flag;

.field public static final enum VOLATILE:Lcom/sun/tools/javac/code/Flags$Flag;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "PUBLIC"

    const-string v2, "public"

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->PUBLIC:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 318
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "PRIVATE"

    const-string v2, "private"

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->PRIVATE:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 319
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "PROTECTED"

    const-string v2, "protected"

    invoke-direct {v0, v1, v6, v2}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->PROTECTED:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 320
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "STATIC"

    const-string v2, "static"

    invoke-direct {v0, v1, v7, v2}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->STATIC:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 321
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "FINAL"

    const-string v2, "final"

    invoke-direct {v0, v1, v8, v2}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->FINAL:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 322
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x5

    const-string v3, "synchronized"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->SYNCHRONIZED:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 323
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "VOLATILE"

    const/4 v2, 0x6

    const-string v3, "volatile"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->VOLATILE:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 324
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "TRANSIENT"

    const/4 v2, 0x7

    const-string v3, "transient"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->TRANSIENT:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 325
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "NATIVE"

    const/16 v2, 0x8

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->NATIVE:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 326
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "INTERFACE"

    const/16 v2, 0x9

    const-string v3, "interface"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->INTERFACE:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 327
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "ABSTRACT"

    const/16 v2, 0xa

    const-string v3, "abstract"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->ABSTRACT:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 328
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "STRICTFP"

    const/16 v2, 0xb

    const-string v3, "strictfp"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->STRICTFP:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 329
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "BRIDGE"

    const/16 v2, 0xc

    const-string v3, "bridge"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->BRIDGE:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 330
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "SYNTHETIC"

    const/16 v2, 0xd

    const-string v3, "synthetic"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->SYNTHETIC:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 331
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "DEPRECATED"

    const/16 v2, 0xe

    const-string v3, "deprecated"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->DEPRECATED:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 332
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "HASINIT"

    const/16 v2, 0xf

    const-string v3, "hasinit"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->HASINIT:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 333
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "ENUM"

    const/16 v2, 0x10

    const-string v3, "enum"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->ENUM:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 334
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "IPROXY"

    const/16 v2, 0x11

    const-string v3, "iproxy"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->IPROXY:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 335
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "NOOUTERTHIS"

    const/16 v2, 0x12

    const-string v3, "noouterthis"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->NOOUTERTHIS:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 336
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "EXISTS"

    const/16 v2, 0x13

    const-string v3, "exists"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->EXISTS:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 337
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "COMPOUND"

    const/16 v2, 0x14

    const-string v3, "compound"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->COMPOUND:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 338
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "CLASS_SEEN"

    const/16 v2, 0x15

    const-string v3, "class_seen"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->CLASS_SEEN:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 339
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "SOURCE_SEEN"

    const/16 v2, 0x16

    const-string v3, "source_seen"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->SOURCE_SEEN:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 340
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "LOCKED"

    const/16 v2, 0x17

    const-string v3, "locked"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->LOCKED:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 341
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "UNATTRIBUTED"

    const/16 v2, 0x18

    const-string v3, "unattributed"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->UNATTRIBUTED:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 342
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "ANONCONSTR"

    const/16 v2, 0x19

    const-string v3, "anonconstr"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->ANONCONSTR:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 343
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "ACYCLIC"

    const/16 v2, 0x1a

    const-string v3, "acyclic"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->ACYCLIC:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 344
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "PARAMETER"

    const/16 v2, 0x1b

    const-string v3, "parameter"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->PARAMETER:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 345
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "VARARGS"

    const/16 v2, 0x1c

    const-string v3, "varargs"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->VARARGS:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 346
    new-instance v0, Lcom/sun/tools/javac/code/Flags$Flag;

    const-string v1, "PACKAGE"

    const/16 v2, 0x1d

    const-string v3, "package"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->PACKAGE:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 315
    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/sun/tools/javac/code/Flags$Flag;

    sget-object v2, Lcom/sun/tools/javac/code/Flags$Flag;->PUBLIC:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/code/Flags$Flag;->PRIVATE:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/code/Flags$Flag;->PROTECTED:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/code/Flags$Flag;->STATIC:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/code/Flags$Flag;->FINAL:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->SYNCHRONIZED:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->VOLATILE:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->TRANSIENT:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->NATIVE:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->INTERFACE:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->ABSTRACT:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->STRICTFP:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->BRIDGE:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->SYNTHETIC:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->DEPRECATED:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->HASINIT:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->ENUM:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->IPROXY:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->NOOUTERTHIS:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->EXISTS:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->COMPOUND:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->CLASS_SEEN:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->SOURCE_SEEN:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->LOCKED:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->UNATTRIBUTED:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->ANONCONSTR:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->ACYCLIC:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->PARAMETER:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/sun/tools/javac/code/Flags$Flag;->VARARGS:Lcom/sun/tools/javac/code/Flags$Flag;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sput-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->$VALUES:[Lcom/sun/tools/javac/code/Flags$Flag;

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

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 351
    iput-object p3, p0, Lcom/sun/tools/javac/code/Flags$Flag;->name:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/Flags$Flag;
    .registers 2

    .line 315
    const-class v0, Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Flags$Flag;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/Flags$Flag;
    .registers 1

    .line 315
    sget-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->$VALUES:[Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/Flags$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Flags$Flag;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/sun/tools/javac/code/Flags$Flag;->name:Ljava/lang/String;

    return-object v0
.end method
