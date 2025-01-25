.class public abstract enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
.super Ljava/lang/Enum;
.source "InstructionCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_00X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_10T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_10X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_11N:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_11X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_12X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_20BC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_20T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21H:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22B:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22CS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_23X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_30T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31I:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_32X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35MI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35MS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RMI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RMS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_45CC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_4RCC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_51L:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
    .registers 3

    .line 31
    const/16 v0, 0x24

    new-array v0, v0, [Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_00X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_10X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_12X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_11N:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_11X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    aput-object v2, v0, v1

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

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smasUnsignedUnit(I)S
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->asUnsignedUnit(I)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smbyte0(I)I
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->byte0(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smbyte1(I)I
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->byte1(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcodeUnit(II)S
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcodeUnit(IIII)S
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(IIII)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smdecodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->decodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smdecodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->decodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smencodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->encodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smencodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->encodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmakeByte(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->makeByte(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnibble0(I)I
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble0(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnibble1(I)I
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble1(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnibble2(I)I
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnibble3(I)I
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smunit0(I)S
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit0(I)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smunit0(J)S
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit0(J)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smunit1(I)S
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit1(I)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smunit1(J)S
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit1(J)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smunit2(J)S
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit2(J)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smunit3(J)S
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->unit3(J)S

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 32
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$1;

    const-string v1, "FORMAT_00X"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$1;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$1-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_00X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 47
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$2;

    const-string v1, "FORMAT_10X"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$2;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$2-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_10X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 64
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$3;

    const-string v1, "FORMAT_12X"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$3;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$3-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_12X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 85
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$4;

    const-string v1, "FORMAT_11N"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$4;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$4-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_11N:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 106
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$5;

    const-string v1, "FORMAT_11X"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$5;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$5-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_11X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 124
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$6;

    const-string v1, "FORMAT_10T"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$6;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$6-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_10T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 143
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$7;

    const-string v1, "FORMAT_20T"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$7;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$7-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_20T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 163
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$8;

    const-string v1, "FORMAT_20BC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$8;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$8-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_20BC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 184
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$9;

    const-string v1, "FORMAT_22X"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$9;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$9-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 205
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$10;

    const-string v1, "FORMAT_21T"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$10;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$10-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 226
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$11;

    const-string v1, "FORMAT_21S"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$11;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$11-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 247
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$12;

    const-string v1, "FORMAT_21H"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$12;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$12-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21H:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 279
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$13;

    const-string v1, "FORMAT_21C"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$13;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$13-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_21C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 301
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$14;

    const-string v1, "FORMAT_23X"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$14;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$14-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_23X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 324
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$15;

    const-string v1, "FORMAT_22B"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$15;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$15-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22B:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 348
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$16;

    const-string v1, "FORMAT_22T"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$16;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$16-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 373
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$17;

    const-string v1, "FORMAT_22S"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$17;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$17-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22S:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 396
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$18;

    const-string v1, "FORMAT_22C"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$18;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$18-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 420
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$19;

    const-string v1, "FORMAT_22CS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$19;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$19-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_22CS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 443
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$20;

    const-string v1, "FORMAT_30T"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$20;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$20-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_30T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 464
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$21;

    const-string v1, "FORMAT_32X"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$21;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$21-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_32X:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 484
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$22;

    const-string v1, "FORMAT_31I"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$22;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$22-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31I:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 507
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$23;

    const-string v1, "FORMAT_31T"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$23;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$23-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31T:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 544
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$24;

    const-string v1, "FORMAT_31C"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$24;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$24-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_31C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 568
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$25;

    const-string v1, "FORMAT_35C"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$25;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$25-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35C:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 581
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$26;

    const-string v1, "FORMAT_35MS"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$26;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$26-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35MS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 594
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$27;

    const-string v1, "FORMAT_35MI"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$27;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$27-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_35MI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 607
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$28;

    const-string v1, "FORMAT_3RC"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$28;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$28-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 620
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$29;

    const-string v1, "FORMAT_3RMS"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$29;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$29-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMS:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 633
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$30;

    const-string v1, "FORMAT_3RMI"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$30;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$30-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMI:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 646
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$31;

    const-string v1, "FORMAT_51L"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$31;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$31-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_51L:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 671
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$32;

    const-string v1, "FORMAT_45CC"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$32;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$32-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_45CC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 715
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$33;

    const-string v1, "FORMAT_4RCC"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$33;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$33-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_4RCC:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 746
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$34;

    const-string v1, "FORMAT_PACKED_SWITCH_PAYLOAD"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$34;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$34-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 780
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$35;

    const-string v1, "FORMAT_SPARSE_SWITCH_PAYLOAD"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$35;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$35-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 822
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$36;

    const-string v1, "FORMAT_FILL_ARRAY_DATA_PAYLOAD"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$36;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$36-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 31
    invoke-static {}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->$values()[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->$VALUES:[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static asUnsignedUnit(I)S
    .registers 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    int-to-short p0, p0

    return p0

    .line 1051
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus unsigned code unit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static byte0(I)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static byte1(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static byte2(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static byte3(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method private static codeUnit(II)S
    .registers 3

    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_15

    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_d

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    .line 1009
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus highByte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1005
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus lowByte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static codeUnit(IIII)S
    .registers 5

    and-int/lit8 v0, p0, -0x10

    if-nez v0, :cond_33

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_2b

    and-int/lit8 v0, p2, -0x10

    if-nez v0, :cond_23

    and-int/lit8 v0, p3, -0x10

    if-nez v0, :cond_1b

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xc

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    .line 1030
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nibble3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1026
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nibble2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1022
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nibble1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1018
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nibble0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 916
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->byte0(I)I

    move-result v2

    .line 917
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    move-result v12

    .line 918
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    move-result p1

    .line 919
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v3

    .line 920
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result p2

    .line 921
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble0(I)I

    move-result v8

    .line 922
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble1(I)I

    move-result v9

    .line 923
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    move-result v10

    .line 924
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    move-result v11

    .line 925
    invoke-static {v2}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    if-eqz p1, :cond_88

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7d

    const/4 p2, 0x2

    if-eq p1, p2, :cond_72

    const/4 p2, 0x3

    if-eq p1, p2, :cond_67

    const/4 p2, 0x4

    if-eq p1, p2, :cond_5c

    const/4 p2, 0x5

    if-ne p1, p2, :cond_44

    .line 954
    new-instance p1, Lcom/s1243808733/android/dx/io/instructions/FiveRegisterDecodedInstruction;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/s1243808733/android/dx/io/instructions/FiveRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIIIII)V

    return-object p1

    .line 961
    :cond_44
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "bogus registerCount: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 949
    :cond_5c
    new-instance p1, Lcom/s1243808733/android/dx/io/instructions/FourRegisterDecodedInstruction;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/s1243808733/android/dx/io/instructions/FourRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIIII)V

    return-object p1

    .line 944
    :cond_67
    new-instance p1, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIII)V

    return-object p1

    .line 939
    :cond_72
    new-instance p1, Lcom/s1243808733/android/dx/io/instructions/TwoRegisterDecodedInstruction;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/s1243808733/android/dx/io/instructions/TwoRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJII)V

    return-object p1

    .line 934
    :cond_7d
    new-instance p1, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJI)V

    return-object p1

    .line 930
    :cond_88
    new-instance p1, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    return-object p1
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
    new-instance p1, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJII)V

    return-object p1
.end method

.method private static encodeRegisterList(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 7

    .line 970
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    .line 971
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getE()I

    move-result v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->makeByte(II)I

    move-result v1

    .line 970
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    move-result v0

    .line 972
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndexUnit()S

    move-result v1

    .line 973
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v3

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v4

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result p0

    invoke-static {v2, v3, v4, p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(IIII)S

    move-result p0

    .line 970
    invoke-interface {p1, v0, v1, p0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSS)V

    return-void
.end method

.method private static encodeRegisterRange(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 4

    .line 998
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    move-result v0

    .line 999
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndexUnit()S

    move-result v1

    .line 1000
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getAUnit()S

    move-result p0

    .line 998
    invoke-interface {p1, v0, v1, p0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSS)V

    return-void
.end method

.method private static makeByte(II)I
    .registers 3

    and-int/lit8 v0, p0, -0x10

    if-nez v0, :cond_14

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_c

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    .line 1043
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus highNibble"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1039
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus lowNibble"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static nibble0(I)I
    .registers 1

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static nibble1(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static nibble2(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x8

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static nibble3(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static unit0(I)S
    .registers 1

    int-to-short p0, p0

    return p0
.end method

.method private static unit0(J)S
    .registers 2

    long-to-int p1, p0

    int-to-short p0, p1

    return p0
.end method

.method private static unit1(I)S
    .registers 1

    shr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    return p0
.end method

.method private static unit1(J)S
    .registers 3

    const/16 v0, 0x10

    shr-long/2addr p0, v0

    long-to-int p1, p0

    int-to-short p0, p1

    return p0
.end method

.method private static unit2(J)S
    .registers 3

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p1, p0

    int-to-short p0, p1

    return p0
.end method

.method private static unit3(J)S
    .registers 3

    const/16 v0, 0x30

    shr-long/2addr p0, v0

    long-to-int p1, p0

    int-to-short p0, p1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
    .registers 2

    .line 31
    const-class v0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
    .registers 1

    .line 31
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
.end method
