.class public abstract enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
.super Ljava/lang/Enum;
.source "InstructionCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_00X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_10T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_10X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_11N:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_11X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_12X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_20BC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_20T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_21C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_21H:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_21S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_21T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_22B:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_22C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_22CS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_22S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_22T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_22X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_23X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_30T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_31C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_31I:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_31T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_32X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_35C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_35MI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_35MS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_3RC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_3RMI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_3RMS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_45CC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_4RCC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_51L:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000000;

    const-string v1, "FORMAT_00X"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000000;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_00X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000001;

    const-string v1, "FORMAT_10X"

    invoke-direct {v0, v1, v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000001;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_10X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000002;

    const-string v1, "FORMAT_12X"

    invoke-direct {v0, v1, v5}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000002;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_12X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000003;

    const-string v1, "FORMAT_11N"

    invoke-direct {v0, v1, v6}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000003;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_11N:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000004;

    const-string v1, "FORMAT_11X"

    invoke-direct {v0, v1, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000004;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_11X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000005;

    const-string v1, "FORMAT_10T"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000005;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_10T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000006;

    const-string v1, "FORMAT_20T"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000006;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_20T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000007;

    const-string v1, "FORMAT_20BC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000007;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_20BC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000008;

    const-string v1, "FORMAT_22X"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000008;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000009;

    const-string v1, "FORMAT_21T"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000009;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000010;

    const-string v1, "FORMAT_21S"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000010;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000011;

    const-string v1, "FORMAT_21H"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000011;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21H:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000012;

    const-string v1, "FORMAT_21C"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000012;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000013;

    const-string v1, "FORMAT_23X"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000013;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_23X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000014;

    const-string v1, "FORMAT_22B"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000014;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22B:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000015;

    const-string v1, "FORMAT_22T"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000015;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000016;

    const-string v1, "FORMAT_22S"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000016;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000017;

    const-string v1, "FORMAT_22C"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000017;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000018;

    const-string v1, "FORMAT_22CS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000018;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22CS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000019;

    const-string v1, "FORMAT_30T"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000019;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_30T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000020;

    const-string v1, "FORMAT_32X"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000020;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_32X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000021;

    const-string v1, "FORMAT_31I"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000021;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31I:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000022;

    const-string v1, "FORMAT_31T"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000022;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000023;

    const-string v1, "FORMAT_31C"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000023;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000024;

    const-string v1, "FORMAT_35C"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000024;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000025;

    const-string v1, "FORMAT_35MS"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000025;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35MS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000026;

    const-string v1, "FORMAT_35MI"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000026;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35MI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000027;

    const-string v1, "FORMAT_3RC"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000027;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000028;

    const-string v1, "FORMAT_3RMS"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000028;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000029;

    const-string v1, "FORMAT_3RMI"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000029;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000030;

    const-string v1, "FORMAT_51L"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000030;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_51L:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000031;

    const-string v1, "FORMAT_45CC"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000031;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_45CC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000032;

    const-string v1, "FORMAT_4RCC"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000032;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_4RCC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000033;

    const-string v1, "FORMAT_PACKED_SWITCH_PAYLOAD"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000033;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000034;

    const-string v1, "FORMAT_SPARSE_SWITCH_PAYLOAD"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000034;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000035;

    const-string v1, "FORMAT_FILL_ARRAY_DATA_PAYLOAD"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000035;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    const/16 v0, 0x24

    new-array v0, v0, [Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    sget-object v1, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_00X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_10X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v1, v0, v4

    sget-object v1, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_12X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v1, v0, v5

    sget-object v1, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_11N:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v1, v0, v6

    sget-object v1, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_11X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_10T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_20T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_20BC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21H:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_23X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22B:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22CS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_30T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_32X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31I:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35MS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35MI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_51L:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_45CC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_4RCC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->$VALUES:[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000072(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->decodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000073(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->encodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    return-void
.end method

.method static synthetic access$1000074(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->decodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000075(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->encodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    return-void
.end method

.method static synthetic access$1000076(II)S
    .registers 3

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000077(IIII)S
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(IIII)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000078(II)I
    .registers 3

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->makeByte(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000079(I)S
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->asUnsignedUnit(I)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000080(I)S
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit0(I)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000081(I)S
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit1(I)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000082(J)S
    .registers 4

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit0(J)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000083(J)S
    .registers 4

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit1(J)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000084(J)S
    .registers 4

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit2(J)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000085(J)S
    .registers 4

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit3(J)S

    move-result v0

    return v0
.end method

.method static synthetic access$1000086(I)I
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->byte0(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000087(I)I
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->byte1(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000090(I)I
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble0(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000091(I)I
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble1(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000092(I)I
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000093(I)I
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    move-result v0

    return v0
.end method

.method private static asUnsignedUnit(I)S
    .registers 3

    .line 1050
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus unsigned code unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_0
    int-to-short v0, p0

    return v0
.end method

.method private static byte0(I)I
    .registers 2

    .line 1082
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static byte1(I)I
    .registers 2

    .line 1086
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static byte2(I)I
    .registers 2

    .line 1090
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static byte3(I)I
    .registers 2

    .line 1094
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method private static codeUnit(II)S
    .registers 4

    .line 1004
    and-int/lit16 v0, p0, -0x100

    if-eqz v0, :cond_0

    .line 1005
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus lowByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_0
    and-int/lit16 v0, p1, -0x100

    if-eqz v0, :cond_1

    .line 1009
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus highByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_1
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method private static codeUnit(IIII)S
    .registers 6

    .line 1017
    and-int/lit8 v0, p0, -0x10

    if-eqz v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nibble0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_0
    and-int/lit8 v0, p1, -0x10

    if-eqz v0, :cond_1

    .line 1022
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nibble1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_1
    and-int/lit8 v0, p2, -0x10

    if-eqz v0, :cond_2

    .line 1026
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nibble2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_2
    and-int/lit8 v0, p3, -0x10

    if-eqz v0, :cond_3

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nibble3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_3
    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0xc

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static decodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 916
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->byte0(I)I

    move-result v2

    .line 917
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    move-result v12

    .line 918
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    move-result v0

    .line 919
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v3

    .line 920
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v1

    .line 921
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble0(I)I

    move-result v8

    .line 922
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble1(I)I

    move-result v9

    .line 923
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    move-result v10

    .line 924
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    move-result v11

    .line 925
    invoke-static {v2}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    .line 928
    packed-switch v0, :pswitch_data_0

    .line 961
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bogus registerCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :pswitch_0
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    .line 954
    :goto_0
    return-object v0

    .line 934
    :pswitch_1
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJI)V

    goto :goto_0

    .line 939
    :pswitch_2
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/TwoRegisterDecodedInstruction;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/s1243808733/android/dx/io/instructions/TwoRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJII)V

    goto :goto_0

    .line 944
    :pswitch_3
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIII)V

    goto :goto_0

    .line 949
    :pswitch_4
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FourRegisterDecodedInstruction;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/s1243808733/android/dx/io/instructions/FourRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIIII)V

    goto :goto_0

    .line 954
    :pswitch_5
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FiveRegisterDecodedInstruction;

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/s1243808733/android/dx/io/instructions/FiveRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIIIII)V

    goto :goto_0

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static decodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 982
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->byte0(I)I

    move-result v2

    .line 983
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->byte1(I)I

    move-result v9

    .line 984
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v3

    .line 985
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v8

    .line 986
    invoke-static {v2}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    .line 987
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJII)V

    return-object v0
.end method

.method private static encodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            "Lcom/s1243808733/android/dx/io/instructions/CodeOutput;",
            ")V"
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getE()I

    move-result v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->makeByte(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndexUnit()S

    move-result v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v3

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v4

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(IIII)S

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSS)V

    return-void
.end method

.method private static encodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            "Lcom/s1243808733/android/dx/io/instructions/CodeOutput;",
            ")V"
        }
    .end annotation

    .line 998
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndexUnit()S

    move-result v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getAUnit()S

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSS)V

    return-void
.end method

.method private static makeByte(II)I
    .registers 4

    .line 1038
    and-int/lit8 v0, p0, -0x10

    if-eqz v0, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus lowNibble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_0
    and-int/lit8 v0, p1, -0x10

    if-eqz v0, :cond_1

    .line 1043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus highNibble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_1
    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    return v0
.end method

.method private static nibble0(I)I
    .registers 2

    .line 1098
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method private static nibble1(I)I
    .registers 2

    .line 1102
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private static nibble2(I)I
    .registers 2

    .line 1106
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private static nibble3(I)I
    .registers 2

    .line 1110
    shr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private static unit0(I)S
    .registers 2

    .line 1058
    int-to-short v0, p0

    return v0
.end method

.method private static unit0(J)S
    .registers 4

    .line 1066
    long-to-int v0, p0

    int-to-short v0, v0

    return v0
.end method

.method private static unit1(I)S
    .registers 2

    .line 1062
    shr-int/lit8 v0, p0, 0x10

    int-to-short v0, v0

    return v0
.end method

.method private static unit1(J)S
    .registers 4

    .line 1070
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private static unit2(J)S
    .registers 4

    .line 1074
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private static unit3(J)S
    .registers 4

    .line 1078
    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
    .registers 5

    .line 896
    sget-object v1, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->$VALUES:[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
    .registers 1

    .line 896
    sget-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->$VALUES:[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    return-object v0
.end method


# virtual methods
.method public abstract decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation
.end method

.method public abstract encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            "Lcom/s1243808733/android/dx/io/instructions/CodeOutput;",
            ")V"
        }
    .end annotation
.end method
