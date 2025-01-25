.class public Lorg/objectweb/asm/util/ASMifier;
.super Lorg/objectweb/asm/util/Printer;


# static fields
.field static class$org$objectweb$asm$util$ASMifier:Ljava/lang/Class;


# instance fields
.field protected final id:I

.field protected labelNames:Ljava/util/Map;

.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.util.ASMifier"

    invoke-static {v0}, Lorg/objectweb/asm/util/ASMifier;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/util/ASMifier;->class$org$objectweb$asm$util$ASMifier:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/high16 v0, 0x50000

    const-string v1, "cw"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/util/ASMifier;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->class$org$objectweb$asm$util$ASMifier:Ljava/lang/Class;

    if-eq v0, v1, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_16
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/Printer;-><init>(I)V

    iput-object p2, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    iput p3, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    return-void
.end method

.method static appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 7

    const/16 v2, 0x29

    const/16 v4, 0x7d

    const/4 v0, 0x0

    if-nez p1, :cond_d

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    :goto_c
    return-void

    :cond_d
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_17

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    instance-of v1, p1, Lorg/objectweb/asm/Type;

    if-eqz v1, :cond_2f

    const-string v0, "Type.getType(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_2f
    instance-of v1, p1, Lorg/objectweb/asm/Handle;

    if-eqz v1, :cond_79

    const-string v0, "new Handle("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast p1, Lorg/objectweb/asm/Handle;

    const-string v0, "Opcodes."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->HANDLE_TAG:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getTag()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_79
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_8b

    const-string v0, "new Byte((byte)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_8b
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_a1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "Boolean.TRUE"

    :goto_99
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_9e
    const-string v0, "Boolean.FALSE"

    goto :goto_99

    :cond_a1
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_b4

    const-string v0, "new Short((short)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_b4
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_cd

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    const-string v1, "new Character((char)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_cd
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_e0

    const-string v0, "new Integer("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_e0
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_f5

    const-string v0, "new Float(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_f5
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_10a

    const-string v0, "new Long("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "L)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_10a
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_11f

    const-string v0, "new Double(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_11f
    instance-of v1, p1, [B

    if-eqz v1, :cond_145

    check-cast p1, [B

    const-string v1, "new byte[] {"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_12a
    array-length v1, p1

    if-ge v0, v1, :cond_140

    if-nez v0, :cond_13d

    const-string v1, ""

    :goto_131
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    :cond_13d
    const-string v1, ","

    goto :goto_131

    :cond_140
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_145
    instance-of v1, p1, [Z

    if-eqz v1, :cond_16b

    check-cast p1, [Z

    const-string v1, "new boolean[] {"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_150
    array-length v1, p1

    if-ge v0, v1, :cond_166

    if-nez v0, :cond_163

    const-string v1, ""

    :goto_157
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-boolean v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_150

    :cond_163
    const-string v1, ","

    goto :goto_157

    :cond_166
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_16b
    instance-of v1, p1, [S

    if-eqz v1, :cond_197

    check-cast p1, [S

    const-string v1, "new short[] {"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_176
    array-length v1, p1

    if-ge v0, v1, :cond_192

    if-nez v0, :cond_18f

    const-string v1, ""

    :goto_17d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(short)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-short v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_176

    :cond_18f
    const-string v1, ","

    goto :goto_17d

    :cond_192
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_197
    instance-of v1, p1, [C

    if-eqz v1, :cond_1c3

    check-cast p1, [C

    const-string v1, "new char[] {"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1a2
    array-length v1, p1

    if-ge v0, v1, :cond_1be

    if-nez v0, :cond_1bb

    const-string v1, ""

    :goto_1a9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(char)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a2

    :cond_1bb
    const-string v1, ","

    goto :goto_1a9

    :cond_1be
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_1c3
    instance-of v1, p1, [I

    if-eqz v1, :cond_1e9

    check-cast p1, [I

    const-string v1, "new int[] {"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1ce
    array-length v1, p1

    if-ge v0, v1, :cond_1e4

    if-nez v0, :cond_1e1

    const-string v1, ""

    :goto_1d5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ce

    :cond_1e1
    const-string v1, ","

    goto :goto_1d5

    :cond_1e4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_1e9
    instance-of v1, p1, [J

    if-eqz v1, :cond_215

    check-cast p1, [J

    const-string v1, "new long[] {"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1f4
    array-length v1, p1

    if-ge v0, v1, :cond_210

    if-nez v0, :cond_20d

    const-string v1, ""

    :goto_1fb
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f4

    :cond_20d
    const-string v1, ","

    goto :goto_1fb

    :cond_210
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_215
    instance-of v1, p1, [F

    if-eqz v1, :cond_241

    check-cast p1, [F

    const-string v1, "new float[] {"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_220
    array-length v1, p1

    if-ge v0, v1, :cond_23c

    if-nez v0, :cond_239

    const-string v1, ""

    :goto_227
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_220

    :cond_239
    const-string v1, ","

    goto :goto_227

    :cond_23c
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_241
    instance-of v1, p1, [D

    if-eqz v1, :cond_c

    check-cast p1, [D

    const-string v1, "new double[] {"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_24c
    array-length v1, p1

    if-ge v0, v1, :cond_268

    if-nez v0, :cond_265

    const-string v1, ""

    :goto_253
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_24c

    :cond_265
    const-string v1, ","

    goto :goto_253

    :cond_268
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c
.end method

.method private appendFrameTypes(I[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_6e

    if-lez v1, :cond_d

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    aget-object v0, p2, v1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1c
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_66

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    goto :goto_18

    :pswitch_2e  #0x0
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Opcodes.TOP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :pswitch_36  #0x1
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Opcodes.INTEGER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :pswitch_3e  #0x2
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Opcodes.FLOAT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :pswitch_46  #0x3
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Opcodes.DOUBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :pswitch_4e  #0x4
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Opcodes.LONG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :pswitch_56  #0x5
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Opcodes.NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :pswitch_5e  #0x6
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Opcodes.UNINITIALIZED_THIS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :cond_66
    aget-object v0, p2, v1

    check-cast v0, Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    goto :goto_18

    :cond_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_36  #00000001
        :pswitch_3e  #00000002
        :pswitch_46  #00000003
        :pswitch_4e  #00000004
        :pswitch_56  #00000005
        :pswitch_5e  #00000006
    .end packed-switch
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declareFrameTypes(I[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_15

    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_11

    aget-object v0, p2, v1

    check-cast v0, Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    :cond_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_15
    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitMethodInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-eqz p5, :cond_5b

    const-string v0, "true"

    :goto_45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5b
    const-string v0, "false"

    goto :goto_45
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    array-length v1, p0

    if-lt v1, v0, :cond_a

    array-length v1, p0

    if-le v1, v4, :cond_7b

    :cond_a
    move v3, v2

    :goto_b
    if-eqz v3, :cond_79

    const-string v1, "-debug"

    aget-object v5, p0, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    array-length v1, p0

    if-eq v1, v4, :cond_76

    move v1, v0

    move v3, v2

    move v4, v2

    :goto_1d
    if-nez v3, :cond_2e

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Prints the ASM code to generate the given class."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: ASMifier [-debug] <fully qualified class name or class file name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2d
    return-void

    :cond_2e
    aget-object v0, p0, v1

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    aget-object v0, p0, v1

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v6, :cond_4c

    aget-object v0, p0, v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v6, :cond_6e

    :cond_4c
    new-instance v0, Lorg/objectweb/asm/ClassReader;

    new-instance v2, Ljava/io/FileInputStream;

    aget-object v1, p0, v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    :goto_58
    new-instance v1, Lorg/objectweb/asm/util/TraceClassVisitor;

    const/4 v2, 0x0

    new-instance v3, Lorg/objectweb/asm/util/ASMifier;

    invoke-direct {v3}, Lorg/objectweb/asm/util/ASMifier;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2, v3, v5}, Lorg/objectweb/asm/util/TraceClassVisitor;-><init>(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/util/Printer;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    goto :goto_2d

    :cond_6e
    new-instance v0, Lorg/objectweb/asm/ClassReader;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :cond_76
    move v1, v0

    move v4, v2

    goto :goto_1d

    :cond_79
    move v1, v2

    goto :goto_1d

    :cond_7b
    move v3, v0

    goto :goto_b
.end method


# virtual methods
.method appendAccess(I)V
    .registers 8

    const/high16 v5, 0x100000

    const/high16 v4, 0x80000

    const/high16 v3, 0x40000

    const/4 v0, 0x0

    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_14

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_PUBLIC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_14
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_20

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_PRIVATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_20
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2c

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_PROTECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_2c
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_41

    if-nez v1, :cond_39

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_39
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_FINAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_41
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_56

    if-nez v1, :cond_4e

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_STATIC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_56
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_6f

    if-nez v1, :cond_63

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_63
    and-int v1, p1, v3

    if-nez v1, :cond_1c0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_SYNCHRONIZED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6e
    move v1, v0

    :cond_6f
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_88

    and-int v2, p1, v4

    if-eqz v2, :cond_88

    if-nez v1, :cond_80

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_80
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_VOLATILE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_88
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_a5

    and-int v2, p1, v3

    if-nez v2, :cond_a5

    and-int v2, p1, v4

    if-nez v2, :cond_a5

    if-nez v1, :cond_9d

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9d
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_BRIDGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_a5
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_c2

    and-int v2, p1, v3

    if-nez v2, :cond_c2

    and-int v2, p1, v4

    if-nez v2, :cond_c2

    if-nez v1, :cond_ba

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ba
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_VARARGS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_c2
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_db

    and-int v2, p1, v4

    if-eqz v2, :cond_db

    if-nez v1, :cond_d3

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d3
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_TRANSIENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_db
    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_f8

    and-int v2, p1, v3

    if-nez v2, :cond_f8

    and-int v2, p1, v4

    if-nez v2, :cond_f8

    if-nez v1, :cond_f0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f0
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_NATIVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_f8
    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_119

    and-int v2, p1, v3

    if-nez v2, :cond_108

    and-int v2, p1, v4

    if-nez v2, :cond_108

    and-int v2, p1, v5

    if-eqz v2, :cond_119

    :cond_108
    if-nez v1, :cond_111

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_111
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_ENUM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_119
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_136

    and-int v2, p1, v3

    if-nez v2, :cond_125

    and-int v2, p1, v5

    if-eqz v2, :cond_136

    :cond_125
    if-nez v1, :cond_12e

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12e
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_ANNOTATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_136
    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_14b

    if-nez v1, :cond_143

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_143
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_ABSTRACT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_14b
    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_160

    if-nez v1, :cond_158

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_158
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_INTERFACE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_160
    and-int/lit16 v2, p1, 0x800

    if-eqz v2, :cond_175

    if-nez v1, :cond_16d

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16d
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_STRICT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_175
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_18a

    if-nez v1, :cond_182

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_182
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_SYNTHETIC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_18a
    const/high16 v2, 0x20000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1a0

    if-nez v1, :cond_198

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_198
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_DEPRECATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_1a0
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1c9

    if-nez v1, :cond_1af

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1af
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_MANDATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1b6
    if-eqz v0, :cond_1bf

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1bf
    return-void

    :cond_1c0
    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "ACC_SUPER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :cond_1c9
    move v0, v1

    goto :goto_1b6
.end method

.method protected appendConstant(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method protected appendLabel(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;
    .registers 5

    new-instance v0, Lorg/objectweb/asm/util/ASMifier;

    const/high16 v1, 0x50000

    invoke-direct {v0, v1, p1, p2}, Lorg/objectweb/asm/util/ASMifier;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method protected declareLabel(Lorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_44

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "Label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = new Label();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_44
    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14

    const/16 v6, 0x2f

    const/4 v1, 0x0

    invoke-virtual {p3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c1

    move-object v0, p3

    :goto_b
    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v3, "import java.util.*;\n"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v3, "import org.objectweb.asm.*;\n"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "public class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "Dump implements Opcodes {\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "public static byte[] dump () throws Exception {\n\n"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "ClassWriter cw = new ClassWriter(0);\n"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "FieldVisitor fv;\n"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "MethodVisitor mv;\n"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "AnnotationVisitor av0;\n\n"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "cw.visit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sparse-switch p1, :sswitch_data_156

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_6e
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/ASMifier;->appendAccess(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p5}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p6, :cond_14d

    array-length v0, p6

    if-lez v0, :cond_14d

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "new String[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_ad
    array-length v1, p6

    if-ge v0, v1, :cond_133

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_130

    const-string v1, " "

    :goto_b6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p6, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_c1
    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "package asm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :sswitch_f1
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "V1_1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :sswitch_fa
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "V1_2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :sswitch_103
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "V1_3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :sswitch_10c
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "V1_4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :sswitch_115
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "V1_5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :sswitch_11e
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "V1_6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :sswitch_127
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "V1_7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :cond_130
    const-string v1, ", "

    goto :goto_b6

    :cond_133
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_13a
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_14d
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13a

    nop

    :sswitch_data_156
    .sparse-switch
        0x2e -> :sswitch_fa
        0x2f -> :sswitch_103
        0x30 -> :sswitch_10c
        0x31 -> :sswitch_115
        0x32 -> :sswitch_11e
        0x33 -> :sswitch_127
        0x3002d -> :sswitch_f1
    .end sparse-switch
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/util/ASMifier;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "AnnotationVisitor av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitAnnotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "av"

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "av0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitAnnotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "av"

    invoke-virtual {p0, v0, v2}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/ASMifier;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/util/ASMifier;
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "av0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitAnnotationDefault();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "av"

    invoke-virtual {p0, v0, v2}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge visitAnnotationDefault()Lorg/objectweb/asm/util/Printer;
    .registers 2

    invoke-virtual {p0}, Lorg/objectweb/asm/util/ASMifier;->visitAnnotationDefault()Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotationEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnd();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/util/ASMifier;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "AnnotationVisitor av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "av"

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge visitArray(Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "// ATTRIBUTE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    instance-of v0, p1, Lorg/objectweb/asm/util/ASMifiable;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    :cond_28
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast p1, Lorg/objectweb/asm/util/ASMifiable;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "attr"

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->labelNames:Ljava/util/Map;

    invoke-interface {p1, v0, v1, v2}, Lorg/objectweb/asm/util/ASMifiable;->asmify(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitAttribute(attr);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitClassAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/ASMifier;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge visitClassAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/ASMifier;->visitClassAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitClassAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitClassEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v1, "cw.visitEnd();\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v1, "return cw.toByteArray();\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v1, "}\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v1, "}\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitClassTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/ASMifier;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge visitClassTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/ASMifier;->visitClassTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitCode()V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".visitCode();\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/util/ASMifier;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnum("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/util/ASMifier;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "fv = cw.visitField("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/high16 v0, 0x80000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/ASMifier;->appendAccess(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p5}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "fv"

    invoke-virtual {p0, v0, v2}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/util/Printer;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lorg/objectweb/asm/util/ASMifier;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitFieldAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/ASMifier;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge visitFieldAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/ASMifier;->visitFieldAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitFieldAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitFieldEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnd();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitFieldInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitFieldTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/ASMifier;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge visitFieldTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/ASMifier;->visitFieldTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 10

    const/16 v3, 0x7d

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    packed-switch p1, :pswitch_data_d4

    :goto_c
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1f  #0xffffffff, 0x0
    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/util/ASMifier;->declareFrameTypes(I[Ljava/lang/Object;)V

    invoke-direct {p0, p4, p5}, Lorg/objectweb/asm/util/ASMifier;->declareFrameTypes(I[Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5d

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitFrame(Opcodes.F_NEW, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_35
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", new Object[] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/util/ASMifier;->appendFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", new Object[] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p4, p5}, Lorg/objectweb/asm/util/ASMifier;->appendFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_5d
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitFrame(Opcodes.F_FULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35

    :pswitch_6b  #0x1
    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/util/ASMifier;->declareFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitFrame(Opcodes.F_APPEND,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", new Object[] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/util/ASMifier;->appendFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "}, 0, null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :pswitch_91  #0x2
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitFrame(Opcodes.F_CHOP,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", null, 0, null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :pswitch_aa  #0x3
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitFrame(Opcodes.F_SAME, 0, null, 0, null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :pswitch_b9  #0x4
    invoke-direct {p0, v2, p5}, Lorg/objectweb/asm/util/ASMifier;->declareFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitFrame(Opcodes.F_SAME1, 0, null, 1, new Object[] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2, p5}, Lorg/objectweb/asm/util/ASMifier;->appendFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    nop

    :pswitch_data_d4
    .packed-switch -0x1
        :pswitch_1f  #ffffffff
        :pswitch_1f  #00000000
        :pswitch_6b  #00000001
        :pswitch_91  #00000002
        :pswitch_aa  #00000003
        :pswitch_b9  #00000004
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitIincInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "cw.visitInnerClass("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/high16 v0, 0x100000

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/ASMifier;->appendAccess(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitInsn(I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 11

    const-string v1, "visitInsnAnnotation"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/util/ASMifier;->visitTypeAnnotation(Ljava/lang/String;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/ASMifier;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitIntInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitIntInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v0, 0xbc

    if-ne p1, v0, :cond_3f

    sget-object v0, Lorg/objectweb/asm/util/ASMifier;->TYPES:[Ljava/lang/String;

    aget-object v0, v0, p2

    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3f
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".visitInvokeDynamicInsn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", new Object[]{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_31
    array-length v1, p4

    if-ge v0, v1, :cond_48

    aget-object v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    array-length v1, p4

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_45

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_48
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "});\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitJumpInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitLabel("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitLdcInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitLineNumber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 9

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitLocalVariable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p5}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "av0 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".visitLocalVariableAnnotation("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", TypePath.fromString(\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\"), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "new Label[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_3d
    array-length v2, p3

    if-ge v0, v2, :cond_54

    iget-object v3, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_51

    const-string v2, " "

    :goto_46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p3, v0

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_51
    const-string v2, ", "

    goto :goto_46

    :cond_54
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " }, new Label[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_5c
    array-length v2, p4

    if-ge v0, v2, :cond_73

    iget-object v3, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_70

    const-string v2, " "

    :goto_65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p4, v0

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_70
    const-string v2, ", "

    goto :goto_65

    :cond_73
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " }, new int[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_7b
    array-length v2, p5

    if-ge v0, v2, :cond_93

    iget-object v3, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_90

    const-string v2, " "

    :goto_84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget v3, p5, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :cond_90
    const-string v2, ", "

    goto :goto_84

    :cond_93
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " }, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p6}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ");\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "av"

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    :goto_7
    array-length v2, p3

    if-ge v0, v2, :cond_12

    aget-object v2, p3, v0

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".visitLookupSwitchInsn("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", new int[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_2d
    array-length v2, p2

    if-ge v0, v2, :cond_45

    iget-object v3, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_42

    const-string v2, " "

    :goto_36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_42
    const-string v2, ", "

    goto :goto_36

    :cond_45
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " }, new Label[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4c
    array-length v0, p3

    if-ge v1, v0, :cond_63

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-nez v1, :cond_60

    const-string v0, " "

    :goto_55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, p3, v1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_60
    const-string v0, ", "

    goto :goto_55

    :cond_63
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, " });\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitMaxs(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitMaxs("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/util/ASMifier;
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "mv = cw.visitMethod("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendAccess(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_90

    array-length v0, p5

    if-lez v0, :cond_90

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "new String[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_49
    array-length v2, p5

    if-ge v0, v2, :cond_60

    iget-object v3, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5d

    const-string v2, " "

    :goto_52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p5, v0

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_5d
    const-string v2, ", "

    goto :goto_52

    :cond_60
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_67
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ");\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "mv"

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_90
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_67
.end method

.method public bridge visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lorg/objectweb/asm/util/ASMifier;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/ASMifier;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge visitMethodAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/ASMifier;->visitMethodAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitMethodEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnd();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/util/ASMifier;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_18

    const/4 v5, 0x1

    :goto_f
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/util/ASMifier;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    goto :goto_f
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/util/ASMifier;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/util/Printer;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/util/ASMifier;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9
.end method

.method public visitMethodTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/ASMifier;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge visitMethodTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/ASMifier;->visitMethodTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitMultiANewArrayInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "cw.visitOuterClass("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitParameter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendAccess(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ");\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "av0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitParameterAnnotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "av"

    invoke-virtual {p0, v0, v2}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/util/ASMifier;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "cw.visitSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    :goto_7
    array-length v2, p4

    if-ge v0, v2, :cond_12

    aget-object v2, p4, v0

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".visitTableSwitchInsn("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", new Label[] {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_40
    array-length v0, p4

    if-ge v1, v0, :cond_57

    iget-object v2, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    if-nez v1, :cond_54

    const-string v0, " "

    :goto_49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, p4, v1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_54
    const-string v0, ", "

    goto :goto_49

    :cond_57
    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, " });\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 11

    const-string v1, "visitTryCatchAnnotation"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/util/ASMifier;->visitTypeAnnotation(Ljava/lang/String;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/ASMifier;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->declareLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitTryCatchBlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/ASMifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 11

    const-string v1, "visitTypeAnnotation"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/util/ASMifier;->visitTypeAnnotation(Ljava/lang/String;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/ASMifier;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "av0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", TypePath.fromString(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "av"

    invoke-virtual {p0, v0, v2}, Lorg/objectweb/asm/util/ASMifier;->createASMifier(Ljava/lang/String;I)Lorg/objectweb/asm/util/ASMifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/ASMifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitTypeInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/ASMifier;->appendConstant(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitVarInsn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/ASMifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/ASMifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/ASMifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
